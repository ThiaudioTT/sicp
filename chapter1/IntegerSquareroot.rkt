#lang sicp

; Compute the square root using the most common method (Newton method)

; utility functions: 
(define (square x) (* x x))

(define (quotient x y) (/ x y))

(define (average x y)
    (/ (+ x y) 2)
)

(define (response x guess) (average (/ x guess) guess) )



(define (sqrt-iter x guess)
    (if (= (square (response x guess) ) x)
        (response x guess)
        (sqrt-iter x (+ guess 1))
    )
)

(define (sqrt x) (sqrt-iter x 1))

(sqrt 4)