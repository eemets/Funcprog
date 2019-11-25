(define (insert-between v xs)
  (cond ((null? xs) xs)
        ((null? (cdr xs)) xs)
        (else (cons (car xs)
                    (cons v (insert-between v (cdr xs)))))))

(define (display-all . vs)
  (for-each display (insert-between "" vs)))

(define (ln x)
  (display-all x "ln" x " - " x " + C")
  )

(define (arctg x)
  (display-all x " arctg" x " -1/2" " ln(1+" x"^3)" " + C" )
)