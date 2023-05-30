MY_SOURCES = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c	\
	     ft_toupper.c ft_tolower.c						\
	     ft_strlen.c  ft_strchr.c  ft_strrchr.c ft_strncmp.c		\
	     ft_memset.c  ft_memcpy.c  ft_memmove.c ft_memchr.c  ft_memcmp.c	\
	     ft_bzero.c   ft_calloc.c						\
	     ft_strlcpy.c ft_strlcat.c ft_strnstr.c ft_atoi.c ft_strdup.c	\
										\
	     ft_substr.c  ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c	\
	     ft_strmapi.c ft_striteri.c						\
	     ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

MY_OBJECTS =  $(MY_SOURCES:.c=.o)

BONUS_SRCS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c		\
		   ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c	\
		   ft_lstmap.c

BONUS_OBJECTS = $(BONUS_SRCS:.c=.o)

INCLUDES = ./

FLAGS = -Wall -Wextra -Werror -I $(INCLUDES)

NAME = libft.a

all: $(NAME)

.c.o:
	gcc $(FLAGS) -c $< -o $(<:.c=.o)

$(NAME): $(MY_OBJECTS)
	ar rcs $(NAME) $(MY_OBJECTS)

clean:
	rm -f $(MY_OBJECTS) $(BONUS_OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

bonus: $(MY_OBJECTS) $(BONUS_OBJECTS)
	ar rcs $(NAME) $(MY_OBJECTS) $(BONUS_OBJECTS)

.PHONY: all clean fclean re bonus
