	.file	"fir.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/SoCLab/Lab4_2/lab-caravel_fir/testbench/counter_la_fir" "fir.c"
	.globl	taps
	.data
	.align	2
	.type	taps, @object
	.size	taps, 44
taps:
	.word	0
	.word	-10
	.word	-9
	.word	23
	.word	56
	.word	63
	.word	56
	.word	23
	.word	-9
	.word	-10
	.word	0
	.globl	inputbuffer
	.bss
	.align	2
	.type	inputbuffer, @object
	.size	inputbuffer, 44
inputbuffer:
	.zero	44
	.globl	outputsignal
	.align	2
	.type	outputsignal, @object
	.size	outputsignal, 44
outputsignal:
	.zero	44
	.globl	reg_fir_x
	.section	.sbss,"aw",@nobits
	.align	2
	.type	reg_fir_x, @object
	.size	reg_fir_x, 4
reg_fir_x:
	.zero	4
	.globl	reg_fir_y
	.align	2
	.type	reg_fir_y, @object
	.size	reg_fir_y, 4
reg_fir_y:
	.zero	4
	.text
	.align	2
	.type	flush_cpu_icache, @function
flush_cpu_icache:
.LFB21:
	.file 1 "../../firmware/system.h"
	.loc 1 15 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 26 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	flush_cpu_icache, .-flush_cpu_icache
	.align	2
	.type	flush_cpu_dcache, @function
flush_cpu_dcache:
.LFB22:
	.loc 1 29 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 33 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	flush_cpu_dcache, .-flush_cpu_dcache
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	initfir
	.type	initfir, @function
initfir:
.LFB316:
	.file 2 "fir.c"
	.loc 2 4 61
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 6 12
	lui	a5,%hi(reg_fir_x)
	sw	zero,%lo(reg_fir_x)(a5)
	.loc 2 7 12
	lui	a5,%hi(reg_fir_y)
	sw	zero,%lo(reg_fir_y)(a5)
	.loc 2 8 3
	li	a5,805306368
	addi	a5,a5,16
	.loc 2 8 37
	li	a4,64
	sw	a4,0(a5)
	.loc 2 9 3
	li	a5,805306368
	addi	a5,a5,20
	.loc 2 9 37
	li	a4,11
	sw	a4,0(a5)
.LBB2:
	.loc 2 10 11
	sw	zero,-20(s0)
	.loc 2 10 2
	j	.L4
.L5:
	.loc 2 11 57 discriminator 3
	lui	a5,%hi(taps)
	addi	a4,a5,%lo(taps)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 2 11 38 discriminator 3
	lw	a4,-20(s0)
	li	a5,201326592
	addi	a5,a5,32
	add	a5,a4,a5
	slli	a5,a5,2
	.loc 2 11 57 discriminator 3
	mv	a4,a3
	.loc 2 11 50 discriminator 3
	sw	a4,0(a5)
	.loc 2 10 28 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	.loc 2 10 20 discriminator 1
	lw	a4,-20(s0)
	li	a5,10
	ble	a4,a5,.L5
.LBE2:
	.loc 2 13 1
	nop
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE316:
	.size	initfir, .-initfir
	.align	2
	.globl	fir
	.type	fir, @function
fir:
.LFB317:
	.loc 2 15 56
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 17 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 2 17 36
	li	a4,10813440
	sw	a4,0(a5)
	.loc 2 18 2
	call	initfir
.L9:
	.loc 2 21 8
	li	a5,805306368
	lw	a5,0(a5)
	.loc 2 21 43
	andi	a4,a5,4
	.loc 2 21 5
	li	a5,4
	bne	a4,a5,.L9
	.loc 2 22 43
	li	a5,805306368
	lw	a4,0(a5)
	.loc 2 22 5
	li	a5,805306368
	.loc 2 22 78
	ori	a4,a4,1
	.loc 2 22 39
	sw	a4,0(a5)
	.loc 2 23 4
	nop
.LBB3:
	.loc 2 27 10
	sw	zero,-20(s0)
	.loc 2 27 2
	j	.L10
.L11:
	.loc 2 28 13 discriminator 3
	lui	a5,%hi(reg_fir_x)
	lw	a4,-20(s0)
	sw	a4,%lo(reg_fir_x)(a5)
	.loc 2 29 38 discriminator 3
	lui	a5,%hi(reg_fir_x)
	lw	a4,%lo(reg_fir_x)(a5)
	.loc 2 29 4 discriminator 3
	li	a5,805306368
	addi	a5,a5,64
	.loc 2 29 38 discriminator 3
	sw	a4,0(a5)
	.loc 2 30 16 discriminator 3
	li	a5,805306368
	addi	a5,a5,68
	lw	a5,0(a5)
	mv	a4,a5
	.loc 2 30 13 discriminator 3
	lui	a5,%hi(reg_fir_y)
	sw	a4,%lo(reg_fir_y)(a5)
	.loc 2 27 27 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L10:
	.loc 2 27 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,63
	ble	a4,a5,.L11
.LBE3:
	.loc 2 33 49
	lui	a5,%hi(reg_fir_y)
	lw	a5,%lo(reg_fir_y)(a5)
	slli	a4,a5,24
	.loc 2 33 56
	li	a5,5898240
	or	a4,a4,a5
	.loc 2 33 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 2 33 36
	sw	a4,0(a5)
	.loc 2 34 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 2 34 36
	li	a4,10813440
	sw	a4,0(a5)
.L14:
	.loc 2 36 8
	li	a5,805306368
	lw	a5,0(a5)
	.loc 2 36 43
	andi	a4,a5,4
	.loc 2 36 5
	li	a5,4
	bne	a4,a5,.L14
	.loc 2 37 43
	li	a5,805306368
	lw	a4,0(a5)
	.loc 2 37 5
	li	a5,805306368
	.loc 2 37 78
	ori	a4,a4,1
	.loc 2 37 39
	sw	a4,0(a5)
	.loc 2 38 4
	nop
.LBB4:
	.loc 2 42 10
	sw	zero,-24(s0)
	.loc 2 42 2
	j	.L15
.L16:
	.loc 2 43 13 discriminator 3
	lui	a5,%hi(reg_fir_x)
	lw	a4,-24(s0)
	sw	a4,%lo(reg_fir_x)(a5)
	.loc 2 44 38 discriminator 3
	lui	a5,%hi(reg_fir_x)
	lw	a4,%lo(reg_fir_x)(a5)
	.loc 2 44 4 discriminator 3
	li	a5,805306368
	addi	a5,a5,64
	.loc 2 44 38 discriminator 3
	sw	a4,0(a5)
	.loc 2 45 16 discriminator 3
	li	a5,805306368
	addi	a5,a5,68
	lw	a5,0(a5)
	mv	a4,a5
	.loc 2 45 13 discriminator 3
	lui	a5,%hi(reg_fir_y)
	sw	a4,%lo(reg_fir_y)(a5)
	.loc 2 42 27 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L15:
	.loc 2 42 19 discriminator 1
	lw	a4,-24(s0)
	li	a5,63
	ble	a4,a5,.L16
.LBE4:
	.loc 2 47 49
	lui	a5,%hi(reg_fir_y)
	lw	a5,%lo(reg_fir_y)(a5)
	slli	a4,a5,24
	.loc 2 47 56
	li	a5,5898240
	or	a4,a4,a5
	.loc 2 47 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 2 47 36
	sw	a4,0(a5)
	.loc 2 48 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 2 48 36
	li	a4,10813440
	sw	a4,0(a5)
.L19:
	.loc 2 50 8
	li	a5,805306368
	lw	a5,0(a5)
	.loc 2 50 43
	andi	a4,a5,4
	.loc 2 50 5
	li	a5,4
	bne	a4,a5,.L19
	.loc 2 51 43
	li	a5,805306368
	lw	a4,0(a5)
	.loc 2 51 5
	li	a5,805306368
	.loc 2 51 78
	ori	a4,a4,1
	.loc 2 51 39
	sw	a4,0(a5)
	.loc 2 52 4
	nop
.LBB5:
	.loc 2 56 10
	sw	zero,-28(s0)
	.loc 2 56 2
	j	.L20
.L21:
	.loc 2 57 13 discriminator 3
	lui	a5,%hi(reg_fir_x)
	lw	a4,-28(s0)
	sw	a4,%lo(reg_fir_x)(a5)
	.loc 2 58 38 discriminator 3
	lui	a5,%hi(reg_fir_x)
	lw	a4,%lo(reg_fir_x)(a5)
	.loc 2 58 4 discriminator 3
	li	a5,805306368
	addi	a5,a5,64
	.loc 2 58 38 discriminator 3
	sw	a4,0(a5)
	.loc 2 59 16 discriminator 3
	li	a5,805306368
	addi	a5,a5,68
	lw	a5,0(a5)
	mv	a4,a5
	.loc 2 59 13 discriminator 3
	lui	a5,%hi(reg_fir_y)
	sw	a4,%lo(reg_fir_y)(a5)
	.loc 2 56 27 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L20:
	.loc 2 56 19 discriminator 1
	lw	a4,-28(s0)
	li	a5,63
	ble	a4,a5,.L21
.LBE5:
	.loc 2 61 49
	lui	a5,%hi(reg_fir_y)
	lw	a5,%lo(reg_fir_y)(a5)
	slli	a4,a5,24
	.loc 2 61 56
	li	a5,5898240
	or	a4,a4,a5
	.loc 2 61 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 2 61 36
	sw	a4,0(a5)
	.loc 2 63 9
	lui	a5,%hi(outputsignal)
	addi	a5,a5,%lo(outputsignal)
	.loc 2 64 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE317:
	.size	fir, .-fir
	.text
.Letext0:
	.file 3 "fir.h"
	.file 4 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x18d
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x7
	.4byte	.LASF18
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0xa
	.4byte	0x6a
	.4byte	0x88
	.byte	0xb
	.4byte	0x71
	.byte	0xa
	.byte	0
	.byte	0x2
	.4byte	.LASF11
	.byte	0x16
	.4byte	0x78
	.byte	0x5
	.byte	0x3
	.4byte	taps
	.byte	0x2
	.4byte	.LASF12
	.byte	0x17
	.4byte	0x78
	.byte	0x5
	.byte	0x3
	.4byte	inputbuffer
	.byte	0x2
	.4byte	.LASF13
	.byte	0x18
	.4byte	0x78
	.byte	0x5
	.byte	0x3
	.4byte	outputsignal
	.byte	0x2
	.4byte	.LASF14
	.byte	0x19
	.4byte	0x6a
	.byte	0x5
	.byte	0x3
	.4byte	reg_fir_x
	.byte	0x2
	.4byte	.LASF15
	.byte	0x1a
	.4byte	0x6a
	.byte	0x5
	.byte	0x3
	.4byte	reg_fir_y
	.byte	0xc
	.string	"fir"
	.byte	0x2
	.byte	0xf
	.byte	0x33
	.4byte	0x13d
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.byte	0x1
	.byte	0x9c
	.4byte	0x13d
	.byte	0x4
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x10c
	.byte	0x3
	.string	"i"
	.byte	0x1b
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x4
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x126
	.byte	0x3
	.string	"i"
	.byte	0x2a
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x5
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x3
	.string	"i"
	.byte	0x38
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x6a
	.byte	0xe
	.4byte	.LASF20
	.byte	0x2
	.byte	0x4
	.byte	0x33
	.4byte	.LFB316
	.4byte	.LFE316-.LFB316
	.byte	0x1
	.byte	0x9c
	.4byte	0x170
	.byte	0x5
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x3
	.string	"i"
	.byte	0xa
	.byte	0xb
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.byte	0x6
	.4byte	.LASF17
	.byte	0xe
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x2e
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x25
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB316
	.4byte	.LFE316-.LFB316
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x6
	.4byte	.Ltext0
	.4byte	.Letext0
	.byte	0x6
	.4byte	.LFB316
	.4byte	.LFE316
	.byte	0x6
	.4byte	.LFB317
	.4byte	.LFE317
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"initfir"
.LASF16:
	.string	"flush_cpu_dcache"
.LASF6:
	.string	"unsigned char"
.LASF14:
	.string	"reg_fir_x"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF18:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -ffreestanding"
.LASF10:
	.string	"unsigned int"
.LASF11:
	.string	"taps"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"inputbuffer"
.LASF15:
	.string	"reg_fir_y"
.LASF17:
	.string	"flush_cpu_icache"
.LASF13:
	.string	"outputsignal"
.LASF5:
	.string	"long long int"
.LASF3:
	.string	"short int"
.LASF19:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"fir.c"
.LASF1:
	.string	"/home/ubuntu/SoCLab/Lab4_2/lab-caravel_fir/testbench/counter_la_fir"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
