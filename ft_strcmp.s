section .text :
	global _ft_strcmp

_ft_strcmp :
	cmp	[rdi + rax], [rsi + rax];
	jne	done;
	je	increment
	jmp	_ft_strcmp;

increment :
	inc rax;

done :
	ret
