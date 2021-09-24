	.file	"hello.f90"
	.section .rdata,"dr"
LC0:
	.ascii "hello.f90\0"
LC1:
	.ascii "Hello, world!"
	.text
	.def	_MAIN__;	.scl	3;	.type	32;	.endef
_MAIN__:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$376, %esp
	movl	$LC0, -352(%ebp)
	movl	$2, -348(%ebp)
	movl	$128, -360(%ebp)
	movl	$6, -356(%ebp)
	leal	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_st_write
	movl	$13, 8(%esp)
	movl	$LC1, 4(%esp)
	leal	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_transfer_character_write
	leal	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_st_write_done
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_set_args
	movl	$_options.1.1818, 4(%esp)
	movl	$7, (%esp)
	call	__gfortran_set_options
	call	_MAIN__
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.section .rdata,"dr"
	.align 4
_options.1.1818:
	.long	68
	.long	1023
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.ident	"GCC: (GNU) 4.8.1"
	.def	__gfortran_st_write;	.scl	2;	.type	32;	.endef
	.def	__gfortran_transfer_character_write;	.scl	2;	.type	32;	.endef
	.def	__gfortran_st_write_done;	.scl	2;	.type	32;	.endef
	.def	__gfortran_set_args;	.scl	2;	.type	32;	.endef
	.def	__gfortran_set_options;	.scl	2;	.type	32;	.endef
