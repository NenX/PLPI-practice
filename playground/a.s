	.file	"a.c"
	.text
#APP
	.text
.global Add
.type Add, @function
Add:
leal 2(%rdi,%rsi,8), %eax
ret
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"res =  %d\n"
#NO_APP
	.text
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$2, %esi
	movl	$1, %edi
	call	Add@PLT
	movl	%eax, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
