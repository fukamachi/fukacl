(in-package :cl-user)

(defpackage :fukacl
  (:nicknames :fcl)
  (:use :cl :cl-ppcre :cl-interpol :cl-utilities)
  (:export
   ;; shell.lisp
   :args

   ;; debug.lisp
   :mexpand
   :mexpand-all
   :print-form-and-results
   :disassemble*

   ;; macro.lisp
   :defmacro*

   ;; list.lisp
   :mappend
   :n..
   :1..
   :0..

   ;; cl-utilities
   :once-only
   :with-gensyms
   :compose
   ))
