(in-package :fukacl)

(defun anonym-function (stream char)
  (declare (ignore char))
  `(lambda (,(intern "_" *package*)) ,(read-delimited-list #\] stream t)))

(set-macro-character #\[ #'anonym-function)
(set-macro-character #\] (get-macro-character #\)))

(defun sharp-backquote-reader (stream sub-char numarg)
  (declare (ignore sub-char))
  (unless numarg (setq numarg 1))
  `(lambda ,(loop for i from 1 to numarg
               collect (symb '$ i))
     ,(funcall
       (get-macro-character #\`) stream nil)))

(set-dispatch-macro-character #\# #\` #'sharp-backquote-reader)
