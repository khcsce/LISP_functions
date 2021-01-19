;Homework 1
;NAME: Khoa Quach
;ID: 105123806

;;------Number 1-------;;
;; Padovan Sequence defined by PAD(N+1)=PAD(N-1) + PAD(N-2)
;; with the base cases PAD(0)=PAD(1)=PAD(2) = 1
;; Function name: PAD
;; argument(s): N (integer)
;; return: Nth Padovan number
;; This works because the base case is when the argument N is less than 3,
;; => PAD(N) = 1
;; Otherwise, a modification of recursive relation given above is used. The function is recursive
;; This modification is valid because the given relation is equivalent to
;; PAD(N) = PAD(N-2) + PAD(N-3)
(defun PAD(N)
	(if (< N 3)
		1
		(+ (PAD (- N 2)) (PAD (- N 3)))
	)
)

;;------Number 2-------;;
;; Function name: SUMS
;; argument: N (integer)
;; return:number of additions required by PAD function to compute the Nth 
;; Padovan number. In other words, the number of additions done in the PAD(N)
;; function. This value will be an integer.
;; This works because the base cases of N being 0,1, and 3 being used
;; in the PAD(N) function would return 1 and perform no additions. 
;; Thus, SUMS(N) will return 0 for these base cases.
;; Otherwise (if N is greater than or equal to 3), the original
;; PAD function performs one addition for the values returned from the 
;; recursive calls PAD(N-2) and PAD(N-3). Hence, SUMS(N) adds 1 to
;; the sum of additions performed.
;; => if n >=3 , SUMS(N-2) + SUMS(N-3) + 1
(defun SUMS(N)
	(if (< N 3)
		0
		(+ 1 (SUMS (- N 2)) (SUMS (- N 3)))
	)
)

;;------Number 3-------;;
;; Function name: ANON
;; argument: TREE (could be a signgle node - atom or a list)
;; return: anonymized version of the tree with same structure, but all 
;; symbols and numbers are replaced by ?
;; Explanation:
;; If it is empty, return an empty list by using null
;; If it is a single node replace with ? ;; checking if it is an atom
;; Otherwise , if it is a list, we recursively, convert the list approppiately by calling ANON
;; with car and cdr operations
;; this works because we can use car to see if the first item is an atom, and cdr to
;; check the rest
(defun ANON (TREE)
	(cond ((null TREE) nil)
		((atom TREE) '?)
		(t (cons (ANON (car TREE)) (ANON (cdr TREE))))
	)
)
