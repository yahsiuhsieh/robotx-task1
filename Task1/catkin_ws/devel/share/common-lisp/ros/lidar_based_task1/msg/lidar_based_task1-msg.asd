
(cl:in-package :asdf)

(defsystem "lidar_based_task1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ObstaclePose" :depends-on ("_package_ObstaclePose"))
    (:file "_package_ObstaclePose" :depends-on ("_package"))
    (:file "ObstaclePoseList" :depends-on ("_package_ObstaclePoseList"))
    (:file "_package_ObstaclePoseList" :depends-on ("_package"))
    (:file "UsvDrive" :depends-on ("_package_UsvDrive"))
    (:file "_package_UsvDrive" :depends-on ("_package"))
  ))