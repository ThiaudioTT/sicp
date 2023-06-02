#lang sicp

; f(n) = n if n < 3 else:
;   f(n - 1) + 2f(n - 2) + 3f(n - 3)


; recursive process:
(define (f n)
    (if (< n 3)
        n
        (+ 
            (f (- n 1))
            (* 2 (f (- n 2)))
            (* 3 (f (- n 3)))
        )
    )
)

(f 3) ; expected output: 4
(f 10)

; Iterative process

