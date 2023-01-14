;; Made by Noah Van Miert
;; 14/02/2023
;; Naslib


%ifndef __NASLIB_MATH__
%define __NASLIB_MATH__

;; abs - Calculates the absolute value of an integer
;; rax - the number
;; -> rbx - the absolute value
naslib_abs:
	push rbp
	mov rbp, rsp

	mov rbx, rax
	cmp rbx, 0
	jns .abs_end
	imul rbx, -1
	
.abs_end:
	pop rbp
	ret
	

%endif ;; __NASLIB_MATH__
