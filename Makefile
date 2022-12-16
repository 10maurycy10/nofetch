.PHONY: all clean size

.SUFFIXES:

default: all

NASM?=nasm
LD?=ld
ARCH?=$(shell uname -m)

build/i386.o: src/i386.asm
	-mkdir build
	$(NASM) src/i386.asm -o build/i386.o -f elf64

build/x86_64.o: src/x86_64.asm
	-mkdir build
	$(NASM) src/x86_64.asm -o build/x86_64.o -f elf64

nofetch: build/$(ARCH).o
	$(LD) build/$(ARCH).o -o nofetch
	strip nofetch
	chmod a+x nofetch

all: nofetch

clean:
	-rm nofetch
	-rm build/*

size: nofetch
	wc -c nofetch
