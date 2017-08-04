	.reference	___bb_blitz_blitz
	.reference	___bb_prefixsuffix_prefixsuffix
	.reference	___bb_stringmap_stringmap
	.reference	__brl_map_TMap_Clear
	.reference	__brl_map_TMap_Contains
	.reference	__brl_map_TMap_Copy
	.reference	__brl_map_TMap_Delete
	.reference	__brl_map_TMap_Insert
	.reference	__brl_map_TMap_IsEmpty
	.reference	__brl_map_TMap_Keys
	.reference	__brl_map_TMap_New
	.reference	__brl_map_TMap_ObjectEnumerator
	.reference	__brl_map_TMap_Remove
	.reference	__brl_map_TMap_ValueForKey
	.reference	__brl_map_TMap_Values
	.reference	__brl_map_TMap__DeleteFixup
	.reference	__brl_map_TMap__FindNode
	.reference	__brl_map_TMap__FirstNode
	.reference	__brl_map_TMap__InsertFixup
	.reference	__brl_map_TMap__LastNode
	.reference	__brl_map_TMap__RemoveNode
	.reference	__brl_map_TMap__RotateLeft
	.reference	__brl_map_TMap__RotateRight
	.reference	_bbAppArgs
	.reference	_bbArrayNew1D
	.reference	_bbEmptyArray
	.reference	_bbEmptyString
	.reference	_bbEnd
	.reference	_bbFloatPow
	.reference	_bbGCFree
	.reference	_bbIntAbs
	.reference	_bbIntToLong
	.reference	_bbLaunchDir
	.reference	_bbLongToFloat
	.reference	_bbNullObject
	.reference	_bbObjectClass
	.reference	_bbObjectCompare
	.reference	_bbObjectCtor
	.reference	_bbObjectDowncast
	.reference	_bbObjectFree
	.reference	_bbObjectNew
	.reference	_bbObjectRegisterType
	.reference	_bbObjectReserved
	.reference	_bbObjectSendMessage
	.reference	_bbObjectToString
	.reference	_bbStringClass
	.reference	_bbStringCompare
	.reference	_bbStringConcat
	.reference	_bbStringFromChar
	.reference	_bbStringFromInt
	.reference	_bbStringToInt
	.reference	_bbStringToUpper
	.reference	_bbWriteStdout
	.reference	_brl_bank_CreateBank
	.reference	_brl_bank_PeekByte
	.reference	_brl_bank_PokeLong
	.reference	_brl_blitz_NullFunctionError
	.reference	_brl_filesystem_ChangeDir
	.reference	_brl_filesystem_CloseFile
	.reference	_brl_filesystem_ExtractExt
	.reference	_brl_filesystem_ReadFile
	.reference	_brl_filesystem_StripAll
	.reference	_brl_linkedlist_CountList
	.reference	_brl_linkedlist_ListAddLast
	.reference	_brl_linkedlist_TList
	.reference	_brl_map_MapContains
	.reference	_brl_map_MapInsert
	.reference	_brl_map_MapValueForKey
	.reference	_brl_map_TMap
	.reference	_brl_retro_Hex
	.reference	_brl_retro_Right
	.reference	_brl_retro_Upper
	.reference	_brl_standardio_Input
	.reference	_brl_standardio_Print
	.reference	_brl_stream_Eof
	.reference	_brl_stream_ReadByte
	.reference	_tricky_units_mkl_version_MKL_Lic
	.reference	_tricky_units_mkl_version_MKL_NewestVersion
	.reference	_tricky_units_mkl_version_MKL_Version
	.reference	_tricky_units_prefixsuffix_Prefixed
	.reference	_tricky_units_stringmap_StringMap
	.globl	__bb_main
	.globl	__bb_tit_Delete
	.globl	__bb_tit_New
	.globl	__bb_titmap_Delete
	.globl	__bb_titmap_New
	.globl	__bb_titmap_add
	.globl	__bb_titmap_execute
	.globl	_bb_Chat
	.globl	_bb_Code
	.globl	_bb_Memory
	.globl	_bb_Parse
	.globl	_bb_Pointer
	.globl	_bb_check
	.globl	_bb_curl
	.globl	_bb_it_bteshow
	.globl	_bb_it_cash
	.globl	_bb_it_casino
	.globl	_bb_it_check
	.globl	_bb_it_chrshow
	.globl	_bb_it_diploma
	.globl	_bb_it_money
	.globl	_bb_it_next
	.globl	_bb_it_viagra
	.globl	_bb_it_win
	.globl	_bb_itmap
	.globl	_bb_labels
	.globl	_bb_last
	.globl	_bb_tit
	.globl	_bb_titmap
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$16,%esp
	cmpl	$0,_145
	je	_146
	mov	$0,%eax
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_146:
	movl	$1,_145
	call	___bb_blitz_blitz
	call	___bb_stringmap_stringmap
	call	___bb_prefixsuffix_prefixsuffix
	movl	$_bb_tit,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_titmap,(%esp)
	call	_bbObjectRegisterType
	movl	$_4,4(%esp)
	movl	$_3,(%esp)
	call	_tricky_units_mkl_version_MKL_Version
	movl	$_5,4(%esp)
	movl	$_3,(%esp)
	call	_tricky_units_mkl_version_MKL_Lic
	movl	_bbAppArgs,%eax
	cmpl	$2,20(%eax)
	jge	_109
	call	_tricky_units_mkl_version_MKL_NewestVersion
	movl	%eax,4(%esp)
	movl	$_6,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_standardio_Print
	movl	$_7,(%esp)
	call	_brl_standardio_Print
	movl	$_8,(%esp)
	call	_brl_standardio_Print
	movl	$_1,(%esp)
	call	_brl_standardio_Print
	movl	_bbAppArgs,%eax
	movl	24(%eax),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_StripAll
	movl	%eax,4(%esp)
	movl	$_9,(%esp)
	call	_bbStringConcat
	movl	$_10,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_standardio_Print
	call	_bbEnd
_109:
	movl	_bbLaunchDir,%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_ChangeDir
	movl	_112,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_113
	movl	$1024,4(%esp)
	movl	$_110,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	%eax,_bb_Memory
	orl	$1,_112
_113:
	movl	_112,%eax
	and	$2,%eax
	cmp	$0,%eax
	jne	_115
	movl	$_tricky_units_stringmap_StringMap,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_labels
	orl	$2,_112
_115:
	movl	_112,%eax
	and	$4,%eax
	cmp	$0,%eax
	jne	_117
	movl	$_bb_titmap,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_itmap
	orl	$4,_112
_117:
	movl	_bb_itmap,%eax
	movl	$_bb_it_chrshow,8(%esp)
	movl	$_22,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*124(%eax)
	movl	_bb_itmap,%eax
	movl	$_bb_it_bteshow,8(%esp)
	movl	$_23,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*124(%eax)
	movl	_bb_itmap,%eax
	movl	$_bb_it_win,8(%esp)
	movl	$_24,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*124(%eax)
	movl	_bb_itmap,%eax
	movl	$_bb_it_casino,8(%esp)
	movl	$_25,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*124(%eax)
	movl	_bb_itmap,%eax
	movl	$_bb_it_check,8(%esp)
	movl	$_26,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*124(%eax)
	movl	_bb_itmap,%eax
	movl	$_bb_it_next,8(%esp)
	movl	$_27,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*124(%eax)
	movl	_bb_itmap,%eax
	movl	$_bb_it_viagra,8(%esp)
	movl	$_34,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*124(%eax)
	movl	_bb_itmap,%eax
	movl	$_bb_it_diploma,8(%esp)
	movl	$_38,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*124(%eax)
	movl	_bb_itmap,%eax
	movl	$_bb_it_money,8(%esp)
	movl	$_39,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*124(%eax)
	movl	_bb_itmap,%eax
	movl	$_bb_it_cash,8(%esp)
	movl	$_40,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*124(%eax)
	call	_bb_Parse
	jmp	_41
_43:
	movl	_bb_Code,%edx
	movl	_bb_curl,%eax
	movl	24(%edx,%eax,4),%ebx
	movl	$_44,4(%esp)
	movl	_bb_curl,%eax
	movl	%eax,(%esp)
	call	_bbStringFromInt
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_bb_Chat
	cmpl	$0,_bb_check
	jne	_129
	addl	$1,_bb_curl
	jmp	_130
_129:
	movl	%ebx,4(%esp)
	movl	_bb_labels,%eax
	movl	%eax,(%esp)
	call	_brl_map_MapContains
	cmp	$0,%eax
	je	_131
	movl	_bb_labels,%eax
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*120(%eax)
	movl	%eax,(%esp)
	call	_bbStringToInt
	movl	%eax,_bb_curl
	jmp	_133
_131:
	movl	$0,8(%esp)
	movl	$_45,4(%esp)
	movl	%ebx,(%esp)
	call	_tricky_units_prefixsuffix_Prefixed
	cmp	$0,%eax
	je	_134
	movl	_bb_last,%eax
	movl	8(%eax),%eax
	cmp	$0,%eax
	je	_135
	movl	$_26,4(%esp)
	movl	_bb_last,%eax
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	setne	%al
	movzbl	%al,%eax
_135:
	cmp	$0,%eax
	je	_137
	movl	8(%ebx),%eax
	sub	$1,%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	call	_brl_retro_Right
	movl	%eax,(%esp)
	call	_bbStringToInt
	mov	$1,%ebx
	mov	%eax,%esi
	jmp	_140
_48:
	movl	_bb_itmap,%edx
	movl	_bb_last,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	(%edx),%eax
	calll	*120(%eax)
_46:
	add	$1,%ebx
_140:
	cmp	%esi,%ebx
	jl	_48
_47:
_137:
	addl	$1,_bb_curl
	jmp	_143
_134:
	movl	_bb_itmap,%eax
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*120(%eax)
	addl	$1,_bb_curl
_143:
_133:
_130:
_41:
	movl	_bb_Code,%eax
	movl	20(%eax),%eax
	cmpl	%eax,_bb_curl
	jl	_43
_42:
	mov	$0,%eax
	jmp	_61
_61:
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_Chat:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%edx
	xor	%eax,%eax
	cmp	$0,%eax
	je	_147
	movl	%edx,4(%esp)
	movl	$_11,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_standardio_Print
_147:
	mov	$0,%eax
	jmp	_64
_64:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_Parse:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	_bbAppArgs,%eax
	movl	4+24(%eax),%ebx
	movl	%ebx,(%esp)
	call	_brl_filesystem_ExtractExt
	cmpl	$0,8(%eax)
	jne	_149
	movl	$_12,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringConcat
	mov	%eax,%ebx
_149:
	movl	%ebx,4(%esp)
	movl	$_13,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_bb_Chat
	movl	%ebx,(%esp)
	call	_brl_filesystem_ReadFile
	mov	%eax,%esi
	mov	$_bbEmptyString,%ebx
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	movl	%eax,-16(%ebp)
	movb	$0,-4(%ebp)
	jmp	_14
_16:
	movl	%esi,(%esp)
	call	_brl_stream_ReadByte
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	cmp	$13,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_154
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	cmp	$10,%eax
	sete	%al
	movzbl	%al,%eax
_154:
	cmp	$0,%eax
	jne	_156
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	cmp	$9,%eax
	sete	%al
	movzbl	%al,%eax
_156:
	cmp	$0,%eax
	jne	_158
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	cmp	$32,%eax
	sete	%al
	movzbl	%al,%eax
_158:
	cmp	$0,%eax
	je	_160
	movl	%ebx,(%esp)
	call	_brl_retro_Upper
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_linkedlist_ListAddLast
	mov	$_1,%ebx
	jmp	_161
_160:
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringConcat
	mov	%eax,%ebx
_161:
_14:
	movl	%esi,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	je	_16
_15:
	movl	%esi,(%esp)
	call	_brl_filesystem_CloseFile
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_linkedlist_CountList
	movl	%eax,4(%esp)
	movl	$_162,(%esp)
	call	_bbArrayNew1D
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	_bb_Code,%eax
	decl	4(%eax)
	jnz	_166
	movl	%eax,(%esp)
	call	_bbGCFree
_166:
	movl	%ebx,_bb_Code
	mov	$0,%edi
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	movl	%eax,-12(%ebp)
	jmp	_17
_19:
	movl	-12(%ebp),%eax
	movl	$_bbStringClass,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	mov	%eax,%ebx
	cmp	$_bbNullObject,%ebx
	je	_17
	mov	%ebx,%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	_bb_Code,%eax
	movl	24(%eax,%edi,4),%eax
	decl	4(%eax)
	jnz	_177
	movl	%eax,(%esp)
	call	_bbGCFree
_177:
	movl	_bb_Code,%eax
	movl	%esi,24(%eax,%edi,4)
	add	$1,%edi
	movl	$0,8(%esp)
	movl	$_20,4(%esp)
	movl	%ebx,(%esp)
	call	_tricky_units_prefixsuffix_Prefixed
	cmp	$0,%eax
	je	_178
	movl	%edi,(%esp)
	call	_brl_retro_Hex
	movl	%eax,4(%esp)
	movl	$_21,(%esp)
	call	_bbStringConcat
	movl	%eax,8(%esp)
	movl	8(%ebx),%eax
	sub	$7,%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	call	_brl_retro_Right
	movl	%eax,4(%esp)
	movl	_bb_labels,%eax
	movl	%eax,(%esp)
	call	_brl_map_MapInsert
_178:
_17:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_19
_18:
	mov	$0,%eax
	jmp	_66
_66:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_tit_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_tit,(%ebx)
	movl	$_brl_blitz_NullFunctionError,8(%ebx)
	mov	$0,%eax
	jmp	_69
_69:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_tit_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_72:
	mov	$0,%eax
	jmp	_179
_179:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_titmap_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	__brl_map_TMap_New
	movl	$_bb_titmap,(%ebx)
	mov	$0,%eax
	jmp	_75
_75:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_titmap_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
_78:
	movl	$_brl_map_TMap,(%eax)
	movl	%eax,(%esp)
	call	__brl_map_TMap_Delete
	mov	$0,%eax
	jmp	_180
_180:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_titmap_execute:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$16,%esp
	movl	8(%ebp),%esi
	movl	12(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbStringToUpper
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	call	_brl_map_MapValueForKey
	movl	$_bb_tit,4(%esp)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	cmp	$_bbNullObject,%eax
	je	_182
	calll	*8(%eax)
	incl	4(%ebx)
	movl	_bb_last,%eax
	decl	4(%eax)
	jnz	_186
	movl	%eax,(%esp)
	call	_bbGCFree
_186:
	movl	%ebx,_bb_last
_182:
	mov	$0,%eax
	jmp	_82
_82:
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_titmap_add:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	16(%ebp),%ebx
	movl	$_bb_tit,(%esp)
	call	_bbObjectNew
	movl	%ebx,8(%eax)
	movl	%eax,8(%esp)
	movl	%esi,(%esp)
	call	_bbStringToUpper
	movl	%eax,4(%esp)
	movl	%edi,(%esp)
	call	_brl_map_MapInsert
	mov	$0,%eax
	jmp	_87
_87:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_it_chrshow:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	_bb_Memory,%edx
	movl	_bb_Pointer,%eax
	movzbl	24(%edx,%eax,1),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbWriteStdout
	mov	$0,%eax
	jmp	_89
_89:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_it_bteshow:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	_bb_Memory,%edx
	movl	_bb_Pointer,%eax
	movzbl	24(%edx,%eax,1),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromInt
	movl	%eax,(%esp)
	call	_bbWriteStdout
	mov	$0,%eax
	jmp	_91
_91:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_it_win:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	_bb_Memory,%ecx
	movl	_bb_Pointer,%edx
	movl	_bb_Memory,%ebx
	movl	_bb_Pointer,%eax
	movzbl	24(%ebx,%eax,1),%eax
	mov	%eax,%eax
	add	$1,%eax
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%ecx,%edx,1)
	mov	$0,%eax
	jmp	_93
_93:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_it_casino:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	_bb_Memory,%ecx
	movl	_bb_Pointer,%edx
	movl	_bb_Memory,%ebx
	movl	_bb_Pointer,%eax
	movzbl	24(%ebx,%eax,1),%eax
	mov	%eax,%eax
	sub	$1,%eax
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%ecx,%edx,1)
	mov	$0,%eax
	jmp	_95
_95:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_it_check:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	_bb_Memory,%edx
	movl	_bb_Pointer,%eax
	movzbl	24(%edx,%eax,1),%eax
	mov	%eax,%eax
	movl	%eax,_bb_check
	mov	$0,%eax
	jmp	_97
_97:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_it_next:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	$_1,(%esp)
	call	_brl_standardio_Print
	mov	$0,%eax
	jmp	_99
_99:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_it_viagra:
	push	%ebp
	mov	%esp,%ebp
	sub	$36,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	$_2,(%esp)
	call	_brl_standardio_Input
	movl	%eax,(%esp)
	call	_bbStringToInt
	movl	%eax,(%esp)
	call	_bbIntAbs
	movl	%eax,4(%esp)
	lea	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbIntToLong
	movl	_bb_Pointer,%edi
	movl	$1,-16(%ebp)
	movl	$0,-12(%ebp)
	mov	$1,%ebx
	jmp	_192
_30:
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbLongToFloat
	fstpl	-24(%ebp)
	movl	%ebx,-36(%ebp)
	fildl	-36(%ebp)
	fstpl	8(%esp)
	fldl	_256
	fstpl	(%esp)
	call	_bbFloatPow
	fldl	-24(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_193
	mov	%ebx,%eax
	add	$1,%eax
	movl	%eax,4(%esp)
	lea	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbIntToLong
_193:
_28:
	add	$1,%ebx
_192:
	cmp	$7,%ebx
	jl	_30
_29:
	movl	$8,(%esp)
	call	_brl_bank_CreateBank
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PokeLong
	mov	$0,%esi
	movl	-16(%ebp),%eax
	movl	%eax,-32(%ebp)
	jmp	_196
_33:
	movl	_bb_Memory,%ebx
	movl	%esi,4(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PeekByte
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%ebx,%edi,1)
	add	$1,%edi
	movl	_bb_Memory,%eax
	cmpl	20(%eax),%edi
	jl	_198
	mov	$0,%edi
_198:
_31:
	add	$1,%esi
_196:
	cmpl	-32(%ebp),%esi
	jl	_33
_32:
	mov	$0,%eax
	jmp	_101
_101:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_it_diploma:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	$_2,(%esp)
	call	_brl_standardio_Input
	mov	%eax,%esi
	movl	_bb_Pointer,%ebx
	mov	$0,%ecx
	movl	8(%esi),%edi
	jmp	_202
_37:
	movl	_bb_Memory,%edx
	movzwl	12(%esi,%ecx,2),%eax
	mov	%eax,%eax
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%edx,%ebx,1)
	add	$1,%ebx
	movl	_bb_Memory,%eax
	cmpl	20(%eax),%ebx
	jl	_204
	mov	$0,%ebx
_204:
_35:
	add	$1,%ecx
_202:
	cmp	%edi,%ecx
	jl	_37
_36:
	mov	$0,%eax
	jmp	_103
_103:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_it_money:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	addl	$1,_bb_Pointer
	movl	_bb_Memory,%eax
	movl	20(%eax),%eax
	cmpl	%eax,_bb_Pointer
	jl	_205
	movl	$0,_bb_Pointer
_205:
	mov	$0,%eax
	jmp	_105
_105:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_it_cash:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	subl	$1,_bb_Pointer
	cmpl	$0,_bb_Pointer
	jge	_206
	movl	_bb_Memory,%eax
	movl	20(%eax),%eax
	sub	$1,%eax
	movl	%eax,_bb_Pointer
_206:
	mov	$0,%eax
	jmp	_107
_107:
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_145:
	.long	0
_50:
	.asciz	"tit"
_51:
	.asciz	"f"
_52:
	.asciz	"()i"
_53:
	.asciz	"New"
_54:
	.asciz	"Delete"
	.align	4
_49:
	.long	2
	.long	_50
	.long	3
	.long	_51
	.long	_52
	.long	8
	.long	6
	.long	_53
	.long	_52
	.long	16
	.long	6
	.long	_54
	.long	_52
	.long	20
	.long	0
	.align	4
_bb_tit:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_49
	.long	12
	.long	__bb_tit_New
	.long	__bb_tit_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_56:
	.asciz	"titmap"
_57:
	.asciz	"execute"
_58:
	.asciz	"($)i"
_59:
	.asciz	"add"
_60:
	.asciz	"($,()i)i"
	.align	4
_55:
	.long	2
	.long	_56
	.long	6
	.long	_53
	.long	_52
	.long	16
	.long	6
	.long	_54
	.long	_52
	.long	20
	.long	6
	.long	_57
	.long	_58
	.long	120
	.long	6
	.long	_59
	.long	_60
	.long	124
	.long	0
	.align	4
_bb_titmap:
	.long	_brl_map_TMap
	.long	_bbObjectFree
	.long	_55
	.long	12
	.long	__bb_titmap_New
	.long	__bb_titmap_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__brl_map_TMap_Clear
	.long	__brl_map_TMap_IsEmpty
	.long	__brl_map_TMap_Insert
	.long	__brl_map_TMap_Contains
	.long	__brl_map_TMap_ValueForKey
	.long	__brl_map_TMap_Remove
	.long	__brl_map_TMap_Keys
	.long	__brl_map_TMap_Values
	.long	__brl_map_TMap_Copy
	.long	__brl_map_TMap_ObjectEnumerator
	.long	__brl_map_TMap__FirstNode
	.long	__brl_map_TMap__LastNode
	.long	__brl_map_TMap__FindNode
	.long	__brl_map_TMap__RemoveNode
	.long	__brl_map_TMap__InsertFixup
	.long	__brl_map_TMap__RotateLeft
	.long	__brl_map_TMap__RotateRight
	.long	__brl_map_TMap__DeleteFixup
	.long	__bb_titmap_execute
	.long	__bb_titmap_add
	.align	4
_4:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	49,55,46,48,56,46,48,52
	.align	4
_3:
	.long	_bbStringClass
	.long	2147483647
	.long	36
	.short	83,112,97,109,32,80,114,111,103,114,97,109,109,105,110,103
	.short	32,76,97,110,103,117,97,103,101,32,45,32,83,112,97,109
	.short	46,98,109,120
	.align	4
_5:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	90,76,105,98,32,76,105,99,101,110,115,101
	.align	4
_6:
	.long	_bbStringClass
	.long	2147483647
	.long	36
	.short	83,112,97,109,32,80,114,111,103,114,97,109,109,105,110,103
	.short	32,76,97,110,103,117,97,103,101,32,45,32,118,101,114,115
	.short	105,111,110,32
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	22
	.short	83,101,116,32,117,112,32,98,121,32,74,101,114,111,101,110
	.short	32,66,114,111,107,115
	.align	4
_8:
	.long	_bbStringClass
	.long	2147483647
	.long	50
	.short	84,114,121,32,116,111,32,109,97,107,101,32,112,114,111,103
	.short	114,97,109,109,105,110,103,32,99,111,100,101,32,108,111,111
	.short	107,32,108,105,107,101,32,115,112,97,109,32,102,111,108,107
	.short	115,33
	.align	4
_1:
	.long	_bbStringClass
	.long	2147483647
	.long	0
	.align	4
_9:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	85,115,97,103,101,58,32
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	17
	.short	32,60,112,114,111,103,114,97,109,62,91,46,115,112,97,109
	.short	93
	.align	4
_112:
	.long	0
_110:
	.asciz	"b"
	.align	4
_bb_Memory:
	.long	_bbEmptyArray
	.align	4
_bb_Pointer:
	.long	0
	.align	4
_bb_labels:
	.long	_bbNullObject
	.align	4
_bb_curl:
	.long	0
	.align	4
_bb_check:
	.long	1
	.align	4
_bb_last:
	.long	_1
	.align	4
_bb_Code:
	.long	_bbEmptyArray
	.align	4
_bb_itmap:
	.long	_bbNullObject
	.align	4
_22:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	66,69,84
	.align	4
_23:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	83,72,79,87
	.align	4
_24:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	87,73,78
	.align	4
_25:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	67,65,83,73,78,79
	.align	4
_26:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	67,72,69,67,75
	.align	4
_27:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	78,69,88,84
	.align	4
_34:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	86,73,65,71,82,65
	.align	4
_38:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	68,73,80,76,79,77,65
	.align	4
_39:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	77,79,78,69,89
	.align	4
_40:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	67,65,83,72
	.align	4
_44:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	62,32
	.align	4
_45:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	88
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	67,72,65,84,58,32
	.align	4
_12:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	46,115,112,97,109
	.align	4
_13:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	80,97,114,115,105,110,103,58,32
_162:
	.asciz	"$"
	.align	4
_20:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	72,84,84,80,58,47,47
	.align	4
_21:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	36
	.align	4
_2:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	62
	.align	8
_256:
	.long	0x0,0x40700000
