segment .text
global _start

%include "syscall/syscalls.asm"
%include "math/math.asm"

_start:
	mov rdi, 0
	call naslib_exit

segment .data
msg: db "Hello, World", 0xa

