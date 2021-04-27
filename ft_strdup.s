	global _ft_strdup; char *ft_strdup(char *s1)
	extern _ft_strcpy; char *ft_strcpy(char *s1, char *s2)
	extern _ft_strlen; char *ft_strlen(char *s1)
	extern _malloc; void *malloc(int size)
segment .text

_ft_strdup :
	push	rcx
	push	rsi
	call	_ft_strlen
	inc		rax; include '\0'
	push	rdi; backup src
	mov		rdi, rax
	call	_malloc
	pop		rsi; restore src
	cmp		rax, 0x0; if (ptr == NULL)
	je		null_end
	mov		rdi, rax; prepare cpy
	call	_ft_strcpy




null_end :
	pop	rsi
	pop	rcx
	ret
