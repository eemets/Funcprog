(define (insert-between v xs)
  (cond ((null? xs) xs)
        ((null? (cdr xs)) xs)
        (else (cons (car xs)
                    (cons v (insert-between v (cdr xs)))))))

(define (display-all . vs)
  (for-each display (insert-between "" vs)))

(define (secondPolynom pair1 pair2)
  (display-all "(" (car pair1) "+" (car pair2) ")" "(" (car pair1) "-" (car pair2) ")"))

(define (thirdPolynom symbol pair1 pair2)
  (if (eq? symbol -)
      (display-all "(" (car pair1) "-" (car pair2) ")" "(" (car pair1) "^2+" (car pair1) (car pair2) "+" (car pair2) "^2)" )
      (display-all "(" (car pair1) "+" (car pair2) ")" "(" (car pair1) "^2-" (car pair1) (car pair2) "+" (car pair2) "^2)" )))

(define (factorize symbol pair1 pair2)
  (if (eq? (car (cdr pair1)) 2)
      (secondPolynom pair1 pair2)
      (thirdPolynom symbol pair1 pair2)))