section .data
	hello db "hello world !", 10
	size_hello equ $ - hello
	
section .text
	global _start
	_start:
		mov rax, 1
		mov rdi, 1
		mov rsi, hello
		mov rdx, size_hello          ; the size of the message
		syscall
		

		mov rax, 60
		mov rdi, 0
		syscall
 
