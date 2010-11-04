(in-package :fukacl)

(defun flatten (x)
  (labels ((rec (x acc)
             (cond ((null x) acc)
                   ((atom x) (cons x acc))
                   (t (rec
                       (car x)
                       (rec (cdr x) acc))))))
    (rec x nil)))

(defun group (source n)
  (if (not (listp source)) (error "group: not list"))
  (if (zerop n) (error "zero length"))
  (labels ((rec (source acc)
             (let ((rest (nthcdr n source)))
               (if (consp rest)
                   (rec rest (cons
                              (subseq source 0 n)
                              acc))
                   (nreverse
                    (cons source acc))))))
    (if source (rec source nil) nil)))

(defun sort* (seq pred &key key)
  (sort (copy-seq seq) pred :key key))

(defun mappend (f &rest lists)
  (apply #'append (apply #'mapcar f lists)))

(defun n.. (start end)
  (loop for i from start upto end collect i))

(defun 1.. (end)
  (n.. 1 end))

(defun 0.. (end)
  (n.. 0 end))
