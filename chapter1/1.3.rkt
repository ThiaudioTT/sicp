; Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.

#lang sicp

; helper functions
(define (square x) (* x x))

(define (sumOfSquares x y)
  (+ (square x) (square y)))

; the approach here is to get the min number and then square the others
(define (sumOfLargestSquares a b c)
    (cond 
        ( (and (<= a b) (<= a b)) 
            (sumOfSquares b c) )
        ( (and (<= b c) (<= b a)) 
            (sumOfSquares a c) )
        (else (sumOfSquares a b))
    )
)

(sumOfLargestSquares 2 3 3) ; output 18
(sumOfLargestSquares 2 1 4) ; output 20