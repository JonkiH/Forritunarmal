
(define (maxElement li)(apply max li))

(define (elementAtIndex li index) (list-ref li (- index 1)))

(define compress (lambda(lis)
  (cond ((null? lis)'())
        ((null? (cdr lis)) lis)
        ((eq? (car lis) (cadr lis))
         (compress (cdr lis)))
         (else (cons (car lis) (compress (cdr lis)))))))


(define maxofmax (lambda(lis)
  (maxElement (map maxElement lis))))
   

(define (split li no) (split! li no (list) (list)))
(define split! (lambda (lis no one two)
    (cond ((and (null? lis) (null? one) (null? two))
           (list '() '()))     
        ((< 1 no)
         (split! (cdr lis) (- no 1) (cons (car lis) one) two))
        ((= 0 no)
         (list one lis))
        (else
         (list (reverse (cons (car lis) one)) (cdr lis))))))



(define (ll)(list ' 1 2 3 10 5 6 7 ))
(define (tA)(maxElement '(5 3 7 2 6 1 4)))
(define (tB)(elementAtIndex '(a b c d e f) 4))
(define (tC)(compress '(a a a b b c c c d d d d e f f))) 
(define (tD)(maxofmax '((5 3 6 2) (1 6 2 7) (7 3 8 2 9) (6 2 4 4 5 6 1)))) 
(define (tE)(split '() 1)) 
(define (tt)(elementAtIndex (compress '(a a a b b c c c d d d d e f f))4))
(define (t)(te))