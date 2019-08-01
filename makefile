hello.o:hello.asm
	nasm -f macho64 -o hello.o hello.asm

hello.out: hello.o
	ld -e _main -macosx_version_min 10.8 -arch x86_64 hello.o -lSystem -o hello.out

.PHONY: run
run: hello.out
	./hello.out

clean:
	rm hello.o hello.out