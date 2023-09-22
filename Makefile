all: pantomath.asm
	yasm -a x86 -m amd64 -g dwarf2 -f elf64 -o pantomath.o pantomath.asm 
	gcc -m64 -no-pie -o pantomath.out pantomath.o

clean:
	rm *.out
	rm *.o