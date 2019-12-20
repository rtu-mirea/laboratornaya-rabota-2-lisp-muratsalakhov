(defun compress (seq &optional (c 1))
  (cond
    ((null seq) nil)
    ((eq (car seq) (cadr seq)) (compress (cdr seq) (1+ c)))
    ((> c 1) (cons (cons (car seq) (list c)) (compress (cdr seq))))
    (t (cons (car seq) (compress (cdr seq))))))
 
(defun uncompress (lst &optional (c 0))
  (cond
    ((null lst) nil)
    ((atom (car lst)) (cons (car lst) (uncompress (cdr lst))))
    ((if (< c (cadar lst))
         (cons (caar lst) (uncompress lst (1+ c)))
         (uncompress (cdr lst))))))

(compress '(1 1 1 1 0 1 0 0 0 0 0 0 1 1))
 
(uncompress '((1 4) 0 1 (0 6) (1 2)))
