# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chayashi <caarlostol@student.42.rio>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/29 19:23:58 by chayashi          #+#    #+#              #
#    Updated: 2023/11/30 20:11:31 by chayashi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libftprintf.a
FLAGS		=	-Werror -Wextra -Wall
HEADER		=	ft_printf.h

SRC		=	ft_printf.c \
			ft_functions.c \

OBJ		=	$(SRC:.c=.o)

all:			$(NAME)

.c.o:
			cc $(FLAGS) -I . -c $< -o $@

$(NAME):		$(OBJ)
				ar rc $(NAME) $(OBJ)

clean:
				rm -rf $(OBJ)

fclean:			clean
				rm -rf $(NAME)

re:			fclean all
