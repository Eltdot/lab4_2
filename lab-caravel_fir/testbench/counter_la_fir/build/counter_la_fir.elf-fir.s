	.file	"fir.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/Lab4_2_Others/lab-caravel_fir/testbench/counter_la_fir" "fir.c"
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	initfir
	.type	initfir, @function
initfir:
.LFB316:
	.file 1 "fir.c"
	.loc 1 4 61
	.cfi_startproc
	.loc 1 7 2
	.loc 1 7 12 is_stmt 0
	lui	a4,%hi(reg_fir_y)
	.loc 1 8 37
	li	a5,805306368
	.loc 1 7 12
	sw	zero,%lo(reg_fir_y)(a4)
	.loc 1 8 2 is_stmt 1
	.loc 1 8 37 is_stmt 0
	li	a4,64
	sw	a4,16(a5)
	.loc 1 9 2 is_stmt 1
	.loc 1 9 37 is_stmt 0
	li	a4,11
	sw	a4,20(a5)
	.loc 1 10 2 is_stmt 1
.LBB4:
	.loc 1 10 7
.LVL0:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	lw	a3,0(a4)
	lw	a1,4(a4)
	lw	a2,8(a4)
	.loc 1 11 50
	sw	a3,128(a5)
	.loc 1 10 28 is_stmt 1
.LVL1:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a3,12(a4)
	.loc 1 11 50
	sw	a1,132(a5)
	.loc 1 10 28 is_stmt 1
.LVL2:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a1,16(a4)
	.loc 1 11 50
	sw	a2,136(a5)
	.loc 1 10 28 is_stmt 1
.LVL3:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a2,20(a4)
	.loc 1 11 50
	sw	a3,140(a5)
	.loc 1 10 28 is_stmt 1
.LVL4:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a3,24(a4)
	.loc 1 11 50
	sw	a1,144(a5)
	.loc 1 10 28 is_stmt 1
.LVL5:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a1,28(a4)
	.loc 1 11 50
	sw	a2,148(a5)
	.loc 1 10 28 is_stmt 1
.LVL6:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a2,32(a4)
	.loc 1 11 50
	sw	a3,152(a5)
	.loc 1 10 28 is_stmt 1
.LVL7:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a3,36(a4)
	.loc 1 11 50
	sw	a1,156(a5)
	.loc 1 10 28 is_stmt 1
.LVL8:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a4,40(a4)
	.loc 1 11 50
	sw	a2,160(a5)
	.loc 1 10 28 is_stmt 1
.LVL9:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 50 is_stmt 0
	sw	a3,164(a5)
	.loc 1 10 28 is_stmt 1
.LVL10:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 50 is_stmt 0
	sw	a4,168(a5)
	.loc 1 10 28 is_stmt 1
.LVL11:
	.loc 1 10 20
.LBE4:
.LBB5:
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a3,128(a5)
	.loc 1 14 37
	li	a4,637534208
	.loc 1 14 86
	slli	a3,a3,16
	.loc 1 14 37
	sw	a3,12(a4)
	.loc 1 13 29 is_stmt 1
.LVL12:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a3,132(a5)
	.loc 1 14 86
	slli	a3,a3,16
	.loc 1 14 37
	sw	a3,12(a4)
	.loc 1 13 29 is_stmt 1
.LVL13:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a3,136(a5)
	.loc 1 14 86
	slli	a3,a3,16
	.loc 1 14 37
	sw	a3,12(a4)
	.loc 1 13 29 is_stmt 1
.LVL14:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a3,140(a5)
	.loc 1 14 86
	slli	a3,a3,16
	.loc 1 14 37
	sw	a3,12(a4)
	.loc 1 13 29 is_stmt 1
.LVL15:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a3,144(a5)
	.loc 1 14 86
	slli	a3,a3,16
	.loc 1 14 37
	sw	a3,12(a4)
	.loc 1 13 29 is_stmt 1
.LVL16:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a3,148(a5)
	.loc 1 14 86
	slli	a3,a3,16
	.loc 1 14 37
	sw	a3,12(a4)
	.loc 1 13 29 is_stmt 1
.LVL17:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a3,152(a5)
	.loc 1 14 86
	slli	a3,a3,16
	.loc 1 14 37
	sw	a3,12(a4)
	.loc 1 13 29 is_stmt 1
.LVL18:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a3,156(a5)
	.loc 1 14 86
	slli	a3,a3,16
	.loc 1 14 37
	sw	a3,12(a4)
	.loc 1 13 29 is_stmt 1
.LVL19:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a3,160(a5)
	.loc 1 14 86
	slli	a3,a3,16
	.loc 1 14 37
	sw	a3,12(a4)
	.loc 1 13 29 is_stmt 1
.LVL20:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a3,164(a5)
	.loc 1 14 86
	slli	a3,a3,16
	.loc 1 14 37
	sw	a3,12(a4)
	.loc 1 13 29 is_stmt 1
.LVL21:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a5,168(a5)
	.loc 1 14 86
	slli	a5,a5,16
	.loc 1 14 37
	sw	a5,12(a4)
	.loc 1 13 29 is_stmt 1
.LVL22:
	.loc 1 13 21
.LBE5:
	.loc 1 16 1 is_stmt 0
	ret
	.cfi_endproc
.LFE316:
	.size	initfir, .-initfir
	.align	2
	.globl	fir
	.type	fir, @function
fir:
.LFB317:
	.loc 1 18 56 is_stmt 1
	.cfi_startproc
	.loc 1 20 2
	.loc 1 20 36 is_stmt 0
	li	a3,637534208
	li	a4,10813440
.LBB13:
.LBB14:
	.loc 1 8 37
	li	a5,805306368
.LBE14:
.LBE13:
	.loc 1 20 36
	sw	a4,12(a3)
	.loc 1 21 2 is_stmt 1
.LBB20:
.LBB18:
	.loc 1 7 2
	.loc 1 8 2
	.loc 1 8 37 is_stmt 0
	li	a4,64
	sw	a4,16(a5)
	.loc 1 9 2 is_stmt 1
	.loc 1 9 37 is_stmt 0
	li	a4,11
	sw	a4,20(a5)
	.loc 1 10 2 is_stmt 1
.LBB15:
	.loc 1 10 7
.LVL23:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	lw	a2,0(a4)
	lw	a0,4(a4)
	lw	a1,8(a4)
	.loc 1 11 50
	sw	a2,128(a5)
	.loc 1 10 28 is_stmt 1
.LVL24:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a2,12(a4)
	.loc 1 11 50
	sw	a0,132(a5)
	.loc 1 10 28 is_stmt 1
.LVL25:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a0,16(a4)
	.loc 1 11 50
	sw	a1,136(a5)
	.loc 1 10 28 is_stmt 1
.LVL26:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a1,20(a4)
	.loc 1 11 50
	sw	a2,140(a5)
	.loc 1 10 28 is_stmt 1
.LVL27:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a2,24(a4)
	.loc 1 11 50
	sw	a0,144(a5)
	.loc 1 10 28 is_stmt 1
.LVL28:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a0,28(a4)
	.loc 1 11 50
	sw	a1,148(a5)
	.loc 1 10 28 is_stmt 1
.LVL29:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a1,32(a4)
	.loc 1 11 50
	sw	a2,152(a5)
	.loc 1 10 28 is_stmt 1
.LVL30:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a2,36(a4)
	.loc 1 11 50
	sw	a0,156(a5)
	.loc 1 10 28 is_stmt 1
.LVL31:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 57 is_stmt 0
	lw	a4,40(a4)
	.loc 1 11 50
	sw	a1,160(a5)
	.loc 1 10 28 is_stmt 1
.LVL32:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 50 is_stmt 0
	sw	a2,164(a5)
	.loc 1 10 28 is_stmt 1
.LVL33:
	.loc 1 10 20
	.loc 1 11 3
	.loc 1 11 50 is_stmt 0
	sw	a4,168(a5)
	.loc 1 10 28 is_stmt 1
.LVL34:
	.loc 1 10 20
.LBE15:
.LBB16:
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a2,128(a5)
.LBE16:
.LBE18:
.LBE20:
	.loc 1 24 8
	li	a4,805306368
.LBB21:
.LBB19:
.LBB17:
	.loc 1 14 86
	slli	a2,a2,16
	.loc 1 14 37
	sw	a2,12(a3)
	.loc 1 13 29 is_stmt 1
.LVL35:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a2,132(a5)
	.loc 1 14 86
	slli	a2,a2,16
	.loc 1 14 37
	sw	a2,12(a3)
	.loc 1 13 29 is_stmt 1
.LVL36:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a2,136(a5)
	.loc 1 14 86
	slli	a2,a2,16
	.loc 1 14 37
	sw	a2,12(a3)
	.loc 1 13 29 is_stmt 1
.LVL37:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a2,140(a5)
	.loc 1 14 86
	slli	a2,a2,16
	.loc 1 14 37
	sw	a2,12(a3)
	.loc 1 13 29 is_stmt 1
.LVL38:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a2,144(a5)
	.loc 1 14 86
	slli	a2,a2,16
	.loc 1 14 37
	sw	a2,12(a3)
	.loc 1 13 29 is_stmt 1
.LVL39:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a2,148(a5)
	.loc 1 14 86
	slli	a2,a2,16
	.loc 1 14 37
	sw	a2,12(a3)
	.loc 1 13 29 is_stmt 1
.LVL40:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a2,152(a5)
	.loc 1 14 86
	slli	a2,a2,16
	.loc 1 14 37
	sw	a2,12(a3)
	.loc 1 13 29 is_stmt 1
.LVL41:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a2,156(a5)
	.loc 1 14 86
	slli	a2,a2,16
	.loc 1 14 37
	sw	a2,12(a3)
	.loc 1 13 29 is_stmt 1
.LVL42:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a2,160(a5)
	.loc 1 14 86
	slli	a2,a2,16
	.loc 1 14 37
	sw	a2,12(a3)
	.loc 1 13 29 is_stmt 1
.LVL43:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a2,164(a5)
	.loc 1 14 86
	slli	a2,a2,16
	.loc 1 14 37
	sw	a2,12(a3)
	.loc 1 13 29 is_stmt 1
.LVL44:
	.loc 1 13 21
	.loc 1 14 3
	.loc 1 14 41 is_stmt 0
	lw	a5,168(a5)
	.loc 1 14 86
	slli	a5,a5,16
	.loc 1 14 37
	sw	a5,12(a3)
	.loc 1 13 29 is_stmt 1
.LVL45:
	.loc 1 13 21
.L4:
.LBE17:
.LBE19:
.LBE21:
	.loc 1 23 2
	.loc 1 24 3
	.loc 1 24 8 is_stmt 0
	lw	a5,0(a4)
	.loc 1 24 43
	andi	a5,a5,4
	.loc 1 24 5
	beq	a5,zero,.L4
	.loc 1 25 4 is_stmt 1
	.loc 1 25 39 is_stmt 0
	li	a5,1
	sw	a5,0(a4)
	.loc 1 26 4 is_stmt 1
	.loc 1 30 2
.LBB22:
	.loc 1 30 6
.LVL46:
	.loc 1 30 19
	li	a2,64
	.loc 1 30 10 is_stmt 0
	li	a5,0
	.loc 1 32 38
	li	a4,805306368
.LVL47:
.L5:
	.loc 1 32 3 is_stmt 1 discriminator 3
	.loc 1 32 38 is_stmt 0 discriminator 3
	sw	a5,64(a4)
	.loc 1 33 3 is_stmt 1 discriminator 3
	.loc 1 33 16 is_stmt 0 discriminator 3
	lw	a3,68(a4)
	.loc 1 30 27 is_stmt 1 discriminator 3
	addi	a5,a5,1
.LVL48:
	.loc 1 30 19 discriminator 3
	bne	a5,a2,.L5
.LBE22:
	.loc 1 37 2
	.loc 1 37 49 is_stmt 0
	slli	a5,a3,24
.LVL49:
	.loc 1 37 56
	li	a3,5898240
	.loc 1 37 36
	li	a4,637534208
.LVL50:
	.loc 1 37 56
	or	a5,a5,a3
	.loc 1 37 36
	sw	a5,12(a4)
.LVL51:
	.loc 1 38 2 is_stmt 1
	.loc 1 38 36 is_stmt 0
	li	a5,10813440
	sw	a5,12(a4)
	.loc 1 40 8
	li	a4,805306368
.L6:
	.loc 1 39 2 is_stmt 1
	.loc 1 40 3
	.loc 1 40 8 is_stmt 0
	lw	a5,0(a4)
	.loc 1 40 43
	andi	a5,a5,4
	.loc 1 40 5
	beq	a5,zero,.L6
	.loc 1 41 4 is_stmt 1
	.loc 1 41 39 is_stmt 0
	li	a5,1
	sw	a5,0(a4)
	.loc 1 42 4 is_stmt 1
	.loc 1 46 2
.LBB23:
	.loc 1 46 6
.LVL52:
	.loc 1 46 19
	.loc 1 48 38 is_stmt 0
	li	a2,805306368
	.loc 1 46 10
	li	a5,0
	.loc 1 50 39
	li	a1,637534208
	.loc 1 46 19
	li	a0,64
.LVL53:
.L7:
	.loc 1 48 3 is_stmt 1 discriminator 3
	.loc 1 48 38 is_stmt 0 discriminator 3
	sw	a5,64(a2)
	.loc 1 49 3 is_stmt 1 discriminator 3
	.loc 1 49 16 is_stmt 0 discriminator 3
	lw	a4,68(a2)
	.loc 1 50 5 is_stmt 1 discriminator 3
	.loc 1 46 27 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL54:
	.loc 1 50 51 discriminator 3
	slli	a3,a4,16
	.loc 1 50 39 discriminator 3
	sw	a3,12(a1)
.LVL55:
	.loc 1 46 27 is_stmt 1 discriminator 3
	.loc 1 46 19 discriminator 3
	bne	a5,a0,.L7
.LBE23:
	.loc 1 52 49 is_stmt 0
	slli	a5,a4,24
.LVL56:
	.loc 1 52 56
	li	a4,5898240
	or	a5,a5,a4
	sw	a3,12(a1)
	.loc 1 52 2 is_stmt 1
	.loc 1 52 36 is_stmt 0
	sw	a5,12(a1)
	.loc 1 53 2 is_stmt 1
	.loc 1 53 36 is_stmt 0
	li	a5,10813440
	sw	a5,12(a1)
	.loc 1 55 8
	li	a4,805306368
.L8:
	.loc 1 54 2 is_stmt 1
	.loc 1 55 3
	.loc 1 55 8 is_stmt 0
	lw	a5,0(a4)
	.loc 1 55 43
	andi	a5,a5,4
	.loc 1 55 5
	beq	a5,zero,.L8
	.loc 1 56 4 is_stmt 1
	.loc 1 56 39 is_stmt 0
	li	a5,1
	sw	a5,0(a4)
	.loc 1 57 4 is_stmt 1
	.loc 1 61 2
.LBB24:
	.loc 1 61 6
.LVL57:
	.loc 1 61 19
	.loc 1 63 38 is_stmt 0
	li	a2,805306368
	.loc 1 61 10
	li	a5,0
	.loc 1 65 39
	li	a1,637534208
	.loc 1 61 19
	li	a0,64
.LVL58:
.L9:
	.loc 1 63 3 is_stmt 1 discriminator 3
	.loc 1 63 38 is_stmt 0 discriminator 3
	sw	a5,64(a2)
	.loc 1 64 3 is_stmt 1 discriminator 3
	.loc 1 64 16 is_stmt 0 discriminator 3
	lw	a4,68(a2)
	.loc 1 65 5 is_stmt 1 discriminator 3
	.loc 1 61 27 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL59:
	.loc 1 65 51 discriminator 3
	slli	a3,a4,16
	.loc 1 65 39 discriminator 3
	sw	a3,12(a1)
.LVL60:
	.loc 1 61 27 is_stmt 1 discriminator 3
	.loc 1 61 19 discriminator 3
	bne	a5,a0,.L9
	lui	a5,%hi(reg_fir_y)
.LVL61:
	sw	a4,%lo(reg_fir_y)(a5)
.LBE24:
	.loc 1 67 49 is_stmt 0
	slli	a5,a4,24
	.loc 1 67 56
	li	a4,5898240
	sw	a3,12(a1)
	.loc 1 67 2 is_stmt 1
	.loc 1 67 56 is_stmt 0
	or	a5,a5,a4
	.loc 1 70 1
	lui	a0,%hi(.LANCHOR1)
	.loc 1 67 36
	sw	a5,12(a1)
	.loc 1 69 2 is_stmt 1
	.loc 1 70 1 is_stmt 0
	addi	a0,a0,%lo(.LANCHOR1)
	ret
	.cfi_endproc
.LFE317:
	.size	fir, .-fir
	.globl	reg_fir_y
	.globl	outputsignal
	.globl	inputbuffer
	.globl	taps
	.data
	.align	2
	.set	.LANCHOR0,. + 0
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
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	outputsignal, @object
	.size	outputsignal, 44
outputsignal:
	.zero	44
	.type	inputbuffer, @object
	.size	inputbuffer, 44
inputbuffer:
	.zero	44
	.section	.sbss,"aw",@nobits
	.align	2
	.type	reg_fir_y, @object
	.size	reg_fir_y, 4
reg_fir_y:
	.zero	4
	.text
.Letext0:
	.file 2 "fir.h"
	.file 3 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1dd
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL9
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
	.byte	0x9
	.4byte	.LASF16
	.byte	0x3
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
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0xb
	.4byte	0x6a
	.4byte	0x88
	.byte	0xc
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
	.byte	0x1a
	.4byte	0x6a
	.byte	0x5
	.byte	0x3
	.4byte	reg_fir_y
	.byte	0xd
	.string	"fir"
	.byte	0x1
	.byte	0x12
	.byte	0x33
	.4byte	0x170
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.byte	0x1
	.byte	0x9c
	.4byte	0x170
	.byte	0x4
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0xfc
	.byte	0x5
	.string	"i"
	.byte	0x1e
	.4byte	0x6a
	.4byte	.LLST6
	.byte	0
	.byte	0x4
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x116
	.byte	0x5
	.string	"i"
	.byte	0x2e
	.4byte	0x6a
	.4byte	.LLST7
	.byte	0
	.byte	0x4
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x130
	.byte	0x5
	.string	"i"
	.byte	0x3d
	.4byte	0x6a
	.4byte	.LLST8
	.byte	0
	.byte	0xe
	.4byte	0x176
	.4byte	.LBB13
	.4byte	.LLRL2
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x6
	.4byte	0x183
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x15b
	.byte	0x3
	.4byte	0x188
	.4byte	.LLST3
	.byte	0
	.byte	0xf
	.4byte	0x192
	.4byte	.LLRL4
	.byte	0x3
	.4byte	0x193
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x6a
	.byte	0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x19e
	.byte	0x12
	.4byte	0x192
	.byte	0x7
	.string	"i"
	.byte	0xa
	.byte	0xb
	.4byte	0x6a
	.byte	0
	.byte	0x13
	.byte	0x7
	.string	"i"
	.byte	0xd
	.byte	0xc
	.4byte	0x6a
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	0x176
	.4byte	.LFB316
	.4byte	.LFE316-.LFB316
	.byte	0x1
	.byte	0x9c
	.byte	0x6
	.4byte	0x183
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x1c8
	.byte	0x3
	.4byte	0x188
	.4byte	.LLST0
	.byte	0
	.byte	0x15
	.4byte	0x192
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x3
	.4byte	0x193
	.4byte	.LLST1
	.byte	0
	.byte	0
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
	.byte	0x2
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
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0xa
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x15
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LLST6:
	.byte	0x7
	.4byte	.LVL46
	.4byte	.LVL47
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL47
	.4byte	.LVL49
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL49
	.4byte	.LVL50
	.byte	0x7
	.byte	0x7e
	.byte	0xc0,0
	.byte	0x6
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL50
	.4byte	.LVL51
	.byte	0x9
	.byte	0xc
	.4byte	0x30000040
	.byte	0x6
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.byte	0
.LLST7:
	.byte	0x7
	.4byte	.LVL52
	.4byte	.LVL53
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL53
	.4byte	.LVL54
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL54
	.4byte	.LVL55
	.byte	0x3
	.byte	0x7c
	.byte	0xc0,0
	.byte	0x7
	.4byte	.LVL55
	.4byte	.LVL56
	.byte	0x1
	.byte	0x5f
	.byte	0
.LLST8:
	.byte	0x7
	.4byte	.LVL57
	.4byte	.LVL58
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL58
	.4byte	.LVL59
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL59
	.4byte	.LVL60
	.byte	0x3
	.byte	0x7c
	.byte	0xc0,0
	.byte	0x7
	.4byte	.LVL60
	.4byte	.LVL61
	.byte	0x1
	.byte	0x5f
	.byte	0
.LLST3:
	.byte	0x7
	.4byte	.LVL23
	.4byte	.LVL24
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL24
	.4byte	.LVL25
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL25
	.4byte	.LVL26
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL26
	.4byte	.LVL27
	.byte	0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL27
	.4byte	.LVL28
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL28
	.4byte	.LVL29
	.byte	0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL29
	.4byte	.LVL30
	.byte	0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL30
	.4byte	.LVL31
	.byte	0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL31
	.4byte	.LVL32
	.byte	0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL32
	.4byte	.LVL33
	.byte	0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL33
	.4byte	.LVL34
	.byte	0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL34
	.4byte	.LVL45
	.byte	0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0
.LLST5:
	.byte	0x7
	.4byte	.LVL34
	.4byte	.LVL35
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL35
	.4byte	.LVL36
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL36
	.4byte	.LVL37
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL37
	.4byte	.LVL38
	.byte	0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL38
	.4byte	.LVL39
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL39
	.4byte	.LVL40
	.byte	0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL40
	.4byte	.LVL41
	.byte	0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL41
	.4byte	.LVL42
	.byte	0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL42
	.4byte	.LVL43
	.byte	0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL43
	.4byte	.LVL44
	.byte	0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL44
	.4byte	.LVL45
	.byte	0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0
.LLST0:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL1
	.4byte	.LVL2
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LVL3
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL4
	.byte	0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL4
	.4byte	.LVL5
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL5
	.4byte	.LVL6
	.byte	0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL6
	.4byte	.LVL7
	.byte	0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL7
	.4byte	.LVL8
	.byte	0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL8
	.4byte	.LVL9
	.byte	0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL9
	.4byte	.LVL10
	.byte	0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL10
	.4byte	.LVL11
	.byte	0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LFE316
	.byte	0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0
.LLST1:
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL12
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL12
	.4byte	.LVL13
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL13
	.4byte	.LVL14
	.byte	0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL14
	.4byte	.LVL15
	.byte	0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL15
	.4byte	.LVL16
	.byte	0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL16
	.4byte	.LVL17
	.byte	0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL17
	.4byte	.LVL18
	.byte	0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL18
	.4byte	.LVL19
	.byte	0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL19
	.4byte	.LVL20
	.byte	0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL20
	.4byte	.LVL21
	.byte	0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL21
	.4byte	.LVL22
	.byte	0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL22
	.4byte	.LFE316
	.byte	0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
.LLRL2:
	.byte	0x6
	.4byte	.LBB13
	.4byte	.LBE13
	.byte	0x6
	.4byte	.LBB20
	.4byte	.LBE20
	.byte	0x6
	.4byte	.LBB21
	.4byte	.LBE21
	.byte	0
.LLRL4:
	.byte	0x6
	.4byte	.LBB16
	.4byte	.LBE16
	.byte	0x6
	.4byte	.LBB17
	.4byte	.LBE17
	.byte	0
.LLRL9:
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
.LASF17:
	.string	"initfir"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF10:
	.string	"unsigned int"
.LASF15:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -O3 -ffreestanding"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"inputbuffer"
.LASF14:
	.string	"reg_fir_y"
.LASF13:
	.string	"outputsignal"
.LASF5:
	.string	"long long int"
.LASF11:
	.string	"taps"
.LASF3:
	.string	"short int"
.LASF16:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"fir.c"
.LASF1:
	.string	"/home/ubuntu/Lab4_2_Others/lab-caravel_fir/testbench/counter_la_fir"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
