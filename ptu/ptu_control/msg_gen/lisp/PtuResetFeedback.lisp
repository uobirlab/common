; Auto-generated. Do not edit!


(cl:in-package ptu_control-msg)


;//! \htmlinclude PtuResetFeedback.msg.html

(cl:defclass <PtuResetFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PtuResetFeedback (<PtuResetFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PtuResetFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PtuResetFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ptu_control-msg:<PtuResetFeedback> is deprecated: use ptu_control-msg:PtuResetFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PtuResetFeedback>) ostream)
  "Serializes a message object of type '<PtuResetFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PtuResetFeedback>) istream)
  "Deserializes a message object of type '<PtuResetFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PtuResetFeedback>)))
  "Returns string type for a message object of type '<PtuResetFeedback>"
  "ptu_control/PtuResetFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PtuResetFeedback)))
  "Returns string type for a message object of type 'PtuResetFeedback"
  "ptu_control/PtuResetFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PtuResetFeedback>)))
  "Returns md5sum for a message object of type '<PtuResetFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PtuResetFeedback)))
  "Returns md5sum for a message object of type 'PtuResetFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PtuResetFeedback>)))
  "Returns full string definition for message of type '<PtuResetFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PtuResetFeedback)))
  "Returns full string definition for message of type 'PtuResetFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PtuResetFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PtuResetFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PtuResetFeedback
))
