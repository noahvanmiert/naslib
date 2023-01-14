segment .text
global _start

%include "syscall/syscalls.asm"

_start:
	mov rsi, msg
	call naslib_print

	mov rax, 60
	mov rdi, 0
	syscall

segment .data
msg: db "Hello, World", 0xa

