(define sumList(lambda (lis)
       (cond ((null? lis)(values 0))
             (else (+ (car lis) (sumList (cdr lis)))))))

(define charactersPerWord(lambda (lis)
       (cond ((null? lis)'())
             (else (cons(string-length(symbol->string(car lis))) ( charactersPerWord(cdr lis)))))))

(define charactersPerSentence (lambda (lis)
       (cond ((null? lis)'())
             (else (cons (sumList(charactersPerWord(car lis))) (charactersPerSentence(cdr lis)))))))

(define wordsPerSentence (lambda (lis)
       (cond ((null? lis)'())
             (else (cons (length(car lis)) (wordsPerSentence (cdr lis)))))))

(define statsDocument (lambda (lis)
       (cond ((null? lis)'(0 0 0))
             (else (list (sumList(charactersPerSentence lis)) (sumList(wordsPerSentence  lis)) (length lis))))))

(define (testA)(sumList ' (1)))
(define (testB)(charactersPerWord ' (Scheme is so wonderful)))
(define (testC)(charactersPerSentence '((Hello Mary) (Scheme is so wonderful) (See you later) (John))))
(define (testD)(wordsPerSentence '((Hello Mary) (Scheme is so wonderful) (See you later) (John))))
(define (testE)(statsDocument '((Hello Mary) (Scheme is so wonderful) (See you later) (John))))
(define (t)(testE))