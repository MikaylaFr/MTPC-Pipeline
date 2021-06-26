#Source: CS261 Assignments
CC = gcc
CFLAGS = -g -Wall -std=gnu99 -g3
LDFLAGS = -lm -pthread

all : line_processor

line_processor: main.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

main.o : main.c

memTest :
	valgrind --tool=memcheck --leak-check=yes line_processor

clean :
	-rm *.o
	-rm line_processor