; Observe that our model of evaluation allows
; for combinations whose operators are compound expressions. Use this observation to describe the behavior of the
; following procedure:

#lang sicp

(define (a-plus-abs-b a b) ; design a function who accepts a and b as arguments
    ( (if (> b 0) ; if b is greater than 0, uses plus, otherwise minus a b
        + 
        -)
        a b )
)

(a-plus-abs-b 2 4) ; uses plus, output: 6
(a-plus-abs-b 2 -2) ; uses minus, output: 4
