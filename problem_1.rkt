
(define (maxElement li)(apply max li))

(define (elementAtIndex li index) (list-ref li (- index 1)))

(define compress (lambda(lis)
  (cond ((null? lis)'())
        ((null? (cdr lis)) lis)
        ((eq? (car lis) (cadr lis))
         (compress (cdr lis)))
         (else (cons (car lis) (compress (cdr lis)))))))


(define (maxofmax li) 
  (maxElement (maxofmax! li (list)))
)
(define (maxofmax! li max)
  (
   if(not(null? li))
     (
      maxofmax! (cdr li) (cons (checkNested (car li)) max)
     )
     max
  )
)
(define (checkNested li)
  (maxElement li)
)

(define (split li no) (split! li no (list) (list)))
(define (split! li no one two)
  (
     if(not (null? li))(
       if(< 0 no)
       (split! (cdr li) (- no 1) (cons (car li) one) two)
       (split! (cdr li) (- no 1) one (cons (car li) two))
     )
     (if (null? one)
         (list (reverse two))
         (if (null? two)
             (list(reverse one))
             (list(reverse one) (reverse two)))
      
     )
   )
)



(define (for index max li)
  (if(<= index (length li))
     (
        
        for (+ index 1) max li
     )
     max
  )
)


(define (ll)(list ' 1 2 3 10 5 6 7 ))
(define (tA)(maxElement '(5 3 7 2 6 1 4)))
(define (tB)(elementAtIndex '(a b c d e f) 4))
(define (tC)(compress '(a a a b b c c c d d d d e f f))) 
(define (tD)(maxofmax '((5 3 6 2) (1 6 2 7) (7 3 8 2 9) (6 2 4 4 5 6 1)))) 
(define (tE)(split '(a b c d e f g) 4)) 
(define (tt)(elementAtIndex (compress '(a a a b b c c c d d d d e f f))4))
(define (t)(tc))