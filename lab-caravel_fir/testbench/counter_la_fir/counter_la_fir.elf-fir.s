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
.LFB317:
	.file 1 "fir.c"
	.loc 1 8 61
	.cfi_startproc
	.loc 1 11 2
	.loc 1 11 12 is_stmt 0
	lui	a4,%hi(reg_fir_y)
	.loc 1 12 37
	li	a5,805306368
	.loc 1 11 12
	sw	zero,%lo(reg_fir_y)(a4)
	.loc 1 12 2 is_stmt 1
	.loc 1 12 37 is_stmt 0
	li	a4,64
	sw	a4,16(a5)
	.loc 1 13 2 is_stmt 1
	.loc 1 13 37 is_stmt 0
	li	a4,11
	sw	a4,20(a5)
	.loc 1 14 2 is_stmt 1
.LBB13:
	.loc 1 14 7
.LVL0:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	lw	a3,0(a4)
	lw	a1,4(a4)
	lw	a2,8(a4)
	.loc 1 15 50
	sw	a3,128(a5)
	.loc 1 14 28 is_stmt 1
.LVL1:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a3,12(a4)
	.loc 1 15 50
	sw	a1,132(a5)
	.loc 1 14 28 is_stmt 1
.LVL2:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a1,16(a4)
	.loc 1 15 50
	sw	a2,136(a5)
	.loc 1 14 28 is_stmt 1
.LVL3:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a2,20(a4)
	.loc 1 15 50
	sw	a3,140(a5)
	.loc 1 14 28 is_stmt 1
.LVL4:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a3,24(a4)
	.loc 1 15 50
	sw	a1,144(a5)
	.loc 1 14 28 is_stmt 1
.LVL5:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a1,28(a4)
	.loc 1 15 50
	sw	a2,148(a5)
	.loc 1 14 28 is_stmt 1
.LVL6:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a2,32(a4)
	.loc 1 15 50
	sw	a3,152(a5)
	.loc 1 14 28 is_stmt 1
.LVL7:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a3,36(a4)
	.loc 1 15 50
	sw	a1,156(a5)
	.loc 1 14 28 is_stmt 1
.LVL8:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a4,40(a4)
	.loc 1 15 50
	sw	a2,160(a5)
	.loc 1 14 28 is_stmt 1
.LVL9:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 50 is_stmt 0
	sw	a3,164(a5)
	.loc 1 14 28 is_stmt 1
.LVL10:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 50 is_stmt 0
	sw	a4,168(a5)
	.loc 1 14 28 is_stmt 1
.LVL11:
	.loc 1 14 20
.LBE13:
.LBB14:
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a3,128(a5)
	.loc 1 18 37
	li	a4,637534208
	.loc 1 18 86
	slli	a3,a3,16
	.loc 1 18 37
	sw	a3,12(a4)
	.loc 1 17 29 is_stmt 1
.LVL12:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a3,132(a5)
	.loc 1 18 86
	slli	a3,a3,16
	.loc 1 18 37
	sw	a3,12(a4)
	.loc 1 17 29 is_stmt 1
.LVL13:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a3,136(a5)
	.loc 1 18 86
	slli	a3,a3,16
	.loc 1 18 37
	sw	a3,12(a4)
	.loc 1 17 29 is_stmt 1
.LVL14:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a3,140(a5)
	.loc 1 18 86
	slli	a3,a3,16
	.loc 1 18 37
	sw	a3,12(a4)
	.loc 1 17 29 is_stmt 1
.LVL15:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a3,144(a5)
	.loc 1 18 86
	slli	a3,a3,16
	.loc 1 18 37
	sw	a3,12(a4)
	.loc 1 17 29 is_stmt 1
.LVL16:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a3,148(a5)
	.loc 1 18 86
	slli	a3,a3,16
	.loc 1 18 37
	sw	a3,12(a4)
	.loc 1 17 29 is_stmt 1
.LVL17:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a3,152(a5)
	.loc 1 18 86
	slli	a3,a3,16
	.loc 1 18 37
	sw	a3,12(a4)
	.loc 1 17 29 is_stmt 1
.LVL18:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a3,156(a5)
	.loc 1 18 86
	slli	a3,a3,16
	.loc 1 18 37
	sw	a3,12(a4)
	.loc 1 17 29 is_stmt 1
.LVL19:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a3,160(a5)
	.loc 1 18 86
	slli	a3,a3,16
	.loc 1 18 37
	sw	a3,12(a4)
	.loc 1 17 29 is_stmt 1
.LVL20:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a3,164(a5)
	.loc 1 18 86
	slli	a3,a3,16
	.loc 1 18 37
	sw	a3,12(a4)
	.loc 1 17 29 is_stmt 1
.LVL21:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a5,168(a5)
	.loc 1 18 86
	slli	a5,a5,16
	.loc 1 18 37
	sw	a5,12(a4)
	.loc 1 17 29 is_stmt 1
.LVL22:
	.loc 1 17 21
.LBE14:
	.loc 1 20 1 is_stmt 0
	ret
	.cfi_endproc
.LFE317:
	.size	initfir, .-initfir
	.align	2
	.globl	fir
	.type	fir, @function
fir:
.LFB318:
	.loc 1 22 56 is_stmt 1
	.cfi_startproc
	.loc 1 24 2
	.loc 1 24 36 is_stmt 0
	li	a2,637534208
	li	a5,10813440
	sw	a5,12(a2)
	.loc 1 25 2 is_stmt 1
.LBB28:
.LBB29:
	.loc 1 11 2
	.loc 1 11 12 is_stmt 0
	lui	a4,%hi(reg_fir_y)
	.loc 1 12 37
	li	a5,805306368
	.loc 1 11 12
	sw	zero,%lo(reg_fir_y)(a4)
	.loc 1 12 2 is_stmt 1
	.loc 1 12 37 is_stmt 0
	li	a3,64
	sw	a3,16(a5)
	.loc 1 13 2 is_stmt 1
	.loc 1 13 37 is_stmt 0
	li	a3,11
	sw	a3,20(a5)
	.loc 1 14 2 is_stmt 1
.LBB30:
	.loc 1 14 7
.LVL23:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lui	a3,%hi(.LANCHOR0)
	addi	a3,a3,%lo(.LANCHOR0)
	lw	a1,0(a3)
	lw	a6,4(a3)
	lw	a0,8(a3)
	.loc 1 15 50
	sw	a1,128(a5)
	.loc 1 14 28 is_stmt 1
.LVL24:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a1,12(a3)
	.loc 1 15 50
	sw	a6,132(a5)
	.loc 1 14 28 is_stmt 1
.LVL25:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a6,16(a3)
	.loc 1 15 50
	sw	a0,136(a5)
	.loc 1 14 28 is_stmt 1
.LVL26:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a0,20(a3)
	.loc 1 15 50
	sw	a1,140(a5)
	.loc 1 14 28 is_stmt 1
.LVL27:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a1,24(a3)
	.loc 1 15 50
	sw	a6,144(a5)
	.loc 1 14 28 is_stmt 1
.LVL28:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a6,28(a3)
	.loc 1 15 50
	sw	a0,148(a5)
	.loc 1 14 28 is_stmt 1
.LVL29:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a0,32(a3)
	.loc 1 15 50
	sw	a1,152(a5)
	.loc 1 14 28 is_stmt 1
.LVL30:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a1,36(a3)
	.loc 1 15 50
	sw	a6,156(a5)
	.loc 1 14 28 is_stmt 1
.LVL31:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 57 is_stmt 0
	lw	a3,40(a3)
	.loc 1 15 50
	sw	a0,160(a5)
	.loc 1 14 28 is_stmt 1
.LVL32:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 50 is_stmt 0
	sw	a1,164(a5)
	.loc 1 14 28 is_stmt 1
.LVL33:
	.loc 1 14 20
	.loc 1 15 3
	.loc 1 15 50 is_stmt 0
	sw	a3,168(a5)
	.loc 1 14 28 is_stmt 1
.LVL34:
	.loc 1 14 20
.LBE30:
.LBB31:
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a1,128(a5)
.LBE31:
.LBE29:
.LBE28:
	.loc 1 28 8
	li	a3,805306368
.LBB34:
.LBB33:
.LBB32:
	.loc 1 18 86
	slli	a1,a1,16
	.loc 1 18 37
	sw	a1,12(a2)
	.loc 1 17 29 is_stmt 1
.LVL35:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a1,132(a5)
	.loc 1 18 86
	slli	a1,a1,16
	.loc 1 18 37
	sw	a1,12(a2)
	.loc 1 17 29 is_stmt 1
.LVL36:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a1,136(a5)
	.loc 1 18 86
	slli	a1,a1,16
	.loc 1 18 37
	sw	a1,12(a2)
	.loc 1 17 29 is_stmt 1
.LVL37:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a1,140(a5)
	.loc 1 18 86
	slli	a1,a1,16
	.loc 1 18 37
	sw	a1,12(a2)
	.loc 1 17 29 is_stmt 1
.LVL38:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a1,144(a5)
	.loc 1 18 86
	slli	a1,a1,16
	.loc 1 18 37
	sw	a1,12(a2)
	.loc 1 17 29 is_stmt 1
.LVL39:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a1,148(a5)
	.loc 1 18 86
	slli	a1,a1,16
	.loc 1 18 37
	sw	a1,12(a2)
	.loc 1 17 29 is_stmt 1
.LVL40:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a1,152(a5)
	.loc 1 18 86
	slli	a1,a1,16
	.loc 1 18 37
	sw	a1,12(a2)
	.loc 1 17 29 is_stmt 1
.LVL41:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a1,156(a5)
	.loc 1 18 86
	slli	a1,a1,16
	.loc 1 18 37
	sw	a1,12(a2)
	.loc 1 17 29 is_stmt 1
.LVL42:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a1,160(a5)
	.loc 1 18 86
	slli	a1,a1,16
	.loc 1 18 37
	sw	a1,12(a2)
	.loc 1 17 29 is_stmt 1
.LVL43:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a1,164(a5)
	.loc 1 18 86
	slli	a1,a1,16
	.loc 1 18 37
	sw	a1,12(a2)
	.loc 1 17 29 is_stmt 1
.LVL44:
	.loc 1 17 21
	.loc 1 18 3
	.loc 1 18 41 is_stmt 0
	lw	a5,168(a5)
	.loc 1 18 86
	slli	a5,a5,16
	.loc 1 18 37
	sw	a5,12(a2)
	.loc 1 17 29 is_stmt 1
.LVL45:
	.loc 1 17 21
.L4:
.LBE32:
.LBE33:
.LBE34:
	.loc 1 27 2
	.loc 1 28 3
	.loc 1 28 8 is_stmt 0
	lw	a5,0(a3)
	.loc 1 28 43
	andi	a5,a5,4
	.loc 1 28 5
	beq	a5,zero,.L4
	.loc 1 29 4 is_stmt 1
	.loc 1 29 39 is_stmt 0
	li	a5,1
	sw	a5,0(a3)
	.loc 1 30 4 is_stmt 1
	.loc 1 34 2
.LBB35:
	.loc 1 34 6
.LVL46:
	.loc 1 34 19
	.loc 1 36 38 is_stmt 0
	li	a2,805306368
	.loc 1 34 10
	li	a5,0
	.loc 1 34 19
	li	a1,64
.LVL47:
.L5:
	.loc 1 35 3 is_stmt 1
.LBB36:
.LBB37:
	.loc 1 5 5
 #APP
# 5 "fir.c" 1
	addi x0, x0, 0
# 0 "" 2
 #NO_APP
.LBE37:
.LBE36:
	.loc 1 36 3
	.loc 1 36 38 is_stmt 0
	sw	a5,64(a2)
	.loc 1 37 3 is_stmt 1
	.loc 1 37 16 is_stmt 0
	lw	a3,68(a2)
	.loc 1 34 27
	addi	a5,a5,1
.LVL48:
	.loc 1 37 13
	sw	a3,%lo(reg_fir_y)(a4)
.LVL49:
	.loc 1 34 27 is_stmt 1
	.loc 1 34 19
	bne	a5,a1,.L5
.LBE35:
	.loc 1 40 2
	.loc 1 40 49 is_stmt 0
	slli	a5,a3,24
.LVL50:
	.loc 1 40 56
	li	a2,5898240
	.loc 1 40 36
	li	a3,637534208
	.loc 1 40 56
	or	a5,a5,a2
	.loc 1 40 36
	sw	a5,12(a3)
	.loc 1 41 2 is_stmt 1
	.loc 1 41 36 is_stmt 0
	li	a5,10813440
	sw	a5,12(a3)
	.loc 1 43 8
	li	a3,805306368
.L6:
	.loc 1 42 2 is_stmt 1
	.loc 1 43 3
	.loc 1 43 8 is_stmt 0
	lw	a5,0(a3)
	.loc 1 43 43
	andi	a5,a5,4
	.loc 1 43 5
	beq	a5,zero,.L6
	.loc 1 44 4 is_stmt 1
	.loc 1 44 39 is_stmt 0
	li	a5,1
	sw	a5,0(a3)
	.loc 1 45 4 is_stmt 1
	.loc 1 49 2
.LBB38:
	.loc 1 49 6
.LVL51:
	.loc 1 49 19
	.loc 1 51 38 is_stmt 0
	li	a2,805306368
	.loc 1 49 10
	li	a5,0
	.loc 1 49 19
	li	a1,64
.LVL52:
.L7:
	.loc 1 50 3 is_stmt 1
.LBB39:
.LBB40:
	.loc 1 5 5
 #APP
# 5 "fir.c" 1
	addi x0, x0, 0
# 0 "" 2
 #NO_APP
.LBE40:
.LBE39:
	.loc 1 51 3
	.loc 1 51 38 is_stmt 0
	sw	a5,64(a2)
	.loc 1 52 3 is_stmt 1
	.loc 1 52 16 is_stmt 0
	lw	a3,68(a2)
	.loc 1 49 27
	addi	a5,a5,1
.LVL53:
	.loc 1 52 13
	sw	a3,%lo(reg_fir_y)(a4)
.LVL54:
	.loc 1 49 27 is_stmt 1
	.loc 1 49 19
	bne	a5,a1,.L7
.LBE38:
	.loc 1 54 2
	.loc 1 54 49 is_stmt 0
	slli	a5,a3,24
.LVL55:
	.loc 1 54 56
	li	a2,5898240
	.loc 1 54 36
	li	a3,637534208
	.loc 1 54 56
	or	a5,a5,a2
	.loc 1 54 36
	sw	a5,12(a3)
	.loc 1 55 2 is_stmt 1
	.loc 1 55 36 is_stmt 0
	li	a5,10813440
	sw	a5,12(a3)
	.loc 1 57 8
	li	a3,805306368
.L8:
	.loc 1 56 2 is_stmt 1
	.loc 1 57 3
	.loc 1 57 8 is_stmt 0
	lw	a5,0(a3)
	.loc 1 57 43
	andi	a5,a5,4
	.loc 1 57 5
	beq	a5,zero,.L8
	.loc 1 58 4 is_stmt 1
	.loc 1 58 39 is_stmt 0
	li	a5,1
	sw	a5,0(a3)
	.loc 1 59 4 is_stmt 1
	.loc 1 63 2
.LBB41:
	.loc 1 63 6
.LVL56:
	.loc 1 63 19
	.loc 1 65 38 is_stmt 0
	li	a2,805306368
	.loc 1 63 10
	li	a5,0
	.loc 1 63 19
	li	a1,64
.LVL57:
.L9:
	.loc 1 64 3 is_stmt 1
.LBB42:
.LBB43:
	.loc 1 5 5
 #APP
# 5 "fir.c" 1
	addi x0, x0, 0
# 0 "" 2
 #NO_APP
.LBE43:
.LBE42:
	.loc 1 65 3
	.loc 1 65 38 is_stmt 0
	sw	a5,64(a2)
	.loc 1 66 3 is_stmt 1
	.loc 1 66 16 is_stmt 0
	lw	a3,68(a2)
	.loc 1 63 27
	addi	a5,a5,1
.LVL58:
	.loc 1 66 13
	sw	a3,%lo(reg_fir_y)(a4)
.LVL59:
	.loc 1 63 27 is_stmt 1
	.loc 1 63 19
	bne	a5,a1,.L9
.LBE41:
	.loc 1 68 2
	.loc 1 68 49 is_stmt 0
	slli	a5,a3,24
.LVL60:
	.loc 1 68 56
	li	a4,5898240
	or	a5,a5,a4
	.loc 1 71 1
	lui	a0,%hi(.LANCHOR1)
	.loc 1 68 36
	li	a4,637534208
	sw	a5,12(a4)
	.loc 1 70 2 is_stmt 1
	.loc 1 71 1 is_stmt 0
	addi	a0,a0,%lo(.LANCHOR1)
	ret
	.cfi_endproc
.LFE318:
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
	.4byte	0x210
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0xc
	.4byte	0x6a
	.4byte	0x88
	.byte	0xd
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
	.byte	0xe
	.string	"fir"
	.byte	0x1
	.byte	0x16
	.byte	0x33
	.4byte	0x19a
	.4byte	.LFB318
	.4byte	.LFE318-.LFB318
	.byte	0x1
	.byte	0x9c
	.4byte	0x19a
	.byte	0x4
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0x10a
	.byte	0x5
	.string	"i"
	.byte	0x22
	.4byte	0x6a
	.4byte	.LLST6
	.byte	0x6
	.4byte	0x1c8
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x23
	.byte	0
	.byte	0x4
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.4byte	0x132
	.byte	0x5
	.string	"i"
	.byte	0x31
	.4byte	0x6a
	.4byte	.LLST7
	.byte	0x6
	.4byte	0x1c8
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x32
	.byte	0
	.byte	0x4
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.4byte	0x15a
	.byte	0x5
	.string	"i"
	.byte	0x3f
	.4byte	0x6a
	.4byte	.LLST8
	.byte	0x6
	.4byte	0x1c8
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x40
	.byte	0
	.byte	0xf
	.4byte	0x1a0
	.4byte	.LBB28
	.4byte	.LLRL2
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x7
	.4byte	0x1ad
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x185
	.byte	0x3
	.4byte	0x1b2
	.4byte	.LLST3
	.byte	0
	.byte	0x10
	.4byte	0x1bc
	.4byte	.LLRL4
	.byte	0x3
	.4byte	0x1bd
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x4
	.4byte	0x6a
	.byte	0x12
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8
	.byte	0x33
	.byte	0x1
	.4byte	0x1c8
	.byte	0x13
	.4byte	0x1bc
	.byte	0x8
	.string	"i"
	.byte	0xe
	.byte	0xb
	.4byte	0x6a
	.byte	0
	.byte	0x14
	.byte	0x8
	.string	"i"
	.byte	0x11
	.byte	0xc
	.4byte	0x6a
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.byte	0x16
	.4byte	0x1a0
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.byte	0x1
	.byte	0x9c
	.byte	0x7
	.4byte	0x1ad
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x1fb
	.byte	0x3
	.4byte	0x1b2
	.4byte	.LLST0
	.byte	0
	.byte	0x17
	.4byte	0x1bc
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x3
	.4byte	0x1bd
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
	.byte	0x1d
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0x21
	.byte	0x1
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0x21
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.4byte	.LVL48
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL48
	.4byte	.LVL49
	.byte	0x3
	.byte	0x7c
	.byte	0xc0,0
	.byte	0x7
	.4byte	.LVL49
	.4byte	.LVL50
	.byte	0x1
	.byte	0x5f
	.byte	0
.LLST7:
	.byte	0x7
	.4byte	.LVL51
	.4byte	.LVL52
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL52
	.4byte	.LVL53
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL53
	.4byte	.LVL54
	.byte	0x3
	.byte	0x7c
	.byte	0xc0,0
	.byte	0x7
	.4byte	.LVL54
	.4byte	.LVL55
	.byte	0x1
	.byte	0x5f
	.byte	0
.LLST8:
	.byte	0x7
	.4byte	.LVL56
	.4byte	.LVL57
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL57
	.4byte	.LVL58
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	.LVL58
	.4byte	.LVL59
	.byte	0x3
	.byte	0x7c
	.byte	0xc0,0
	.byte	0x7
	.4byte	.LVL59
	.4byte	.LVL60
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
	.4byte	.LFE317
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
	.4byte	.LFE317
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
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.4byte	.LFB318
	.4byte	.LFE318-.LFB318
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
	.4byte	.LBB28
	.4byte	.LBE28
	.byte	0x6
	.4byte	.LBB34
	.4byte	.LBE34
	.byte	0
.LLRL4:
	.byte	0x6
	.4byte	.LBB31
	.4byte	.LBE31
	.byte	0x6
	.4byte	.LBB32
	.4byte	.LBE32
	.byte	0
.LLRL9:
	.byte	0x6
	.4byte	.LFB317
	.4byte	.LFE317
	.byte	0x6
	.4byte	.LFB318
	.4byte	.LFE318
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
.LASF18:
	.string	"insert_nop"
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
