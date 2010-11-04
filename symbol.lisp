(in-package :fukacl)

(defun symb (&rest args)
  (values (intern (apply #'mkstr args))))
