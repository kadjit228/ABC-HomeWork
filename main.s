	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	input_mass
	.type	input_mass, @function
input_mass:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	DWORD PTR -68[rbp], edi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	mov	eax, DWORD PTR -68[rbp]             #Initialization of int b[n]
	movsx	rdx, eax 
	sub	rdx, 1
	mov	QWORD PTR -48[rbp], rdx
	movsx	rdx, eax
	mov	r10, rdx
	mov	r11d, 0
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L2:
	cmp	rsp, rdx 
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0              # end of Initialization int b[n]
	jmp	.L2
.L3:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L4
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L4:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -40[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -52[rbp], 1
.L5:
	mov	eax, DWORD PTR -52[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jl	.L6
	mov	rax, QWORD PTR -40[rbp]           # initialization of int* p of b
	mov	QWORD PTR -32[rbp], rax           # end of initialization
	mov	rax, QWORD PTR -32[rbp]           #return p
	mov	rsp, rbx                          # end of return p
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	input_mass, .-input_mass
	.globl	form_mass
	.type	form_mass, @function
form_mass:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -72[rbp], rdi
	mov	DWORD PTR -76[rbp], esi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rsi, rax
	mov	eax, DWORD PTR -76[rbp]    # start of initialization int b[n] (form_mass)
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -48[rbp], rdx
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	movsx	rdx, eax
	mov	rcx, rdx
	mov	ebx, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L10:
	cmp	rsp, rdx
	je	.L11
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L10
.L11:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L12
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L12:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -40[rbp], rax            #end of Initialization if int[n] b (form_mass)
	mov	DWORD PTR -52[rbp], 0
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	mov	ecx, edx
	imul	ecx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -52[rbp], 1
.L13:
	mov	eax, DWORD PTR -52[rbp]
	cmp	eax, DWORD PTR -76[rbp]
	jl	.L14
	mov	rax, QWORD PTR -40[rbp]             # initialization of int* p of int[n] b
	mov	QWORD PTR -32[rbp], rax             # end of initialization  
	mov	rax, QWORD PTR -32[rbp]
	mov	rsp, rsi
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	form_mass, .-form_mass
	.section	.rodata
.LC1:
	.string	"%d "
	.text
	.globl	output
	.type	output, @function
output:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -4[rbp]            # start of printf(b[i])
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT                         #end of printf(b[i])
	add	DWORD PTR -4[rbp], 1
.L18:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L19
	nop
	nop
	leave
	ret
	.size	output, .-output
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40         #declaration of n
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax                     #end of initialization of n
	lea	rax, -28[rbp]                # start of scanf(&n) 
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT           #end of scanf(&n) 
	mov	eax, DWORD PTR -28[rbp]      #declaration of int* a and  initialization
	mov	edi, eax
	call	input_mass
	mov	QWORD PTR -24[rbp], rax      #end of decalration and initialization
	mov	edx, DWORD PTR -28[rbp]      #start of declaration int*b and initialization
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	form_mass
	mov	QWORD PTR -16[rbp], rax      #end of declaration
	mov	edx, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	output
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
