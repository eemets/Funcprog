(define y (cons (list 1 2) (list 3 4)))

(define (count x)
  (cond ((null? x) 1)
        ((not (pair? x))
         (if (and (even? x) (< x 100) (> x 0)) (* x x) 1))
        (else (* (count (car x))
                 (count (cdr x))))))