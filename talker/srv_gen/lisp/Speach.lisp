; Auto-generated. Do not edit!


(cl:in-package talker-srv)


;//! \htmlinclude Speach-request.msg.html

(cl:defclass <Speach-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass Speach-request (<Speach-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Speach-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Speach-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talker-srv:<Speach-request> is deprecated: use talker-srv:Speach-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <Speach-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talker-srv:text-val is deprecated.  Use talker-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Speach-request>) ostream)
  "Serializes a message object of type '<Speach-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'text) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Speach-request>) istream)
  "Deserializes a message object of type '<Speach-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'text) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Speach-request>)))
  "Returns string type for a service object of type '<Speach-request>"
  "talker/SpeachRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Speach-request)))
  "Returns string type for a service object of type 'Speach-request"
  "talker/SpeachRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Speach-request>)))
  "Returns md5sum for a message object of type '<Speach-request>"
  "7fb91077b93c329c9eeaea1c488c03e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Speach-request)))
  "Returns md5sum for a message object of type 'Speach-request"
  "7fb91077b93c329c9eeaea1c488c03e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Speach-request>)))
  "Returns full string definition for message of type '<Speach-request>"
  (cl:format cl:nil "std_msgs/String text~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Speach-request)))
  "Returns full string definition for message of type 'Speach-request"
  (cl:format cl:nil "std_msgs/String text~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Speach-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Speach-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Speach-request
    (cl:cons ':text (text msg))
))
;//! \htmlinclude Speach-response.msg.html

(cl:defclass <Speach-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Speach-response (<Speach-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Speach-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Speach-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talker-srv:<Speach-response> is deprecated: use talker-srv:Speach-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Speach-response>) ostream)
  "Serializes a message object of type '<Speach-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Speach-response>) istream)
  "Deserializes a message object of type '<Speach-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Speach-response>)))
  "Returns string type for a service object of type '<Speach-response>"
  "talker/SpeachResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Speach-response)))
  "Returns string type for a service object of type 'Speach-response"
  "talker/SpeachResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Speach-response>)))
  "Returns md5sum for a message object of type '<Speach-response>"
  "7fb91077b93c329c9eeaea1c488c03e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Speach-response)))
  "Returns md5sum for a message object of type 'Speach-response"
  "7fb91077b93c329c9eeaea1c488c03e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Speach-response>)))
  "Returns full string definition for message of type '<Speach-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Speach-response)))
  "Returns full string definition for message of type 'Speach-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Speach-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Speach-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Speach-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Speach)))
  'Speach-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Speach)))
  'Speach-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Speach)))
  "Returns string type for a service object of type '<Speach>"
  "talker/Speach")