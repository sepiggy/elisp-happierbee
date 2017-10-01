(defun hello-world (name)
  "Say hello to user whose name is NAME."
  (message "Hello, %s" name))
hello-world

(hello-world "Emacser")
"Hello, Emacser"

(setq foo "I'm foo")
"I'm foo"

(message foo)
"I’m foo"

(defvar foo "Did I have a value?"
  "A demo variable")
foo
"I'm foo"

(defvar bar "I'm bar"
  "A demo variable named \"bar\"")
bar
"I'm bar"

(defun circle-area (radix)
  (let ((pi 3.1415926)
	area)
    (setq area (* pi radix radix))
    (message "直径为 %.2f 的圆面积是 %.2f" radix area)))
circle-area

(circle-area 3)
"直径为 3.00 的圆面积是 28.27"

(defun circle-area1 (radix)
  (let* ((pi 3.1415926)
	 (area (* pi radix radix)))
    (message "直径为 %.2f 的圆面积是 %.2f" radix area)))
circle-area1

(circle-area1 4)
"直径为 4.00 的圆面积是 50.27"

(funcall (lambda (name)
	   (message "Hello, %s!" name)) "Emacser")
"Hello, Emacser!"

(setq foo (lambda (name)
	    (message "Hello, %s!" name)))
(lambda (name) (message "Hello, %s!" name))

(funcall foo "Emacser")
"Hello, Emacser!"

(progn
  (setq foo 3)
  (message "Square of %d is %d" foo (* foo foo)))
"Square of 3 is 9"

(defun my-max (a b)
  (if (> a b)
      a b))
my-max

(my-max 3 4)
4

(my-max 4 3)
4

(defun fib (n)
  (cond ((= n 0) 0)
	((= n 1) 1)
	(t (+ (fib (- n 1))
	      (fib (- n 2))))))
fib

(fib 10)
55

(defun factorial (n)
  (let ((res 1))
    (while (> n 1)
      (setq res (* res n)
	    n (- n 1)))
    res))
factorial

(factorial 10)
3628800

(defun hello-world (&optional name)
  (or name (setq name "Emacser"))
  (message "Hello, %s" name))
hello-world

(hello-world "Ye")
"Hello, Ye"

(hello-world)
"Hello, Emacser"

(defun square-number-p (n)
  (and (>= n 0)
       (= (/ n (sqrt n)) (sqrt n))))
square-number-p

(square-number-p -1)
nil

(square-number-p 25)
t

