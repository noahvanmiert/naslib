segment .text
global _start

%include "string/string.asm"

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 13
	syscall

	mov rax, 60
	mov rdi, 0
	syscall

segment .data
msg: db "Hello, World", 0xa
