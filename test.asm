segment .text
global _start

%include "syscall/syscalls.asm"

_start:
	mov rsi, msg
	call naslib_print

	mov rdi, 0
	call naslib_exit

segment .data
msg: db "Hello, World", 0xa

