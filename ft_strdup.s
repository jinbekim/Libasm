	global _ft_strdup; char *ft_strdup(char *s1)
	extern _malloc; void *malloc(int size)

segment .text

_ft_strdup :
	sub		rax, rax
	push	rcx; backup register
	push	rbx;
	cmp		rdi, 0; if (s1 == NULL)
	jne		len_init

end_return :
	pop	rbx
	pop	rcx
	ret

len_init :
	sub		rcx, rcx; int i = 0

len_count :
	mov		al, byte [rdi + rcx]
	inc		rcx; i++
	cmp		al, 0
	jne		len_count

malloc_init :
	push	rdi; backup s1
	mov		rdi, rcx; malloc(sizeof(char) * len)

malloc_call :
	call	_malloc

malloc_null_check :
	cmp		rax, 0; if (new_str == NULL)
	pop		rdi
	je		end_return

cpy_init :
	sub	rcx, rcx; int i = 0
	sub	rbx, rbx

cpy_loop :
	mov	bl, byte [rdi + rcx]
	mov	byte [rax + rcx], bl

cpy_end :
	cmp	bl, 0; if (src[i] == \0)
	je	end_return

cpy_inc :
	inc	rcx
	jmp	cpy_loop
