; Auto-generated. Do not edit!


(cl:in-package lidar_based_task1-msg)


;//! \htmlinclude ObstaclePoseList.msg.html

(cl:defclass <ObstaclePoseList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (list
    :reader list
    :initarg :list
    :type (cl:vector lidar_based_task1-msg:ObstaclePose)
   :initform (cl:make-array 0 :element-type 'lidar_based_task1-msg:ObstaclePose :initial-element (cl:make-instance 'lidar_based_task1-msg:ObstaclePose)))
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0))
)

(cl:defclass ObstaclePoseList (<ObstaclePoseList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstaclePoseList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstaclePoseList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_based_task1-msg:<ObstaclePoseList> is deprecated: use lidar_based_task1-msg:ObstaclePoseList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObstaclePoseList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_based_task1-msg:header-val is deprecated.  Use lidar_based_task1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <ObstaclePoseList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_based_task1-msg:list-val is deprecated.  Use lidar_based_task1-msg:list instead.")
  (list m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <ObstaclePoseList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_based_task1-msg:size-val is deprecated.  Use lidar_based_task1-msg:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstaclePoseList>) ostream)
  "Serializes a message object of type '<ObstaclePoseList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstaclePoseList>) istream)
  "Deserializes a message object of type '<ObstaclePoseList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lidar_based_task1-msg:ObstaclePose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstaclePoseList>)))
  "Returns string type for a message object of type '<ObstaclePoseList>"
  "lidar_based_task1/ObstaclePoseList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstaclePoseList)))
  "Returns string type for a message object of type 'ObstaclePoseList"
  "lidar_based_task1/ObstaclePoseList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstaclePoseList>)))
  "Returns md5sum for a message object of type '<ObstaclePoseList>"
  "03a580738d2edadd2ccd0ff18ab5984c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstaclePoseList)))
  "Returns md5sum for a message object of type 'ObstaclePoseList"
  "03a580738d2edadd2ccd0ff18ab5984c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstaclePoseList>)))
  "Returns full string definition for message of type '<ObstaclePoseList>"
  (cl:format cl:nil "Header header~%lidar_based_task1/ObstaclePose[] list~%uint32 size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidar_based_task1/ObstaclePose~%Header header~%float64 x~%float64 y~%float64 z~%float64 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstaclePoseList)))
  "Returns full string definition for message of type 'ObstaclePoseList"
  (cl:format cl:nil "Header header~%lidar_based_task1/ObstaclePose[] list~%uint32 size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidar_based_task1/ObstaclePose~%Header header~%float64 x~%float64 y~%float64 z~%float64 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstaclePoseList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstaclePoseList>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstaclePoseList
    (cl:cons ':header (header msg))
    (cl:cons ':list (list msg))
    (cl:cons ':size (size msg))
))
