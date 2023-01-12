ASM = nasm
ASM_FLAGS = -felf64

all: test

test: test.o
	ld $^ -o $@

test.o: test.asm
	$(ASM) $(ASM_FLAGS) $^ -o $@

run:
	./test

clean:
	rm -f *.o
	rm -f test
