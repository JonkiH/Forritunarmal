(define sumList(lambda (lis)
       (cond ((null? lis)(values 0))
             (else (+ (car lis) (sumList (cdr lis)))))))

(define charactersPerWord(lambda (lis)
       (cond ((null? lis)'())
             (else (cons(string-length(symbol->string(car lis))) ( charactersPerWord(cdr lis)))))))

(define charactersPerSentence (lambda (lis)
       (cond ((null? lis)'())
             (else (cons (sumList(charactersPerWord(car lis))) (charactersPerSentence(cdr lis)))))))

















(define (testA)(sumList ' (1)))
(define (testB)(charactersPerWord ' (Scheme is so wonderful)))
(define (testC)(charactersPerSentence '((Hello Mary) (Scheme is so wonderful) (See you later) (John))))

(define (t)(testC))