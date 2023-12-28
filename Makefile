NAME = libftprintf.a

SRCS = ft_printf.c print_char_str.c print_hex_lowercase.c print_hex_uppercase.c print_number.c print_percent.c print_ptr.c print_unsigned.c

OBJS = $(SRCS:.c=.o)

HEADER = ft_printf.h

CC = gcc

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $@ $^

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean 
	all

.PHONY: all clean fclean re

