(define sumList(lambda (lis)
                 (cond ((null? lis)(values 0))
                        (else (+ (car lis) (sumList (cdr lis)))
                       ))))





















(define (testA)(sumList ' (1)))

(define (t)(testA))