#!/bin/bash

nasm -f elf64 hello.asm -o a64.o
ld a64.o -o a64
./a64
