# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frcastil <frcastil@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/06 10:55:58 by frcastil          #+#    #+#              #
#    Updated: 2023/06/13 11:51:31 by frcastil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SOURCE = ft_printchar.c\
	ft_printdec.c\
	ft_printhexa.c\
	ft_printptr.c\
	ft_printstr.c\
	ft_printunsigned.c\
	ft_putchar.c\
	ft_putnbr.c\
	ft_printf.c

CC = gcc

CFLAGS = -Wall -Werror -Wextra

OBJECTS = $(SOURCE:.c=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
	@ar rcs $(NAME) $(OBJECTS)

$(OBJECTS): $(SOURCE)
	$(CC) $(CFLAGS) -c $(SOURCE)

clean:
	@rm -f $(OBJECTS)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: re all clean fclean