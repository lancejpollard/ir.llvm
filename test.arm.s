	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 1
	.globl	_mult                           ; -- Begin function mult
	.p2align	2
_mult:                                  ; @mult
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #5
	stur	w8, [x29, #-4]
	mov	w8, #3
	str	w8, [sp, #8]
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	mul	w8, w8, w9
	str	w8, [sp, #4]
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128                    ; =128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112                   ; =112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	wzr, [sp, #44]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	add	x8, sp, #32                     ; =32
	str	x8, [sp]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	adrp	x8, l_.str.2@PAGE
	add	x0, x8, l_.str.2@PAGEOFF
	adrp	x8, l_.str.3@PAGE
	add	x1, x8, l_.str.3@PAGEOFF
	bl	_fopen
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, LBB1_2
; %bb.1:
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB1_2:
	str	wzr, [sp, #36]
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #32]
	cmp	w8, w9
	b.ge	LBB1_6
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1                      ; =1
	str	x8, [sp]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	add	x8, sp, #48                     ; =48
	str	x8, [sp]
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_scanf
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	add	x8, sp, #40                     ; =40
	str	x8, [sp]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	x0, [sp, #24]
	add	x8, sp, #48                     ; =48
	ldr	w9, [sp, #40]
	str	x9, [sp, #8]
	str	x8, [sp]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_fprintf
; %bb.5:                                ;   in Loop: Header=BB1_3 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1                      ; =1
	str	w8, [sp, #36]
	b	LBB1_3
LBB1_6:
	ldr	x0, [sp, #24]
	bl	_fclose
	ldr	w0, [sp, #44]
	ldur	x8, [x29, #-8]
	adrp	x9, ___stack_chk_guard@GOTPAGE
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x9]
	subs	x8, x9, x8
	b.ne	LBB1_7
	b	LBB1_8
LBB1_7:
	bl	___stack_chk_fail
LBB1_8:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128                    ; =128
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Enter number of students: "

l_.str.1:                               ; @.str.1
	.asciz	"%d"

l_.str.2:                               ; @.str.2
	.asciz	"C:\\student.txt"

l_.str.3:                               ; @.str.3
	.asciz	"w"

l_.str.4:                               ; @.str.4
	.asciz	"Error!"

l_.str.5:                               ; @.str.5
	.asciz	"For student%d\nEnter name: "

l_.str.6:                               ; @.str.6
	.asciz	"%s"

l_.str.7:                               ; @.str.7
	.asciz	"Enter marks: "

l_.str.8:                               ; @.str.8
	.asciz	"\nName: %s \nMarks=%d \n"

.subsections_via_symbols
