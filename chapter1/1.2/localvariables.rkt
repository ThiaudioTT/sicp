#lang sicp

(define (multiply5 y) 
    (define x 5) ; this isn't a parameter, it's a local variable
    (* x y) ; if you comment this line, the code doesn't work
)

(multiply5 2)
