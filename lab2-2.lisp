(let ((in (open "D:/Workspace/Lisp lab2/file.txt" :if-does-not-exist nil)))
      (when in
            (loop for line = (read-line in nil)
            while line do (format t "~a~%" line))
      (close in)))

;; C:/roswell
;; shift+ctrl+rightmouse открыть окно команл
;; run ros.exe