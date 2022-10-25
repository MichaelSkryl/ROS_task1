; Auto-generated. Do not edit!


(cl:in-package glass_bridge-srv)


;//! \htmlinclude glass_service-request.msg.html

(cl:defclass <glass_service-request> (roslisp-msg-protocol:ros-message)
  ((symbol
    :reader symbol
    :initarg :symbol
    :type cl:integer
    :initform 0))
)

(cl:defclass glass_service-request (<glass_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <glass_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'glass_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name glass_bridge-srv:<glass_service-request> is deprecated: use glass_bridge-srv:glass_service-request instead.")))

(cl:ensure-generic-function 'symbol-val :lambda-list '(m))
(cl:defmethod symbol-val ((m <glass_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader glass_bridge-srv:symbol-val is deprecated.  Use glass_bridge-srv:symbol instead.")
  (symbol m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <glass_service-request>) ostream)
  "Serializes a message object of type '<glass_service-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'symbol)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <glass_service-request>) istream)
  "Deserializes a message object of type '<glass_service-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'symbol)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<glass_service-request>)))
  "Returns string type for a service object of type '<glass_service-request>"
  "glass_bridge/glass_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'glass_service-request)))
  "Returns string type for a service object of type 'glass_service-request"
  "glass_bridge/glass_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<glass_service-request>)))
  "Returns md5sum for a message object of type '<glass_service-request>"
  "cb66fc01ceb7c6ac62872c559febe866")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'glass_service-request)))
  "Returns md5sum for a message object of type 'glass_service-request"
  "cb66fc01ceb7c6ac62872c559febe866")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<glass_service-request>)))
  "Returns full string definition for message of type '<glass_service-request>"
  (cl:format cl:nil "char symbol~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'glass_service-request)))
  "Returns full string definition for message of type 'glass_service-request"
  (cl:format cl:nil "char symbol~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <glass_service-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <glass_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'glass_service-request
    (cl:cons ':symbol (symbol msg))
))
;//! \htmlinclude glass_service-response.msg.html

(cl:defclass <glass_service-response> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass glass_service-response (<glass_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <glass_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'glass_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name glass_bridge-srv:<glass_service-response> is deprecated: use glass_bridge-srv:glass_service-response instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <glass_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader glass_bridge-srv:str-val is deprecated.  Use glass_bridge-srv:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <glass_service-response>) ostream)
  "Serializes a message object of type '<glass_service-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <glass_service-response>) istream)
  "Deserializes a message object of type '<glass_service-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<glass_service-response>)))
  "Returns string type for a service object of type '<glass_service-response>"
  "glass_bridge/glass_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'glass_service-response)))
  "Returns string type for a service object of type 'glass_service-response"
  "glass_bridge/glass_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<glass_service-response>)))
  "Returns md5sum for a message object of type '<glass_service-response>"
  "cb66fc01ceb7c6ac62872c559febe866")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'glass_service-response)))
  "Returns md5sum for a message object of type 'glass_service-response"
  "cb66fc01ceb7c6ac62872c559febe866")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<glass_service-response>)))
  "Returns full string definition for message of type '<glass_service-response>"
  (cl:format cl:nil "string str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'glass_service-response)))
  "Returns full string definition for message of type 'glass_service-response"
  (cl:format cl:nil "string str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <glass_service-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <glass_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'glass_service-response
    (cl:cons ':str (str msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'glass_service)))
  'glass_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'glass_service)))
  'glass_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'glass_service)))
  "Returns string type for a service object of type '<glass_service>"
  "glass_bridge/glass_service")