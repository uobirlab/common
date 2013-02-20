; Auto-generated. Do not edit!


(cl:in-package ptu_control-msg)


;//! \htmlinclude instruction.msg.html

(cl:defclass <instruction> (roslisp-msg-protocol:ros-message)
  ((pan
    :reader pan
    :initarg :pan
    :type cl:float
    :initform 0.0)
   (tilt
    :reader tilt
    :initarg :tilt
    :type cl:float
    :initform 0.0))
)

(cl:defclass instruction (<instruction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <instruction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'instruction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ptu_control-msg:<instruction> is deprecated: use ptu_control-msg:instruction instead.")))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <instruction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ptu_control-msg:pan-val is deprecated.  Use ptu_control-msg:pan instead.")
  (pan m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <instruction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ptu_control-msg:tilt-val is deprecated.  Use ptu_control-msg:tilt instead.")
  (tilt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <instruction>) ostream)
  "Serializes a message object of type '<instruction>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <instruction>) istream)
  "Deserializes a message object of type '<instruction>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pan) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tilt) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<instruction>)))
  "Returns string type for a message object of type '<instruction>"
  "ptu_control/instruction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'instruction)))
  "Returns string type for a message object of type 'instruction"
  "ptu_control/instruction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<instruction>)))
  "Returns md5sum for a message object of type '<instruction>"
  "938e11f380abc0513a5b7367d0f157bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'instruction)))
  "Returns md5sum for a message object of type 'instruction"
  "938e11f380abc0513a5b7367d0f157bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<instruction>)))
  "Returns full string definition for message of type '<instruction>"
  (cl:format cl:nil "float32 pan~%float32 tilt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'instruction)))
  "Returns full string definition for message of type 'instruction"
  (cl:format cl:nil "float32 pan~%float32 tilt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <instruction>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <instruction>))
  "Converts a ROS message object to a list"
  (cl:list 'instruction
    (cl:cons ':pan (pan msg))
    (cl:cons ':tilt (tilt msg))
))
