;Guesses the number you are thinking of

(defparameter *lower-limit* 1)
(defparameter *upper-limit* 100)

(defun guess-my-number ()
  (ash (+ *lower-limit* *upper-limit*) -1))

(defun lower ()
  (setf *upper-limit* (1- (guess-my-number)))
  (guess-my-number))

(defun higher ()
  (setf *lower-limit* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  (defparameter *lower-limit* 1)
  (defparameter *upper-limit* 100)
  (guess-my-number))

