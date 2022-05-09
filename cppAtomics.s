	.text
	.file	"cppAtomics.cpp"
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
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$9744, %rsp             # imm = 0x2610
	movl	$0, -4(%rbp)
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-7552(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -9664(%rbp)       # 8-byte Spill
	movq	%rsi, -9672(%rbp)       # 8-byte Spill
	callq	_ZNSaIcEC1Ev
.Ltmp0:
	movl	$.L.str.1, %ecx
	movl	%ecx, %esi
	leaq	-7544(%rbp), %rdi
	movq	-9672(%rbp), %rdx       # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp1:
	jmp	.LBB1_1
.LBB1_1:
.Ltmp3:
	leaq	-7512(%rbp), %rdi
	leaq	-7544(%rbp), %rsi
	callq	_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp4:
	jmp	.LBB1_2
.LBB1_2:
.Ltmp6:
	leaq	-7512(%rbp), %rdi
	callq	_ZNSt13random_deviceclEv
.Ltmp7:
	movl	%eax, -9676(%rbp)       # 4-byte Spill
	jmp	.LBB1_3
.LBB1_3:
	movl	-9676(%rbp), %eax       # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %esi
.Ltmp8:
	leaq	-2512(%rbp), %rdi
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em
.Ltmp9:
	jmp	.LBB1_4
.LBB1_4:
	leaq	-7512(%rbp), %rdi
	callq	_ZNSt13random_deviceD2Ev
	leaq	-7544(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-7552(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	movl	$0, -9620(%rbp)
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movslq	-9620(%rbp), %rax
	cmpq	$8, %rax
	jae	.LBB1_13
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movl	$64, %eax
	movl	%eax, %edi
	callq	malloc
	xorl	%esi, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	movslq	-9620(%rbp), %rdi
	movq	%rax, PtrMemArray(,%rdi,8)
	movslq	-9620(%rbp), %rax
	movq	PtrMemArray(,%rax,8), %rdi
	callq	memset
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	movl	-9620(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9620(%rbp)
	jmp	.LBB1_5
.LBB1_8:
.Ltmp2:
	movl	%edx, %ecx
	movq	%rax, -7560(%rbp)
	movl	%ecx, -7564(%rbp)
	jmp	.LBB1_12
.LBB1_9:
.Ltmp5:
	movl	%edx, %ecx
	movq	%rax, -7560(%rbp)
	movl	%ecx, -7564(%rbp)
	jmp	.LBB1_11
.LBB1_10:
.Ltmp10:
	leaq	-7512(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -7560(%rbp)
	movl	%ecx, -7564(%rbp)
	callq	_ZNSt13random_deviceD2Ev
.LBB1_11:
	leaq	-7544(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_12:
	leaq	-7552(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB1_31
.LBB1_13:
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$0, -9624(%rbp)
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -9628(%rbp)
	movq	%rax, -9688(%rbp)       # 8-byte Spill
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	movslq	-9628(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB1_22
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=1
	leaq	-2512(%rbp), %rdi
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	leaq	-2512(%rbp), %rdi
	andq	$7, %rax
	movq	%rax, -9640(%rbp)
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	andq	$1, %rax
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -9641(%rbp)
	testb	$1, -9641(%rbp)
	je	.LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$_ZL21CallApiFunctionCreatePv, %rdx
	leaq	-9616(%rbp), %rcx
	movslq	-9628(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rcx
	movq	-9640(%rbp), %rdi
	movq	%rdi, -9696(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-9696(%rbp), %rcx       # 8-byte Reload
	callq	pthread_create
	movl	%eax, -9624(%rbp)
	jmp	.LBB1_18
.LBB1_17:                               #   in Loop: Header=BB1_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$_ZL22CallApiFunctionDestroyPv, %rdx
	leaq	-9616(%rbp), %rcx
	movslq	-9628(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rcx
	movq	-9640(%rbp), %rdi
	movq	%rdi, -9704(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-9704(%rbp), %rcx       # 8-byte Reload
	callq	pthread_create
	movl	%eax, -9624(%rbp)
.LBB1_18:                               #   in Loop: Header=BB1_14 Depth=1
	cmpl	$0, -9624(%rbp)
	je	.LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_14 Depth=1
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.3, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-9628(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, -9712(%rbp)       # 8-byte Spill
.LBB1_20:                               #   in Loop: Header=BB1_14 Depth=1
	jmp	.LBB1_21
.LBB1_21:                               #   in Loop: Header=BB1_14 Depth=1
	movl	-9628(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9628(%rbp)
	jmp	.LBB1_14
.LBB1_22:
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.5, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -9648(%rbp)
	movq	%rax, -9720(%rbp)       # 8-byte Spill
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	movslq	-9648(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB1_26
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movslq	-9648(%rbp), %rcx
	movq	-9616(%rbp,%rcx,8), %rdi
	callq	pthread_join
	movl	%eax, -9724(%rbp)       # 4-byte Spill
# %bb.25:                               #   in Loop: Header=BB1_23 Depth=1
	movl	-9648(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9648(%rbp)
	jmp	.LBB1_23
.LBB1_26:
	movl	$0, -9652(%rbp)
.LBB1_27:                               # =>This Inner Loop Header: Depth=1
	movslq	-9652(%rbp), %rax
	cmpq	$8, %rax
	jae	.LBB1_30
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=1
	movslq	-9652(%rbp), %rdi
	callq	_ZL22CallApiFunctionDestroyPv
	movslq	-9652(%rbp), %rdi
	movq	PtrMemArray(,%rdi,8), %rdi
	movq	%rax, -9736(%rbp)       # 8-byte Spill
	callq	free
# %bb.29:                               #   in Loop: Header=BB1_27 Depth=1
	movl	-9652(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9652(%rbp)
	jmp	.LBB1_27
.LBB1_30:
	xorl	%eax, %eax
	addq	$9744, %rsp             # imm = 0x2610
	popq	%rbp
	retq
.LBB1_31:
	movq	-7560(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\303\200"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	0                       #   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp4-.Ltmp3           #   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    #     jumps to .Ltmp5
	.byte	0                       #   On action: cleanup
	.long	.Ltmp6-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp9-.Ltmp6           #   Call between .Ltmp6 and .Ltmp9
	.long	.Ltmp10-.Lfunc_begin0   #     jumps to .Ltmp10
	.byte	0                       #   On action: cleanup
	.long	.Ltmp9-.Lfunc_begin0    # >> Call Site 5 <<
	.long	.Lfunc_end1-.Ltmp9      #   Call between .Ltmp9 and .Lfunc_end1
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end2-_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt13random_deviceclEv,"axG",@progbits,_ZNSt13random_deviceclEv,comdat
	.weak	_ZNSt13random_deviceclEv # -- Begin function _ZNSt13random_deviceclEv
	.p2align	4, 0x90
	.type	_ZNSt13random_deviceclEv,@function
_ZNSt13random_deviceclEv:               # @_ZNSt13random_deviceclEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_ZNSt13random_deviceclEv, .Lfunc_end3-_ZNSt13random_deviceclEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em, .Lfunc_end4-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt13random_deviceD2Ev,"axG",@progbits,_ZNSt13random_deviceD2Ev,comdat
	.weak	_ZNSt13random_deviceD2Ev # -- Begin function _ZNSt13random_deviceD2Ev
	.p2align	4, 0x90
	.type	_ZNSt13random_deviceD2Ev,@function
_ZNSt13random_deviceD2Ev:               # @_ZNSt13random_deviceD2Ev
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
.Ltmp11:
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp12:
	jmp	.LBB5_1
.LBB5_1:
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB5_2:
.Ltmp13:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -12(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end5:
	.size	_ZNSt13random_deviceD2Ev, .Lfunc_end5-_ZNSt13random_deviceD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp11-.Lfunc_begin1   # >> Call Site 1 <<
	.long	.Ltmp12-.Ltmp11         #   Call between .Ltmp11 and .Ltmp12
	.long	.Ltmp13-.Lfunc_begin1   #     jumps to .Ltmp13
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$312, 2496(%rdi)        # imm = 0x138
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	jb	.LBB6_2
# %bb.1:
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
.LBB6_2:
	movabsq	$-2270628950310912, %rax # imm = 0xFFF7EEE000000000
	movabsq	$8202884508482404352, %rcx # imm = 0x71D67FFFEDA60000
	movabsq	$6148914691236517205, %rdx # imm = 0x5555555555555555
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	2496(%rsi), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 2496(%rsi)
	movq	(%rsi,%rdi,8), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	shrq	$29, %rdi
	andq	%rdx, %rdi
	xorq	-16(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdx
	shlq	$17, %rdx
	andq	%rcx, %rdx
	xorq	-16(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rcx
	shlq	$37, %rcx
	andq	%rax, %rcx
	xorq	-16(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rax
	shrq	$43, %rax
	xorq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv, .Lfunc_end6-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _ZL21CallApiFunctionCreatePv
	.type	_ZL21CallApiFunctionCreatePv,@function
_ZL21CallApiFunctionCreatePv:           # @_ZL21CallApiFunctionCreatePv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$_ZSt4cout, %rax
	movabsq	$.L.str.6, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEm
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	PtrMemArray(,%rdi,8), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	_Z17ApiCreateFunctionPvm
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB7_2
# %bb.1:
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.7, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEm
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB7_3
.LBB7_2:
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.9, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEm
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB7_3:
	movslq	-20(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_ZL21CallApiFunctionCreatePv, .Lfunc_end7-_ZL21CallApiFunctionCreatePv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _ZL22CallApiFunctionDestroyPv
	.type	_ZL22CallApiFunctionDestroyPv,@function
_ZL22CallApiFunctionDestroyPv:          # @_ZL22CallApiFunctionDestroyPv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$_ZSt4cout, %rax
	movabsq	$.L.str.10, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEm
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	PtrMemArray(,%rdi,8), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	_Z18ApiDestroyFunctionPvm
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB8_2
# %bb.1:
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.11, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEm
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB8_3
.LBB8_2:
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.12, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEm
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB8_3:
	movslq	-20(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_ZL22CallApiFunctionDestroyPv, .Lfunc_end8-_ZL22CallApiFunctionDestroyPv
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
.Lfunc_end9:
	.size	__clang_call_terminate, .Lfunc_end9-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, (%rsi)
	movq	$1, -24(%rbp)
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$312, -24(%rbp)         # imm = 0x138
	jae	.LBB10_4
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	movabsq	$6364136223846793005, %rax # imm = 0x5851F42D4C957F2D
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	shrq	$62, %rcx
	xorq	-32(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	imulq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_1
.LBB10_4:
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	$312, 2496(%rax)        # imm = 0x138
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm, .Lfunc_end10-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE4seedEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_ # -- Begin function _ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	.p2align	4, 0x90
	.type	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_,@function
_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_: # @_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_, .Lfunc_end11-_ZNSt8__detail5__modImLm0ELm1ELm0EEET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_ # -- Begin function _ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
	.p2align	4, 0x90
	.type	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_,@function
_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_: # @_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_, .Lfunc_end12-_ZNSt8__detail5__modImLm312ELm1ELm0EEET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm # -- Begin function _ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	.p2align	4, 0x90
	.type	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm,@function
_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm: # @_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	shlq	$0, %rdi
	addq	$0, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm, .Lfunc_end13-_ZNSt8__detail4_ModImLm0ELm1ELm0ELb1ELb0EE6__calcEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm # -- Begin function _ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	.p2align	4, 0x90
	.type	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm,@function
_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm: # @_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$312, %eax              # imm = 0x138
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	shlq	$0, %rdi
	addq	$0, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: def %rdx killed %edx
	divq	%rcx
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm, .Lfunc_end14-_ZNSt8__detail4_ModImLm312ELm1ELm0ELb1ELb1EE6__calcEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv # -- Begin function _ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,@function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv: # @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$-2147483648, -16(%rbp) # imm = 0x80000000
	movq	$2147483647, -24(%rbp)  # imm = 0x7FFFFFFF
	movq	$0, -32(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$156, -32(%rbp)
	jae	.LBB15_4
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$-5403634167711393303, %rdx # imm = 0xB5026F5AA96619E9
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi,%rsi,8), %rsi
	andq	$-2147483648, %rsi      # imm = 0x80000000
	movq	-32(%rbp), %r8
	movq	8(%rdi,%r8,8), %r8
	andq	$2147483647, %r8        # imm = 0x7FFFFFFF
	orq	%r8, %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	1248(%rdi,%rsi,8), %rsi
	movq	-40(%rbp), %r8
	shrq	$1, %r8
	xorq	%r8, %rsi
	movq	-40(%rbp), %r8
	andq	$1, %r8
	cmpq	$0, %r8
	cmovneq	%rdx, %rcx
	xorq	%rcx, %rsi
	movq	-32(%rbp), %rcx
	movq	%rsi, (%rdi,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB15_1
.LBB15_4:
	movq	$156, -48(%rbp)
.LBB15_5:                               # =>This Inner Loop Header: Depth=1
	cmpq	$311, -48(%rbp)         # imm = 0x137
	jae	.LBB15_8
# %bb.6:                                #   in Loop: Header=BB15_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$-5403634167711393303, %rdx # imm = 0xB5026F5AA96619E9
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi,%rsi,8), %rsi
	andq	$-2147483648, %rsi      # imm = 0x80000000
	movq	-48(%rbp), %r8
	movq	8(%rdi,%r8,8), %r8
	andq	$2147483647, %r8        # imm = 0x7FFFFFFF
	orq	%r8, %rsi
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-1248(%rdi,%rsi,8), %rsi
	movq	-56(%rbp), %r8
	shrq	$1, %r8
	xorq	%r8, %rsi
	movq	-56(%rbp), %r8
	andq	$1, %r8
	cmpq	$0, %r8
	cmovneq	%rdx, %rcx
	xorq	%rcx, %rsi
	movq	-48(%rbp), %rcx
	movq	%rsi, (%rdi,%rcx,8)
# %bb.7:                                #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB15_5
.LBB15_8:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$-5403634167711393303, %rdx # imm = 0xB5026F5AA96619E9
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	2488(%rsi), %rdi
	andq	$-2147483648, %rdi      # imm = 0x80000000
	movq	(%rsi), %r8
	andq	$2147483647, %r8        # imm = 0x7FFFFFFF
	orq	%r8, %rdi
	movq	%rdi, -64(%rbp)
	movq	1240(%rsi), %rdi
	movq	-64(%rbp), %r8
	shrq	$1, %r8
	xorq	%r8, %rdi
	movq	-64(%rbp), %r8
	andq	$1, %r8
	cmpq	$0, %r8
	cmovneq	%rdx, %rcx
	xorq	%rcx, %rdi
	movq	%rdi, 2488(%rsi)
	movq	$0, 2496(%rsi)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, .Lfunc_end15-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_cppAtomics.cpp
	.type	_GLOBAL__sub_I_cppAtomics.cpp,@function
_GLOBAL__sub_I_cppAtomics.cpp:          # @_GLOBAL__sub_I_cppAtomics.cpp
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
.Lfunc_end16:
	.size	_GLOBAL__sub_I_cppAtomics.cpp, .Lfunc_end16-_GLOBAL__sub_I_cppAtomics.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	PtrMemArray,@object     # @PtrMemArray
	.bss
	.globl	PtrMemArray
	.p2align	4
PtrMemArray:
	.zero	512
	.size	PtrMemArray, 512

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Hello World::Helgrind Test\n"
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"default"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Creating Threads\n"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Failed to create thread #"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Joining Threads\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Calling API CREATE on slot #"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"API CREATE Failed on slot #"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	": Resource Not Available\n"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"API CREATE Complete on slot #"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Calling API DESTROY on slot #"
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"API DESTROY Failed on slot #"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"API DESTROY Complete on slot #"
	.size	.L.str.12, 31

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_cppAtomics.cpp

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
