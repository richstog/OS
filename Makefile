CFLAGS= -f elf32
LFLAGS= -m elf_i386

all: hello

hello: hello.o
	ld $(LFLAGS) hello.o -o hello

hello.o: hello.asm
	nasm $(CFLAGS) hello.asm -o hello.o

clean:
	rm -f hello.o hello
        
.INTERMEDIATE: hello.o