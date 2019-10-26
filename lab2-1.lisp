(list 13 0 2 1 9 3 10)

;; функция вставки
(defun insert (lst num elt)
  (if (zerop num) (return-from insert (cons elt lst)))
  (rplacd (nthcdr (- num 1) lst) (cons elt (nthcdr num lst)))
  lst)

;; команда для вставки (insert `(спиок) позиция `(вставляемое число))
(insert `(list 13 0 2 1 9 3 10) 2 `70)

;; функция удаления из списка по позиции
(defun delete-by-num (n lst)
  (cond ((null lst) nil)
        ((zerop n) (cdr lst))
        (t (cons (car lst) (delete-by-num (1- n) (cdr lst))))))
 
;; команда для удаления (delete-by-num позиция `(список))
(delete-by-num 2 `(list 13 0 2 1 9 3 10))

;; функция поиска элемента
(defun search-elem (e lst)
	(let ((n nil) (a -1))
		(dolist (i lst n)
			(setq a (+ a 1))
			(when (eq i e)
				(return a))
    )))

;; команда для поиска, возвращает позицию
(search-elem `10 `(list 13 0 2 1 9 3 10))