(define (division number)
  (/ number 2)
)

(define (functionToAllElemsInArray array function)
  (map (lambda (element) (function element))
       array)
  )