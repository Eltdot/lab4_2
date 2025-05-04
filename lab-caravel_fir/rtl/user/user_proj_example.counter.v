// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

module user_proj_example #(
    parameter BITS = 32,
    parameter DELAYS=10
)(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // IRQ
    output [2:0] irq
);
    wire clk;
    wire rst;

    wire [`MPRJ_IO_PADS-1:0] io_in;
    wire [`MPRJ_IO_PADS-1:0] io_out;
    wire [`MPRJ_IO_PADS-1:0] io_oeb;

    wire [31:0] bram_Do;
    wire [31:0] bram_Di;
    wire [3:0] bram_wen;
    wire [31:0] bram_A;
    reg [31:0] axilite_Do;
    reg [31:0] axistream_Do;

    assign clk = wb_clk_i;
    assign rst = wb_rst_i;

    wire wbs_en;
    wire wbs_bram_en;
    wire wbs_axilite_en;
    wire wbs_axistream_en;
    wire [31:0] wbs_dat_o;
    reg wbs_ack_reg;

    wire [3:0] count_next;
    reg  [3:0] count;

    wire [31:0] wbs_dat_o_next;

    reg bram_o_ok;
    reg axilite_o_ok;
    reg axistream_o_ok;

    assign la_data_out = {{(127-BITS){1'b0}}, count};

    assign wbs_en = wbs_cyc_i & wbs_stb_i;
    assign wbs_bram_en = wbs_en & (wbs_adr_i[31:24] == 8'h38);
    assign wbs_axilite_en = wbs_en & (wbs_adr_i[31:24] == 8'h30 & (wbs_adr_i[7] | ~wbs_adr_i[6]));
    assign wbs_axistream_en = wbs_en & (wbs_adr_i[31:24] == 8'h30 & (~wbs_adr_i[7]) & wbs_adr_i[6]);

    // update count
    assign count_next = (wbs_bram_en) ? ((count == DELAYS) ? 0 : (count + 1)) : 0;  
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 0;    
        end else begin
            count <= count_next;
        end 
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            bram_o_ok <= 0;
        end else begin
            if (count == (DELAYS - 1)) begin
                bram_o_ok <= 1;
            end else begin
                bram_o_ok <= 0;
            end
        end
    end

    assign wbs_ack_o = (bram_o_ok | axilite_o_ok | axistream_o_ok);

    assign wbs_dat_o = (bram_o_ok) ? bram_Do : 
                        (axilite_o_ok) ? axilite_Do : 
                        (axistream_o_ok) ? axistream_Do : 0;
    
    /*always @(posedge clk or posedge rst) begin
        if (rst) begin
            wbs_dat_o <= 0;
        end else begin
            wbs_dat_o <= wbs_dat_o_next;
        end
    end*/

    assign bram_wen = (wbs_we_i) ? (wbs_sel_i) : 0;
    assign bram_Di = wbs_dat_i;
    assign bram_A = {10'b0, wbs_adr_i [23:2]}; // right shift 2 bits (one instruction 4 byte)

    bram user_bram (
        .CLK(clk),
        .WE0(bram_wen),
        .EN0(wbs_bram_en),
        .Di0(bram_Di),
        .Do0(bram_Do),
        .A0(bram_A)
    );


/////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////                                WB_AXILITE                                          //////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////

    // axilite write signal
    reg  awvalid;
    reg [11:0] awaddr;
    wire awready;
    reg  wvalid;
    wire wready;
    reg [BITS-1:0] wdata;

    // axilite read signal
    reg  arvalid;
    reg  [11:0] araddr;
    wire arready;
    wire rvalid;
    reg  rready;
    wire [BITS-1:0] rdata;

    

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            axilite_o_ok <= 0;
            axilite_Do <= 0;
        end else begin
            if (wbs_axilite_en & !axilite_o_ok) begin
                if (wbs_we_i) begin
                    axilite_o_ok <= wready;
                    axilite_Do <= 0;
                end else begin
                    axilite_o_ok <= rvalid;
                    axilite_Do <= rdata; 
                end
            end else begin
                axilite_o_ok <= 0;
                axilite_Do <= 0;
            end
        end
    end


    // write signal
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            awvalid <= 0;
            awaddr <= 0;
            wvalid <= 0;
            wdata <= 0;
        end else if (wbs_axilite_en & ~axilite_o_ok) begin
            awvalid <= (wbs_we_i & ~awready);
            awaddr <= wbs_adr_i [11:0];
            wvalid <= wbs_we_i;
            wdata <= wbs_dat_i; 
        end else begin
            awvalid <= 0;
            awaddr <= 0;
            wvalid <= 0;
            wdata <= 0;
        end
    end

    // read signal
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            arvalid <= 0;
            araddr <= 0;
            rready <= 0;
        end else if (wbs_axilite_en & ~axilite_o_ok) begin
            arvalid <= ~(wbs_we_i) & (~arready);
            araddr <= wbs_adr_i [11:0];
            rready <= 1;
        end else begin
            arvalid <= 0;
            araddr <= 0;
            rready <= 0;
        end
    end


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////                                 WB_AXISTREAM                                         //////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 
    // ss signal
    reg  ss_tvalid;
    wire ss_tready;
    reg  [BITS-1:0] ss_tdata;
    wire  ss_tlast;

    // sm signal
    wire sm_tvalid;
    reg  sm_tready;
    wire [BITS-1:0] sm_tdata;
    wire sm_tlast;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            axistream_o_ok <= 0;
            axistream_Do <= 0;
        end else begin
            if (wbs_axistream_en & !axistream_o_ok) begin
                if (wbs_adr_i[2]) begin
                    if (wbs_we_i) begin
                        axistream_o_ok <= 1;
                        axistream_Do <= 0;
                    end else begin
                        axistream_o_ok <= sm_tvalid;
                        axistream_Do <= sm_tdata; 
                    end
                end else begin
                    if (wbs_we_i) begin
                        axistream_o_ok <= ss_tready;
                        axistream_Do <= 0;
                    end else begin
                        axistream_o_ok <= 1;
                        axilite_Do <= 0;
                    end
                end
            end else begin
                axistream_o_ok <= 0;
                axistream_Do <= 0;
            end
        end
    end

    // ss signal
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ss_tvalid <= 0;
            ss_tdata <= 0;
        end else if(wbs_axistream_en & (~wbs_adr_i[2]) & (wbs_we_i) & ~axistream_o_ok) begin
            ss_tvalid <= 1;
            ss_tdata <= wbs_dat_i;
        end else begin
            ss_tvalid <= 0;
            ss_tdata <= 0;
        end
    end

    // sm signal
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            sm_tready <= 0;
        end else if (wbs_axistream_en & (wbs_adr_i[2]) & ~(wbs_we_i) & ~axistream_o_ok)begin
            sm_tready <= 1;
        end else begin
            sm_tready <= 0;
        end
    end

    // 先確認一下是不是對的
    assign ss_tlast = (ss_tdata == 63);
    ///////////////////////////////////////////////////////////////////////
    ////////                instantiate modules                    ////////
    ///////////////////////////////////////////////////////////////////////
    
    // tap ram
    wire [3:0]        tap_WE;
    wire              tap_EN;
    wire [(BITS-1):0] tap_Di;
    wire [11:0]       tap_A;
    wire [(BITS-1):0] tap_Do;

    // data ram
    wire [3:0]        data_WE;
    wire              data_EN;
    wire [(BITS-1):0] data_Di;
    wire [11:0]       data_A;
    wire [(BITS-1):0] data_Do;



    fir #(
        .Tape_Num(11),
        .pDATA_WIDTH(32),
        .pADDR_WIDTH(12)
    ) 
    user_fir(
        .awready(awready),
        .wready(wready),
        .awvalid(awvalid),
        .awaddr(awaddr),
        .wvalid(wvalid),
        .wdata(wdata),
        .arready(arready),
        .rready(rready),
        .arvalid(arvalid),
        .araddr(araddr),
        .rvalid(rvalid),
        .rdata(rdata),
        .ss_tvalid(ss_tvalid), 
        .ss_tready(ss_tready),
        .ss_tdata(ss_tdata),
        .ss_tlast(ss_tlast),
        .sm_tready(sm_tready),
        .sm_tvalid(sm_tvalid),
        .sm_tdata(sm_tdata),
        .sm_tlast(sm_tlast),

        .tap_WE(tap_WE),
        .tap_EN(tap_EN),
        .tap_Di(tap_Di),
        .tap_A(tap_A),
        .tap_Do(tap_Do),

        .data_WE(data_WE),
        .data_EN(data_EN),
        .data_Di(data_Di),
        .data_A(data_A),
        .data_Do(data_Do),

        .axis_clk(clk),
        .axis_rst_n(~rst)
    );

    bram32 tap_ram (
        .CLK(clk),
        .WE(tap_WE),
        .EN(tap_EN),
        .Di(tap_Di),
        .Do(tap_Do),
        .A(tap_A)
    );

    bram32 data_ram (
        .CLK(clk),
        .WE(data_WE),
        .EN(data_EN),
        .Di(data_Di),
        .Do(data_Do),
        .A(data_A)
    );

endmodule



`default_nettype wire
