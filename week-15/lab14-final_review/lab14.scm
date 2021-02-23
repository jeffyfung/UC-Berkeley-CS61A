(define (split-at lst n)
  (cond ((null? lst) (cons lst nil))
        ((> n 0) (
            cons (cons (car lst) (car (split-at (cdr lst) (- n 1))))
            (cdr (split-at (cdr lst) (- n 1)))))
        (else (cons nil lst)))
  )


(define (compose-all funcs)
  (define (composed_helper funcs x)
        (if (null? funcs)
            x
            (composed_helper (cdr funcs) ((car funcs) x))))
  (lambda (x)
        (composed_helper funcs x))
  )

