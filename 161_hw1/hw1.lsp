;Homework 1
;NAME: Khoa Quach
;ID: 105123806

;------Number 1-------;
; Function name: PAD
; argument(s): N (integer)
; return: Nth Padovan number
; This works because the base case is when the argument N is less than 3,
; PAD(N) = 1
; Otherwise, the recursive relation is used
(defun PAD(N)
	(if (< N 3)
		1
		(+ (PAD (- N 2)) (PAD (- N 3)))
	)
)

;------Number 2-------;
; Function name: SUMS
; argument: N (integer)
; return:number of additions required by PAD function to compute the Nth 
; Padovan number.
; This works because the base cases of N being 0,1, and 3 being used
; in the PAD(N) function would return 1 and perform no additions. 
; Thus, SUMS(N) will return 0 for these base cases.
; Otherwise (if N is greater than or equal to 3), the original
; PAD function performs one addition for the values returned from the 
; recrusive calls PAD(N-2) and PAD(N-3). Hence, SUMS(N) adds 1 to
; the sum of additions performed.
(defun SUMS(N)
	(if (< N 3)
		0
		(+ 1 (SUMS (- N 2)) (SUMS (- N 3)))
	)
)

;------Number 3-------;
; Function name: ANON
; argument: TREE
; return: anonymized version of the tree with same structure, but all 
; symbols and numbers are replaced by ?
; If it is empty, return an empty list
; If it is a signle nodem replace with ?
; Otherwise , recursively, convert the list approppiately by calling ANON
; with car and cdr operations
(defun ANON (TREE)
	(cond ((null TREE) nil)
		((atom TREE) '?)
		(t (cons (ANON (car TREE)) (ANON (cdr TREE))))
	)
)
