	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 1
	.intel_syntax noprefix
	.globl	_mult                           ## -- Begin function mult
	.p2align	4, 0x90
_mult:                                  ## @mult
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 12], 5
	mov	dword ptr [rbp - 8], 3
	mov	eax, dword ptr [rbp - 12]
	imul	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 92], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 84]
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.3]
	call	_fopen
	mov	qword ptr [rbp - 80], rax
	cmp	qword ptr [rbp - 80], 0
	jne	LBB1_2
## %bb.1:
	lea	rdi, [rip + L_.str.4]
	xor	eax, eax
	call	_printf
	mov	edi, 1
	call	_exit
LBB1_2:
	mov	dword ptr [rbp - 68], 0
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 68]
	cmp	eax, dword ptr [rbp - 84]
	jge	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	esi, dword ptr [rbp - 68]
	add	esi, 1
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 64]
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.7]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 88]
	mov	al, 0
	call	_scanf
	mov	rdi, qword ptr [rbp - 80]
	lea	rdx, [rbp - 64]
	mov	ecx, dword ptr [rbp - 88]
	lea	rsi, [rip + L_.str.8]
	mov	al, 0
	call	_fprintf
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 68]
	add	eax, 1
	mov	dword ptr [rbp - 68], eax
	jmp	LBB1_3
LBB1_6:
	mov	rdi, qword ptr [rbp - 80]
	call	_fclose
	mov	eax, dword ptr [rbp - 92]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	sub	rdx, rcx
	jne	LBB1_7
	jmp	LBB1_8
LBB1_7:
	call	___stack_chk_fail
LBB1_8:
	add	rsp, 96
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter number of students: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"C:\\student.txt"

L_.str.3:                               ## @.str.3
	.asciz	"w"

L_.str.4:                               ## @.str.4
	.asciz	"Error!"

L_.str.5:                               ## @.str.5
	.asciz	"For student%d\nEnter name: "

L_.str.6:                               ## @.str.6
	.asciz	"%s"

L_.str.7:                               ## @.str.7
	.asciz	"Enter marks: "

L_.str.8:                               ## @.str.8
	.asciz	"\nName: %s \nMarks=%d \n"

.subsections_via_symbols
