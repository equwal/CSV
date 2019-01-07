(in-package :csv)
(defmacro dolines ((var stream) &body body)
  `(do ((,var #1=(read-line ,stream nil nil) #1#))
       ((null ,var))
     ,@body))
(defmacro with-gensyms (symbols &body body)
  "Create gensyms for those symbols."
  `(let (,@(mapcar #'(lambda (sym)
		       `(,sym ',(gensym))) symbols))
     ,@body))
(defmacro make-reader (name (stream-var dispatch-1 dispatch-2) &body body)
  "Simplify the reader macro creation process in most cases."
  (with-gensyms (sub-char numarg)
    `(progn (defun ,name (,stream-var ,sub-char ,numarg)
	      (declare (ignore ,sub-char ,numarg))
	      ,@body)
	    (set-dispatch-macro-character ,dispatch-1 ,dispatch-2 #',name))))
(defun push-on (elt stack)
  (vector-push-extend elt stack) stack)
(define-modify-macro toggle () not "Flipping vars.")
