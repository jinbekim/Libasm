section .text
	global _ft_strlen
_ft_strlen :
	mov	rax, 0; int rax = 0
	jmp	compare_loop
compare_loop :
	cmp	[rdi + rax], 0
	je	done; str[rax] == 0
	inc	rax; rax++
	jmp	compare_loop
done :
	ret; return rax;
