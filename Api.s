	.text
	.file	"Api.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_ZStL8__ioinit, %rdi
	callq	_ZNSt8ios_base4InitC1Ev
	movabsq	$_ZNSt8ios_base4InitD1Ev, %rdi
	movabsq	$_ZStL8__ioinit, %rsi
	movabsq	$__dso_handle, %rdx
	callq	__cxa_atexit
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z18ApiDestroyFunctionPvm # -- Begin function _Z18ApiDestroyFunctionPvm
	.p2align	4, 0x90
	.type	_Z18ApiDestroyFunctionPvm,@function
_Z18ApiDestroyFunctionPvm:              # @_Z18ApiDestroyFunctionPvm
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -64(%rbp)
	movq	%rsi, -72(%rbp)
	movl	$0, -76(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_2
# %bb.1:
	cmpq	$56, -72(%rbp)
	jae	.LBB1_3
.LBB1_2:
	movl	$-1, -56(%rbp)
	jmp	.LBB1_45
.LBB1_3:
	movabsq	$4021584340314384391, %rax # imm = 0x37CF89A676B66807
	movq	%rax, -88(%rbp)
	movabsq	$-6354709196852271097, %rax # imm = 0xA7CF89A776B66807
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, -8(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$3, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edi
.Ltmp0:
	movl	$65535, %esi            # imm = 0xFFFF
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	_ZStanSt12memory_orderSt23__memory_order_modifier
.Ltmp1:
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_4
.LBB1_4:
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %edi
.Ltmp2:
	movl	$65535, %esi            # imm = 0xFFFF
	callq	_ZStanSt12memory_orderSt23__memory_order_modifier
.Ltmp3:
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB1_5
.LBB1_5:
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movl	-32(%rbp), %r8d
	addl	$-1, %edx
	movl	%edx, %edi
	subl	$4, %edx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%edx, -164(%rbp)        # 4-byte Spill
	ja	.LBB1_6
# %bb.46:
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_6:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -165(%rbp)        # 1-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jne	.LBB1_12
	jmp	.LBB1_11
.LBB1_7:
	movl	-140(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jb	.LBB1_14
	jmp	.LBB1_13
.LBB1_8:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -181(%rbp)        # 1-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB1_21
	jmp	.LBB1_20
.LBB1_9:
	movl	-140(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jb	.LBB1_23
	jmp	.LBB1_22
.LBB1_10:
	movl	-140(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jb	.LBB1_30
	jmp	.LBB1_47
.LBB1_47:
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB1_31
	jmp	.LBB1_29
.LBB1_11:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_12:
	movb	-165(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB1_40
.LBB1_13:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -205(%rbp)        # 1-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jne	.LBB1_17
	jmp	.LBB1_16
.LBB1_14:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -217(%rbp)        # 1-byte Spill
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jne	.LBB1_19
	jmp	.LBB1_18
.LBB1_15:
	jmp	.LBB1_40
.LBB1_16:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_17:
	movb	-205(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB1_15
.LBB1_18:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_19:
	movb	-217(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB1_15
.LBB1_20:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_21:
	movb	-181(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB1_40
.LBB1_22:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -233(%rbp)        # 1-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jne	.LBB1_26
	jmp	.LBB1_25
.LBB1_23:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -249(%rbp)        # 1-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jne	.LBB1_28
	jmp	.LBB1_27
.LBB1_24:
	jmp	.LBB1_40
.LBB1_25:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_26:
	movb	-233(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB1_24
.LBB1_27:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_28:
	movb	-249(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB1_24
.LBB1_29:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -265(%rbp)        # 1-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jne	.LBB1_34
	jmp	.LBB1_33
.LBB1_30:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -281(%rbp)        # 1-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jne	.LBB1_36
	jmp	.LBB1_35
.LBB1_31:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -297(%rbp)        # 1-byte Spill
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jne	.LBB1_38
	jmp	.LBB1_37
.LBB1_32:
	jmp	.LBB1_40
.LBB1_33:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_34:
	movb	-265(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB1_32
.LBB1_35:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_36:
	movb	-281(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB1_32
.LBB1_37:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_38:
	movb	-297(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB1_32
.LBB1_39:
.Ltmp4:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	callq	__clang_call_terminate
.LBB1_40:
	movb	-49(%rbp), %al
	andb	$1, %al
	movb	%al, -105(%rbp)
	testb	$1, -105(%rbp)
	jne	.LBB1_42
# %bb.41:
	movl	$-1, -56(%rbp)
	jmp	.LBB1_45
.LBB1_42:
	movq	-104(%rbp), %rax
	testb	$1, 48(%rax)
	je	.LBB1_44
# %bb.43:
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	pthread_mutex_destroy
	movl	%eax, -76(%rbp)
	movq	-104(%rbp), %rdi
	movb	$0, 48(%rdi)
.LBB1_44:
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rdx
	callq	memset
	movl	-76(%rbp), %esi
	movl	%esi, -56(%rbp)
.LBB1_45:
	movl	-56(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_Z18ApiDestroyFunctionPvm, .Lfunc_end1-_Z18ApiDestroyFunctionPvm
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_7
	.quad	.LBB1_7
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_10
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\242\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 1 <<
	.long	.Ltmp3-.Ltmp0           #   Call between .Ltmp0 and .Ltmp3
	.long	.Ltmp4-.Lfunc_begin0    #     jumps to .Ltmp4
	.byte	1                       #   On action: 1
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Lfunc_end1-.Ltmp3      #   Call between .Ltmp3 and .Lfunc_end1
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z17ApiCreateFunctionPvm # -- Begin function _Z17ApiCreateFunctionPvm
	.p2align	4, 0x90
	.type	_Z17ApiCreateFunctionPvm,@function
_Z17ApiCreateFunctionPvm:               # @_Z17ApiCreateFunctionPvm
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1136, %rsp             # imm = 0x470
	movq	%rdi, -272(%rbp)
	movq	%rsi, -280(%rbp)
	movl	$0, -284(%rbp)
	cmpq	$0, -272(%rbp)
	je	.LBB2_2
# %bb.1:
	cmpq	$56, -280(%rbp)
	jae	.LBB2_3
.LBB2_2:
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movl	$-1, -260(%rbp)
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB2_143
.LBB2_3:
	movq	-272(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -240(%rbp)
	movl	$5, -244(%rbp)
	movq	-240(%rbp), %rax
	movl	-244(%rbp), %edi
.Ltmp5:
	movl	$65535, %esi            # imm = 0xFFFF
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	_ZStanSt12memory_orderSt23__memory_order_modifier
.Ltmp6:
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB2_4
.LBB2_4:
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movl	-244(%rbp), %edx
	movl	%edx, %esi
	addl	$-1, %esi
	subl	$2, %esi
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	movl	%edx, -380(%rbp)        # 4-byte Spill
	movl	%esi, -384(%rbp)        # 4-byte Spill
	jb	.LBB2_6
	jmp	.LBB2_144
.LBB2_144:
	movl	-380(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	je	.LBB2_7
	jmp	.LBB2_5
.LBB2_5:
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, -256(%rbp)
	jmp	.LBB2_9
.LBB2_6:
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, -256(%rbp)
	jmp	.LBB2_9
.LBB2_7:
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, -256(%rbp)
	jmp	.LBB2_9
.LBB2_8:
.Ltmp7:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -392(%rbp)        # 4-byte Spill
	callq	__clang_call_terminate
.LBB2_9:
	movq	-256(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-296(%rbp), %rax
	movq	-312(%rbp), %rcx
	movq	%rax, -184(%rbp)
	leaq	-312(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	%rcx, -200(%rbp)
	movl	$3, -204(%rbp)
	movl	$0, -208(%rbp)
	movq	-184(%rbp), %rax
	movl	-208(%rbp), %edi
.Ltmp8:
	movl	$65535, %esi            # imm = 0xFFFF
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	_ZStanSt12memory_orderSt23__memory_order_modifier
.Ltmp9:
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB2_10
.LBB2_10:
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)
	movl	-204(%rbp), %edi
.Ltmp10:
	movl	$65535, %esi            # imm = 0xFFFF
	callq	_ZStanSt12memory_orderSt23__memory_order_modifier
.Ltmp11:
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB2_11
.LBB2_11:
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movl	-204(%rbp), %edx
	movq	-192(%rbp), %rsi
	movq	-200(%rbp), %rdi
	movq	%rdi, -224(%rbp)
	movl	-208(%rbp), %r8d
	addl	$-1, %edx
	movl	%edx, %edi
	subl	$4, %edx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movl	%r8d, -420(%rbp)        # 4-byte Spill
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movl	%edx, -444(%rbp)        # 4-byte Spill
	ja	.LBB2_12
# %bb.145:
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	.LJTI2_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_12:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -445(%rbp)        # 1-byte Spill
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jne	.LBB2_18
	jmp	.LBB2_17
.LBB2_13:
	movl	-420(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jb	.LBB2_20
	jmp	.LBB2_19
.LBB2_14:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -461(%rbp)        # 1-byte Spill
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jne	.LBB2_27
	jmp	.LBB2_26
.LBB2_15:
	movl	-420(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jb	.LBB2_29
	jmp	.LBB2_28
.LBB2_16:
	movl	-420(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jb	.LBB2_36
	jmp	.LBB2_146
.LBB2_146:
	movl	-420(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	je	.LBB2_37
	jmp	.LBB2_35
.LBB2_17:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_18:
	movb	-445(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -225(%rbp)
	jmp	.LBB2_46
.LBB2_19:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -485(%rbp)        # 1-byte Spill
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jne	.LBB2_23
	jmp	.LBB2_22
.LBB2_20:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -497(%rbp)        # 1-byte Spill
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jne	.LBB2_25
	jmp	.LBB2_24
.LBB2_21:
	jmp	.LBB2_46
.LBB2_22:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-496(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_23:
	movb	-485(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -225(%rbp)
	jmp	.LBB2_21
.LBB2_24:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-512(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_25:
	movb	-497(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -225(%rbp)
	jmp	.LBB2_21
.LBB2_26:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_27:
	movb	-461(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -225(%rbp)
	jmp	.LBB2_46
.LBB2_28:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -513(%rbp)        # 1-byte Spill
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jne	.LBB2_32
	jmp	.LBB2_31
.LBB2_29:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -529(%rbp)        # 1-byte Spill
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jne	.LBB2_34
	jmp	.LBB2_33
.LBB2_30:
	jmp	.LBB2_46
.LBB2_31:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-528(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_32:
	movb	-513(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -225(%rbp)
	jmp	.LBB2_30
.LBB2_33:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-544(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_34:
	movb	-529(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -225(%rbp)
	jmp	.LBB2_30
.LBB2_35:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -545(%rbp)        # 1-byte Spill
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jne	.LBB2_40
	jmp	.LBB2_39
.LBB2_36:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -561(%rbp)        # 1-byte Spill
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jne	.LBB2_42
	jmp	.LBB2_41
.LBB2_37:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -577(%rbp)        # 1-byte Spill
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jne	.LBB2_44
	jmp	.LBB2_43
.LBB2_38:
	jmp	.LBB2_46
.LBB2_39:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-560(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_40:
	movb	-545(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -225(%rbp)
	jmp	.LBB2_38
.LBB2_41:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-576(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_42:
	movb	-561(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -225(%rbp)
	jmp	.LBB2_38
.LBB2_43:
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-592(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_44:
	movb	-577(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -225(%rbp)
	jmp	.LBB2_38
.LBB2_45:
.Ltmp12:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	callq	__clang_call_terminate
.LBB2_46:
	movb	-225(%rbp), %al
	andb	$1, %al
	movb	%al, -313(%rbp)
	testb	$1, -313(%rbp)
	je	.LBB2_48
# %bb.47:
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	$-1, -260(%rbp)
	movl	%eax, -600(%rbp)        # 4-byte Spill
	jmp	.LBB2_143
.LBB2_48:
	movabsq	$4021584340314384391, %rax # imm = 0x37CF89A676B66807
	movq	%rax, -328(%rbp)
	movq	-296(%rbp), %rax
	movq	-328(%rbp), %rcx
	movq	%rax, -128(%rbp)
	leaq	-328(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movl	$3, -148(%rbp)
	movl	$0, -152(%rbp)
	movq	-128(%rbp), %rax
	movl	-152(%rbp), %edi
.Ltmp13:
	movl	$65535, %esi            # imm = 0xFFFF
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	_ZStanSt12memory_orderSt23__memory_order_modifier
.Ltmp14:
	movl	%eax, -612(%rbp)        # 4-byte Spill
	jmp	.LBB2_49
.LBB2_49:
	movl	-612(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)
	movl	-148(%rbp), %edi
.Ltmp15:
	movl	$65535, %esi            # imm = 0xFFFF
	callq	_ZStanSt12memory_orderSt23__memory_order_modifier
.Ltmp16:
	movl	%eax, -616(%rbp)        # 4-byte Spill
	jmp	.LBB2_50
.LBB2_50:
	movl	-616(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)
	movq	-608(%rbp), %rcx        # 8-byte Reload
	movl	-148(%rbp), %edx
	movq	-136(%rbp), %rsi
	movq	-144(%rbp), %rdi
	movq	%rdi, -168(%rbp)
	movl	-152(%rbp), %r8d
	addl	$-1, %edx
	movl	%edx, %edi
	subl	$4, %edx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	movl	%r8d, -628(%rbp)        # 4-byte Spill
	movq	%rsi, -640(%rbp)        # 8-byte Spill
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movl	%edx, -652(%rbp)        # 4-byte Spill
	ja	.LBB2_51
# %bb.147:
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	.LJTI2_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_51:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -653(%rbp)        # 1-byte Spill
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jne	.LBB2_57
	jmp	.LBB2_56
.LBB2_52:
	movl	-628(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -668(%rbp)        # 4-byte Spill
	jb	.LBB2_59
	jmp	.LBB2_58
.LBB2_53:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -669(%rbp)        # 1-byte Spill
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jne	.LBB2_66
	jmp	.LBB2_65
.LBB2_54:
	movl	-628(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -684(%rbp)        # 4-byte Spill
	jb	.LBB2_68
	jmp	.LBB2_67
.LBB2_55:
	movl	-628(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -688(%rbp)        # 4-byte Spill
	jb	.LBB2_75
	jmp	.LBB2_148
.LBB2_148:
	movl	-628(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
	je	.LBB2_76
	jmp	.LBB2_74
.LBB2_56:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-664(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_57:
	movb	-653(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -169(%rbp)
	jmp	.LBB2_85
.LBB2_58:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -693(%rbp)        # 1-byte Spill
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jne	.LBB2_62
	jmp	.LBB2_61
.LBB2_59:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -705(%rbp)        # 1-byte Spill
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jne	.LBB2_64
	jmp	.LBB2_63
.LBB2_60:
	jmp	.LBB2_85
.LBB2_61:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-704(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_62:
	movb	-693(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -169(%rbp)
	jmp	.LBB2_60
.LBB2_63:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-720(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_64:
	movb	-705(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -169(%rbp)
	jmp	.LBB2_60
.LBB2_65:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-680(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_66:
	movb	-669(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -169(%rbp)
	jmp	.LBB2_85
.LBB2_67:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -721(%rbp)        # 1-byte Spill
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jne	.LBB2_71
	jmp	.LBB2_70
.LBB2_68:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -737(%rbp)        # 1-byte Spill
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jne	.LBB2_73
	jmp	.LBB2_72
.LBB2_69:
	jmp	.LBB2_85
.LBB2_70:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-736(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_71:
	movb	-721(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -169(%rbp)
	jmp	.LBB2_69
.LBB2_72:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-752(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_73:
	movb	-737(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -169(%rbp)
	jmp	.LBB2_69
.LBB2_74:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -753(%rbp)        # 1-byte Spill
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jne	.LBB2_79
	jmp	.LBB2_78
.LBB2_75:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -769(%rbp)        # 1-byte Spill
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jne	.LBB2_81
	jmp	.LBB2_80
.LBB2_76:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -785(%rbp)        # 1-byte Spill
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jne	.LBB2_83
	jmp	.LBB2_82
.LBB2_77:
	jmp	.LBB2_85
.LBB2_78:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-768(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_79:
	movb	-753(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -169(%rbp)
	jmp	.LBB2_77
.LBB2_80:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-784(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_81:
	movb	-769(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -169(%rbp)
	jmp	.LBB2_77
.LBB2_82:
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-800(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_83:
	movb	-785(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -169(%rbp)
	jmp	.LBB2_77
.LBB2_84:
.Ltmp17:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -804(%rbp)        # 4-byte Spill
	callq	__clang_call_terminate
.LBB2_85:
	movb	-169(%rbp), %al
	andb	$1, %al
	movb	%al, -329(%rbp)
	testb	$1, -329(%rbp)
	je	.LBB2_87
# %bb.86:
	movl	$-1, -260(%rbp)
	jmp	.LBB2_143
.LBB2_87:
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	_ZN9ApiObjectC2Ev
	movq	-816(%rbp), %rax        # 8-byte Reload
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rdi
	movq	-312(%rbp), %rcx
	movq	%rdi, -72(%rbp)
	leaq	-304(%rbp), %rdi
	movq	%rdi, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movl	$3, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	-72(%rbp), %rcx
	movl	-96(%rbp), %edi
.Ltmp18:
	movl	$65535, %esi            # imm = 0xFFFF
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	callq	_ZStanSt12memory_orderSt23__memory_order_modifier
.Ltmp19:
	movl	%eax, -828(%rbp)        # 4-byte Spill
	jmp	.LBB2_88
.LBB2_88:
	movl	-828(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)
	movl	-92(%rbp), %edi
.Ltmp20:
	movl	$65535, %esi            # imm = 0xFFFF
	callq	_ZStanSt12memory_orderSt23__memory_order_modifier
.Ltmp21:
	movl	%eax, -832(%rbp)        # 4-byte Spill
	jmp	.LBB2_89
.LBB2_89:
	movl	-832(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
	movq	-824(%rbp), %rcx        # 8-byte Reload
	movl	-92(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	%rdi, -112(%rbp)
	movl	-96(%rbp), %r8d
	addl	$-1, %edx
	movl	%edx, %edi
	subl	$4, %edx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	movl	%r8d, -844(%rbp)        # 4-byte Spill
	movq	%rsi, -856(%rbp)        # 8-byte Spill
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movl	%edx, -868(%rbp)        # 4-byte Spill
	ja	.LBB2_90
# %bb.149:
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	.LJTI2_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_90:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -869(%rbp)        # 1-byte Spill
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jne	.LBB2_96
	jmp	.LBB2_95
.LBB2_91:
	movl	-844(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -884(%rbp)        # 4-byte Spill
	jb	.LBB2_98
	jmp	.LBB2_97
.LBB2_92:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -885(%rbp)        # 1-byte Spill
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jne	.LBB2_105
	jmp	.LBB2_104
.LBB2_93:
	movl	-844(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -900(%rbp)        # 4-byte Spill
	jb	.LBB2_107
	jmp	.LBB2_106
.LBB2_94:
	movl	-844(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	subl	$2, %eax
	movl	%eax, -904(%rbp)        # 4-byte Spill
	jb	.LBB2_114
	jmp	.LBB2_150
.LBB2_150:
	movl	-844(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -908(%rbp)        # 4-byte Spill
	je	.LBB2_115
	jmp	.LBB2_113
.LBB2_95:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	-880(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_96:
	movb	-869(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -113(%rbp)
	jmp	.LBB2_124
.LBB2_97:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -909(%rbp)        # 1-byte Spill
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jne	.LBB2_101
	jmp	.LBB2_100
.LBB2_98:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -921(%rbp)        # 1-byte Spill
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jne	.LBB2_103
	jmp	.LBB2_102
.LBB2_99:
	jmp	.LBB2_124
.LBB2_100:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	-920(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_101:
	movb	-909(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -113(%rbp)
	jmp	.LBB2_99
.LBB2_102:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	-936(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_103:
	movb	-921(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -113(%rbp)
	jmp	.LBB2_99
.LBB2_104:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	-896(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_105:
	movb	-885(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -113(%rbp)
	jmp	.LBB2_124
.LBB2_106:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -937(%rbp)        # 1-byte Spill
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jne	.LBB2_110
	jmp	.LBB2_109
.LBB2_107:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -953(%rbp)        # 1-byte Spill
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jne	.LBB2_112
	jmp	.LBB2_111
.LBB2_108:
	jmp	.LBB2_124
.LBB2_109:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	-952(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_110:
	movb	-937(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -113(%rbp)
	jmp	.LBB2_108
.LBB2_111:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	-968(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_112:
	movb	-953(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -113(%rbp)
	jmp	.LBB2_108
.LBB2_113:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -969(%rbp)        # 1-byte Spill
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jne	.LBB2_118
	jmp	.LBB2_117
.LBB2_114:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -985(%rbp)        # 1-byte Spill
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	jne	.LBB2_120
	jmp	.LBB2_119
.LBB2_115:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	lock		cmpxchgq	%rcx, (%rdx)
	sete	%sil
	testb	$1, %sil
	movb	%sil, -1001(%rbp)       # 1-byte Spill
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	jne	.LBB2_122
	jmp	.LBB2_121
.LBB2_116:
	jmp	.LBB2_124
.LBB2_117:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	-984(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_118:
	movb	-969(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -113(%rbp)
	jmp	.LBB2_116
.LBB2_119:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_120:
	movb	-985(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -113(%rbp)
	jmp	.LBB2_116
.LBB2_121:
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, (%rax)
.LBB2_122:
	movb	-1001(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, -113(%rbp)
	jmp	.LBB2_116
.LBB2_123:
.Ltmp22:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -1020(%rbp)       # 4-byte Spill
	callq	__clang_call_terminate
.LBB2_124:
	testb	$1, -113(%rbp)
	jne	.LBB2_126
# %bb.125:
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	movl	$-1, -260(%rbp)
	movl	%eax, -1024(%rbp)       # 4-byte Spill
	jmp	.LBB2_143
.LBB2_126:
	movq	-344(%rbp), %rax
	testb	$1, 48(%rax)
	jne	.LBB2_136
# %bb.127:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-344(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	pthread_mutex_init
	movl	%eax, -284(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB2_135
# %bb.128:
	movq	-344(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$5, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %edi
.Ltmp23:
	movl	$65535, %esi            # imm = 0xFFFF
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	_ZStanSt12memory_orderSt23__memory_order_modifier
.Ltmp24:
	movl	%eax, -1036(%rbp)       # 4-byte Spill
	jmp	.LBB2_129
.LBB2_129:
	movl	-1036(%rbp), %eax       # 4-byte Reload
	movl	%eax, -56(%rbp)
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	%rsi, -64(%rbp)
	movl	%edx, %edi
	subl	$3, %edi
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	movl	%edx, -1052(%rbp)       # 4-byte Spill
	movl	%edi, -1056(%rbp)       # 4-byte Spill
	je	.LBB2_131
	jmp	.LBB2_151
.LBB2_151:
	movl	-1052(%rbp), %eax       # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -1060(%rbp)       # 4-byte Spill
	je	.LBB2_132
	jmp	.LBB2_130
.LBB2_130:
	movq	-64(%rbp), %rax
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	movq	%rax, (%rcx)
	jmp	.LBB2_134
.LBB2_131:
	movq	-64(%rbp), %rax
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	movq	%rax, (%rcx)
	jmp	.LBB2_134
.LBB2_132:
	movq	-64(%rbp), %rax
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	xchgq	%rax, (%rcx)
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB2_134
.LBB2_133:
.Ltmp25:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
	callq	__clang_call_terminate
.LBB2_134:
	movl	-284(%rbp), %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB2_143
.LBB2_135:
	movq	-344(%rbp), %rax
	movb	$1, 48(%rax)
.LBB2_136:
	movq	-344(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$4021584340314384391, %rax # imm = 0x37CF89A676B66807
	movq	%rax, -16(%rbp)
	movl	$5, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edi
.Ltmp26:
	movl	$65535, %esi            # imm = 0xFFFF
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	_ZStanSt12memory_orderSt23__memory_order_modifier
.Ltmp27:
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	jmp	.LBB2_137
.LBB2_137:
	movl	-1092(%rbp), %eax       # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	%edx, %edi
	subl	$3, %edi
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	movl	%edx, -1108(%rbp)       # 4-byte Spill
	movl	%edi, -1112(%rbp)       # 4-byte Spill
	je	.LBB2_139
	jmp	.LBB2_152
.LBB2_152:
	movl	-1108(%rbp), %eax       # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -1116(%rbp)       # 4-byte Spill
	je	.LBB2_140
	jmp	.LBB2_138
.LBB2_138:
	movq	-32(%rbp), %rax
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	movq	%rax, (%rcx)
	jmp	.LBB2_142
.LBB2_139:
	movq	-32(%rbp), %rax
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	movq	%rax, (%rcx)
	jmp	.LBB2_142
.LBB2_140:
	movq	-32(%rbp), %rax
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	xchgq	%rax, (%rcx)
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB2_142
.LBB2_141:
.Ltmp28:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -1132(%rbp)       # 4-byte Spill
	callq	__clang_call_terminate
.LBB2_142:
	movl	$0, -260(%rbp)
.LBB2_143:
	movl	-260(%rbp), %eax
	addq	$1136, %rsp             # imm = 0x470
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_Z17ApiCreateFunctionPvm, .Lfunc_end2-_Z17ApiCreateFunctionPvm
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_13
	.quad	.LBB2_13
	.quad	.LBB2_14
	.quad	.LBB2_15
	.quad	.LBB2_16
.LJTI2_1:
	.quad	.LBB2_52
	.quad	.LBB2_52
	.quad	.LBB2_53
	.quad	.LBB2_54
	.quad	.LBB2_55
.LJTI2_2:
	.quad	.LBB2_91
	.quad	.LBB2_91
	.quad	.LBB2_92
	.quad	.LBB2_93
	.quad	.LBB2_94
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table2:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	125                     # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	117                     # Call site table length
	.long	.Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.long	.Ltmp5-.Lfunc_begin1    #   Call between .Lfunc_begin1 and .Ltmp5
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp5-.Lfunc_begin1    # >> Call Site 2 <<
	.long	.Ltmp6-.Ltmp5           #   Call between .Ltmp5 and .Ltmp6
	.long	.Ltmp7-.Lfunc_begin1    #     jumps to .Ltmp7
	.byte	1                       #   On action: 1
	.long	.Ltmp8-.Lfunc_begin1    # >> Call Site 3 <<
	.long	.Ltmp11-.Ltmp8          #   Call between .Ltmp8 and .Ltmp11
	.long	.Ltmp12-.Lfunc_begin1   #     jumps to .Ltmp12
	.byte	1                       #   On action: 1
	.long	.Ltmp11-.Lfunc_begin1   # >> Call Site 4 <<
	.long	.Ltmp13-.Ltmp11         #   Call between .Ltmp11 and .Ltmp13
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp13-.Lfunc_begin1   # >> Call Site 5 <<
	.long	.Ltmp16-.Ltmp13         #   Call between .Ltmp13 and .Ltmp16
	.long	.Ltmp17-.Lfunc_begin1   #     jumps to .Ltmp17
	.byte	1                       #   On action: 1
	.long	.Ltmp18-.Lfunc_begin1   # >> Call Site 6 <<
	.long	.Ltmp21-.Ltmp18         #   Call between .Ltmp18 and .Ltmp21
	.long	.Ltmp22-.Lfunc_begin1   #     jumps to .Ltmp22
	.byte	1                       #   On action: 1
	.long	.Ltmp21-.Lfunc_begin1   # >> Call Site 7 <<
	.long	.Ltmp23-.Ltmp21         #   Call between .Ltmp21 and .Ltmp23
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp23-.Lfunc_begin1   # >> Call Site 8 <<
	.long	.Ltmp24-.Ltmp23         #   Call between .Ltmp23 and .Ltmp24
	.long	.Ltmp25-.Lfunc_begin1   #     jumps to .Ltmp25
	.byte	1                       #   On action: 1
	.long	.Ltmp26-.Lfunc_begin1   # >> Call Site 9 <<
	.long	.Ltmp27-.Ltmp26         #   Call between .Ltmp26 and .Ltmp27
	.long	.Ltmp28-.Lfunc_begin1   #     jumps to .Ltmp28
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZN9ApiObjectC2Ev,"axG",@progbits,_ZN9ApiObjectC2Ev,comdat
	.weak	_ZN9ApiObjectC2Ev       # -- Begin function _ZN9ApiObjectC2Ev
	.p2align	4, 0x90
	.type	_ZN9ApiObjectC2Ev,@function
_ZN9ApiObjectC2Ev:                      # @_ZN9ApiObjectC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, 48(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_ZN9ApiObjectC2Ev, .Lfunc_end3-_ZN9ApiObjectC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZStanSt12memory_orderSt23__memory_order_modifier,"axG",@progbits,_ZStanSt12memory_orderSt23__memory_order_modifier,comdat
	.weak	_ZStanSt12memory_orderSt23__memory_order_modifier # -- Begin function _ZStanSt12memory_orderSt23__memory_order_modifier
	.p2align	4, 0x90
	.type	_ZStanSt12memory_orderSt23__memory_order_modifier,@function
_ZStanSt12memory_orderSt23__memory_order_modifier: # @_ZStanSt12memory_orderSt23__memory_order_modifier
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	andl	-8(%rbp), %esi
	movl	%esi, %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_ZStanSt12memory_orderSt23__memory_order_modifier, .Lfunc_end4-_ZStanSt12memory_orderSt23__memory_order_modifier
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	_ZSt9terminatev
.Lfunc_end5:
	.size	__clang_call_terminate, .Lfunc_end5-__clang_call_terminate
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_Api.cpp
	.type	_GLOBAL__sub_I_Api.cpp,@function
_GLOBAL__sub_I_Api.cpp:                 # @_GLOBAL__sub_I_Api.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_GLOBAL__sub_I_Api.cpp, .Lfunc_end6-_GLOBAL__sub_I_Api.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error: Bad Params\n"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Error: Obj already initialized\n"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Create API failed to acquire resource.\n"
	.size	.L.str.2, 40

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_Api.cpp

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
