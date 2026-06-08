flags= -Wall -O2 -std=c23
LDFLAGS = 

.PHONY: clean

all: clean alloc

alloc: alloc.o heap.o
	cc $(flags) $^ -o $@ $(LDFLAGS)

alloc.o: alloc.c alloc.h birchutils.h
	cc $(flags) $^ -c $<

heap.o: heap.asm
	nasm -f elf64 $^

clean :
	rm -f *.o alloc
