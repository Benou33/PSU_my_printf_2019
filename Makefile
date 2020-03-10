##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## Makefile
##

CC	=	gcc

LIB	=	lib/my/my_printf.c	\
		lib/my/my_printchar.c	\
		lib/my/my_putchar.c	\
		lib/my/my_putnbr.c	\
		lib/my/my_putstr.c	\
		lib/my/my_printstr.c	\
		lib/my/my_octal.c	\
		lib/my/my_put_hexa_min.c	\
		lib/my/my_put_hexa_maj.c	\
		lib/my/my_put_unsigned_int.c	\
		lib/my/my_print_pointer.c	\
		lib/my/my_len_puted.c	\
		lib/my/my_put_invisible_char.c	\
		lib/my/my_pourcent.c	\
		lib/my/my_binary.c	\
		lib/my/my_strlen.c	\
		lib/my/my_hub_l.c	\
		lib/my/my_put_long.c	\
		lib/my/my_octal_long.c	\
		lib/my/my_put_unsigned_long.c	\
		lib/my/my_put_hexa_min_l.c	\
		lib/my/my_put_hexa_maj_l.c	\
		lib/my/my_hub_ll.c	\
		lib/my/my_octal_ll.c	\
		lib/my/my_put_hexa_maj_ll.c	\
		lib/my/my_put_hexa_min_ll.c	\
		lib/my/my_put_unsigned_ll.c	\
		lib/my/my_put_ll.c	\
		lib/my/my_hub_h.c	\
		lib/my/my_put_h.c	\
		lib/my/my_put_unsigned_h.c	\
		lib/my/my_octal_h.c	\
		lib/my/my_put_hexa_maj_h.c	\
		lib/my/my_put_hexa_min_h.c	\
		lib/my/my_hub_hh.c	\
		lib/my/my_put_hh.c	\
		lib/my/my_put_unsigned_hh.c	\
		lib/my/my_put_hexa_min_hh.c	\
		lib/my/my_put_hexa_maj_hh.c	\
		lib/my/my_octal_hh.c	\
		lib/my/my_hub_modf.c	\
		lib/my/my_putnbr_m.c	\
		lib/my/my_getnbr.c	\
		lib/my/my_printchar_m.c	\
		lib/my/my_printstr_m.c	\
		lib/my/my_putnbr_unsigned_m.c	\
		lib/my/my_put_hexa_min_m.c	\
		lib/my/my_put_hexa_maj_m.c	\
		lib/my/my_octal_m.c	\
		lib/my/my_print_pointer_m.c	\
		lib/my/my_put_invisible_char_m.c	\
		lib/my/my_binary_m.c	\

TESTS	=	tests/test_my_printf.c	\
		tests/test_flag_d.c	\
		tests/test_flag_s.c	\
		tests/test_flag_c.c	\
		tests/test_flag_o.c	\
		tests/test_flag_u.c	\
		tests/test_flag_smaj.c	\
		tests/test_flag_x.c	\
		tests/test_flag_xmaj.c	\
		tests/test_flag_p.c	\
		tests/test_flag_b.c	\
		tests/test_my_getnbr.c	\

OBJ	=	$(LIB:.c=.o)

NAME	=	libmy.a

CFLAGS	=	-W -Wall -I include/

UNITFLAGS	=	-lcriterion --coverage

EXECTESTS	=	unit_tests

all:	$(NAME)

$(NAME):	$(OBJ)
	ar rc $(NAME) $(OBJ)

tests_run:
	$(CC) -o $(EXECTESTS) $(TESTS) $(CFLAGS) $(UNITFLAGS) $(LIB)
	./$(EXECTESTS) && gcovr --branches --exclude tests/

clean:
	rm -f *~
	rm -f $(OBJ)
	rm -f *gc*

fclean: clean
	rm -f $(NAME)
	rm -f $(EXECTESTS)

re:	fclean all

.PHONY: all clean fclean re
