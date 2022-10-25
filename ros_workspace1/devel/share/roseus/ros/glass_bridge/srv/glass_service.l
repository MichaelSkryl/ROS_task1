;; Auto-generated. Do not edit!


(when (boundp 'glass_bridge::glass_service)
  (if (not (find-package "GLASS_BRIDGE"))
    (make-package "GLASS_BRIDGE"))
  (shadow 'glass_service (find-package "GLASS_BRIDGE")))
(unless (find-package "GLASS_BRIDGE::GLASS_SERVICE")
  (make-package "GLASS_BRIDGE::GLASS_SERVICE"))
(unless (find-package "GLASS_BRIDGE::GLASS_SERVICEREQUEST")
  (make-package "GLASS_BRIDGE::GLASS_SERVICEREQUEST"))
(unless (find-package "GLASS_BRIDGE::GLASS_SERVICERESPONSE")
  (make-package "GLASS_BRIDGE::GLASS_SERVICERESPONSE"))

(in-package "ROS")





(defclass glass_bridge::glass_serviceRequest
  :super ros::object
  :slots (_symbol ))

(defmethod glass_bridge::glass_serviceRequest
  (:init
   (&key
    ((:symbol __symbol) 0)
    )
   (send-super :init)
   (setq _symbol (round __symbol))
   self)
  (:symbol
   (&optional __symbol)
   (if __symbol (setq _symbol __symbol)) _symbol)
  (:serialization-length
   ()
   (+
    ;; char _symbol
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char _symbol
       (write-byte _symbol s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char _symbol
     (setq _symbol (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass glass_bridge::glass_serviceResponse
  :super ros::object
  :slots (_str ))

(defmethod glass_bridge::glass_serviceResponse
  (:init
   (&key
    ((:str __str) "")
    )
   (send-super :init)
   (setq _str (string __str))
   self)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
    ;; string _str
    4 (length _str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass glass_bridge::glass_service
  :super ros::object
  :slots ())

(setf (get glass_bridge::glass_service :md5sum-) "cb66fc01ceb7c6ac62872c559febe866")
(setf (get glass_bridge::glass_service :datatype-) "glass_bridge/glass_service")
(setf (get glass_bridge::glass_service :request) glass_bridge::glass_serviceRequest)
(setf (get glass_bridge::glass_service :response) glass_bridge::glass_serviceResponse)

(defmethod glass_bridge::glass_serviceRequest
  (:response () (instance glass_bridge::glass_serviceResponse :init)))

(setf (get glass_bridge::glass_serviceRequest :md5sum-) "cb66fc01ceb7c6ac62872c559febe866")
(setf (get glass_bridge::glass_serviceRequest :datatype-) "glass_bridge/glass_serviceRequest")
(setf (get glass_bridge::glass_serviceRequest :definition-)
      "char symbol
---
string str

")

(setf (get glass_bridge::glass_serviceResponse :md5sum-) "cb66fc01ceb7c6ac62872c559febe866")
(setf (get glass_bridge::glass_serviceResponse :datatype-) "glass_bridge/glass_serviceResponse")
(setf (get glass_bridge::glass_serviceResponse :definition-)
      "char symbol
---
string str

")



(provide :glass_bridge/glass_service "cb66fc01ceb7c6ac62872c559febe866")


