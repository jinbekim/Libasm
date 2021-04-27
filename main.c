#include <stdio.h>

int	ft_strcmp(char *s1, char *s2);
int	ft_strlen(char *s1);
char	*ft_strcpy(char *dest, char *src);
char	*ft_strdup(char *s1);

int	main(void)
{
	char s1[100] = "nothing happen";
	char s2[100] = "cpy succeed!";
	char *dup;
	ft_strcpy(s1, s2);
	printf("%s\n", s1);
	dup = ft_strdup("strdup succeed!");
	printf("%s\n", dup);
	int i = ft_strcmp("hi", "hi\n");
	int j = ft_strlen("hi");
	int x = ft_strlen("hi\n");
	printf("%d %d %d\n", i, j, x);
}
