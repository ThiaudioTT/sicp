; Compute the square root using the most common method (Newton method)
; The Newton method is to guess and then improve the guess by averaging
; it with the quotient of the number and the guess. This is repeated
; until the guess is good enough.

; note: THIS WAS MADE BY AN AI

#lang sicp

(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 x))


(sqrt 2)