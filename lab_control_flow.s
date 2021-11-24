	.file	"lab_control_flow.c"
	.text
	.globl	user_response
	.bss
	.align 4
	.type	user_response, @object
	.size	user_response, 4
user_response:
	.zero	4
	.section	.rodata
	.align 8
.LC0:
	.string	"==============================="
	.align 8
.LC1:
	.string	"Welcome, here are your options:"
.LC2:
	.string	"1. View employee data"
.LC3:
	.string	"2. View customer data"
.LC4:
	.string	"10. Quit"
.LC5:
	.string	"Enter your response now:"
.LC6:
	.string	"%d"
.emp:
	.string "Employee data:"
.emp2:
	.string "Hugh Jackman, 39, 5'10, BLK"
.cus:
	.string "Customer Data:"
.cus2:
	.string "Tod Cruise, 45, 5'7, BRWN"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	jmp 	.L2
.L3:
	leaq	.emp(%rip), %rdi
	call	puts@PLT
	leaq	.emp2(%rip), %rdi
	call	puts@PLT
	jmp		.L2
.L4:
	leaq	.cus(%rip), %rdi
	call	puts@PLT
	leaq	.cus2(%rip), %rdi
	call	puts@PLT
.L2:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	user_response(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	user_response(%rip), %ebx
	cmpl	$1, %ebx
	je		.L3
	cmpl	$2, %ebx
	je		.L4
	cmpl	$10, %ebx
	je		.L5
	jmp	.L2
.L5:
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
