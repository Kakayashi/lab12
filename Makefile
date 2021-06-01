vpath %.c src
vpath %.h include

hello: hello.o print.o
	gcc -o hello hello.o print.o
print.o: print.c print.h
	gcc -c print.c -I./src
hello.o: hello.c
	gcc -c hello.c -I./include
clean:
	rm *.o hello
