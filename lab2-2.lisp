(defun textfile (file)
	(let ((in (open file :if-does-not-exist nil)))
      (when in
            (loop for line = (read-line in nil)
            while line do (format t "~a~%" line))
      (close in))))

(textfile "D:/Workspace/Lisp lab2/file.txt")
