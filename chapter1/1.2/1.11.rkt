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
(f 4) ; expected output: 11

; Iterative process

; I'm completely cluesless on how to do this one, but I know how it works.
(define (f-iterative n)
  (define (f-loop n-1 n-2 n-3 nth) ; the f-iterative has more than one parameter, defining isn't considered a parameter
    (if (= n nth)
        n-1
        (f-loop 
            (+ n-1 (* 2 n-2) (* 3 n-3))
            n-1
            n-2
            (+ 1 nth))))

  (if (< n 3)
      n
      (f-loop 2 1 0 2)))

(f-iterative 3) ; expected output: 4
(f-iterative 4) ; expected output: 11
