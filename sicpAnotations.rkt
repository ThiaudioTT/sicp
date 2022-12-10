#lang sicp

;operators
(+ 1 2 3 4 5 6)
(* 5 2 3)

;define variables or procedures
(define pi 3.14)
(* pi 2)

(define (square x) (* x x))
(square 2)
(square (* 3 3))

 ;sum of square (you can define a procedure for this too)
(+ (square 2) (square 3))

(define (sum-square x y)
  (+ (square x) (square y))
  )

(sum-square 2 3)

;printing in scheme: https://wiki.call-cc.org/man/5/Using%20the%20interpreter
;(print "hello world")