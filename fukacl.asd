(in-package :cl-user)

(defpackage fukacl-asd
  (:use :cl :asdf))

(in-package :fukacl-asd)

(defsystem fukacl
  :version "1.0.0-SNAPSHOT"
  :author "Eitarow Fukamachi"
  :license "MIT"
  :depends-on (:cl-ppcre :cl-interpol :cl-utilities)
  :components ((:file "package")
               (:file "shell" :depends-on ("package"))
               (:file "debug" :depends-on ("package"))
               (:file "string" :depends-on ("package"))
               (:file "list" :depends-on ("package"))
               (:file "symbol" :depends-on ("package" "string"))
               (:file "macro" :depends-on ("package" "symbol"))
               (:file "function" :depends-on ("package"))
               (:file "regex" :depends-on ("package" "macro"))))
