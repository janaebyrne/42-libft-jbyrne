# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jbyrne <jbyrne@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/22 15:07:07 by jbyrne            #+#    #+#              #
#    Updated: 2023/12/04 19:16:33 by jbyrne           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Werror -Wextra

SRCS =  ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
       ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
       ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c \
       ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c  \
	   ft_strjoin.c ft_substr.c ft_strlcpy.c ft_strtrim.c ft_itoa.c ft_split.c \
	   ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
	   ft_calloc.c ft_strdup.c \

OBJS = $(SRCS:.c=.o)

NAME = libft.a

all: $(NAME)

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run: $(NAME)
	$(CC) $(CFLAGS) main.c libft.a && ./a.out

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re

