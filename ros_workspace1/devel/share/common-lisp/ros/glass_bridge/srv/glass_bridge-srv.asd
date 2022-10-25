
(cl:in-package :asdf)

(defsystem "glass_bridge-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "glass_service" :depends-on ("_package_glass_service"))
    (:file "_package_glass_service" :depends-on ("_package"))
  ))