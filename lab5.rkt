(define T (quote("hello mrs." "aaaaaaaaa" "what are you doing?" "bbbbbbbbbbbb" "good bye.")))

(define (isVowelChar char)
  (cond ((eq? char #\e) 1)
        ((eq? char #\y) 1)
        ((eq? char #\u) 1)
        ((eq? char #\i) 1)
        ((eq? char #\o) 1)
        ((eq? char #\a) 1)
        (else 0)
  )
)

(define (vowelCount sentence)
  (if(> (length sentence) 0)
  (+ (isVowelChar (car sentence)) (vowelCount(cdr sentence)))
  0)
 )

(define (maxVowelSentence word sentence)
  (if (not(null? sentence))
      (if(> (vowelCount(string->list word)) (vowelCount(string->list (car sentence))))
         (maxVowelSentence word (cdr sentence))
         (maxVowelSentence (car sentence) (cdr sentence))
         )
      word
  ) 
 )

(define delete
  (lambda (item list)
    (cond
     ((equal? item (car list)) (cdr list))
     (else (cons (car list) (delete item (cdr list)))))))

(define (sortText text)
  (if (not(null? text))
      (cons (maxVowelSentence (car text) (cdr text)) (sortText (delete (maxVowelSentence (car text) (cdr text)) text)))
  )
  
)