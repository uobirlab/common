
(cl:in-package :asdf)

(defsystem "talker-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Speach" :depends-on ("_package_Speach"))
    (:file "_package_Speach" :depends-on ("_package"))
  ))