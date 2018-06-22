;; Auto-generated. Do not edit!


(when (boundp 'lidar_based_task1::ObstaclePoseList)
  (if (not (find-package "LIDAR_BASED_TASK1"))
    (make-package "LIDAR_BASED_TASK1"))
  (shadow 'ObstaclePoseList (find-package "LIDAR_BASED_TASK1")))
(unless (find-package "LIDAR_BASED_TASK1::OBSTACLEPOSELIST")
  (make-package "LIDAR_BASED_TASK1::OBSTACLEPOSELIST"))

(in-package "ROS")
;;//! \htmlinclude ObstaclePoseList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar_based_task1::ObstaclePoseList
  :super ros::object
  :slots (_header _list _size ))

(defmethod lidar_based_task1::ObstaclePoseList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:list __list) (let (r) (dotimes (i 0) (push (instance lidar_based_task1::ObstaclePose :init) r)) r))
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _list __list)
   (setq _size (round __size))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:list
   (&rest __list)
   (if (keywordp (car __list))
       (send* _list __list)
     (progn
       (if __list (setq _list (car __list)))
       _list)))
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lidar_based_task1/ObstaclePose[] _list
    (apply #'+ (send-all _list :serialization-length)) 4
    ;; uint32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lidar_based_task1/ObstaclePose[] _list
     (write-long (length _list) s)
     (dolist (elem _list)
       (send elem :serialize s)
       )
     ;; uint32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lidar_based_task1/ObstaclePose[] _list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list (let (r) (dotimes (i n) (push (instance lidar_based_task1::ObstaclePose :init) r)) r))
     (dolist (elem- _list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lidar_based_task1::ObstaclePoseList :md5sum-) "03a580738d2edadd2ccd0ff18ab5984c")
(setf (get lidar_based_task1::ObstaclePoseList :datatype-) "lidar_based_task1/ObstaclePoseList")
(setf (get lidar_based_task1::ObstaclePoseList :definition-)
      "Header header
lidar_based_task1/ObstaclePose[] list
uint32 size

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: lidar_based_task1/ObstaclePose
Header header
float64 x
float64 y
float64 z
float64 r

")



(provide :lidar_based_task1/ObstaclePoseList "03a580738d2edadd2ccd0ff18ab5984c")


