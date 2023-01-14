;; Made by Noah Van Miert
;; 12/02/2023
;; Naslib

%ifndef __NASLIB_STRING__
%define __NASLIB_STRING__


;; naslib_strlen - Returns the length of a null-terminated string
;; rax: the string pointer
;; -> rdi: the size
naslib_strlen:
	push rbp
	mov rbp, rsp
	xor rdi, rdi

.strlen_loop:
	mov rdx, [rax]
	cmp rdx, byte 0
	jz .strlen_end
	inc rax
	inc rdi
	jmp .strlen_loop

.strlen_end:
	pop rbp
	ret


;; naslib_strnlen - Returns the length of a fixed size string.
;; rax: the string pointer
;; rbx: the max length
;; -> rdi: the size
naslib_strnlen:
	push rbp
	mov rbp, rsp
	xor rdi, rdi

.strnlen_loop:
	cmp rdi, rbx
	je .strnlen_end

	mov rdx, [rax]
	cmp rdx, byte 0
	jz .strnlen_end

	inc rax
	inc rdi
	jmp .strnlen_loop

.strnlen_end:
	pop rbp
	ret


%endif ; __NASLIB_STRING__
