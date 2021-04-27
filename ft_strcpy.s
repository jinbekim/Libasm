	global _ft_strcpy; int ft_strcpy(char *s1, char *s2)

segment .text
_ft_strcpy :
	push rcx; backup register data
	push rbx; backup register data
	sub	rcx, rcx; index i = 0
	cmp	rsi, 0; if (!s2)
	jne	loop_cond; start loop
cpy_end :
	mov rax, rdi
	pop rcx
	pop rbx
	ret
loop_cond :; while (!(*s2))
	mov	bl, byte [rsi + rcx]
	cmp bl, 0; if (s2[i] == '\0')
	je	cpy_end
	jmp	cpy_loop

cpy_loop :
	mov	bl, byte [rsi + rcx]
	mov	byte [rdi + rcx], bl; s1[i] = s2[i]
	inc	rcx; i++
	jmp	loop_cond

