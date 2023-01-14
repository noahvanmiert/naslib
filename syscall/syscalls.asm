;; Made by Noah Van Miert
;; 14/02/2023
;; Naslib

%ifndef __NASLIB_SYSCALLS__
%idefine __NASLIB_SYSCALLS__


;; Syscall write - Writes a buffer to a specific file
;; rdi - File Descriptor
;; rsi - Buffer
;; rdx - Count
naslib_write:
	mov rax, 1
	syscall
	ret


%include "string/string.asm"

;; print - Prints a buffer to stdout;
;; rsi - Buffer
naslib_print:
	mov rbx, rsi
	mov rax, rsi
	call naslib_strlen
	mov rdx, rdi

	mov rax, 1
	mov rdi, 1
	mov rsi, rbx
	syscall
	ret


;; exit - Stops the program
;; rdi - Exit code
naslib_exit:
	mov rax, 60
	syscall
	ret


%endif ;; __NASLIB_SYSCALLS__
