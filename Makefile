CC=gcc
FLAGS=-Wall	-g
AR=ar
all:	connections
connections:	main.o libmylib.a	
			$(CC) $(FLAGS)	-o connections main.o ./libmylib.a
#static lib	
libmylib.a:	my_mat.o
			$(AR)	-rcs libmylib.a	my_mat.o
main.o:	main.c my_mat.h
			$(CC)	$(FLAGS) -c main.c
my_mat.o:	my_mat.c my_mat.h 
		$(CC)	$(FLAGS) -c my_mat.c
.PHONY:	clean
clean:	
	rm -f	*.o	connections	*.a	*.so