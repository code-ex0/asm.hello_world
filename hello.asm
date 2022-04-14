section .data
	hello db "hello world !", 10         ; set the message to print
	size_hello equ $ - hello             ; calculate the size of the message
	
section .text
	global _start
	_start:                              ; start the program
		mov rax, 1                   ; call register sys_write
		mov rdi, 1                   ; file descriptor
		mov rsi, hello               ; send file to sys_write
		mov rdx, size_hello          ; the size of the message
		syscall                      ; execute the config
		

		mov rax, 60                  ; call register sys_exit
		mov rdi, 0                   ; code error 0
		syscall                      ; execute the config
 
