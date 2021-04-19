;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 235-236) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;14.1 Similarities in Functions

;------------------------------

; String Los -> Boolean
; determines whether l contains the string s
(define (contains? s l)
  (cond
    [(empty? l) #false]
    [else (or (string=? (first l) s)
              (contains? s (rest l)))]))

(define dog-and-cat (list "dog" "cat"))

; Los -> Boolean
; does l contain "dog"
(define (contains-dog? l)
  (contains? "dog" l))

; Los -> Boolean
; does l contain "cat"
(define (contains-cat? l)
  (contains? "cat" l))

(contains-dog? dog-and-cat)
(contains-cat? dog-and-cat)

;--------------------------------
;Exercise 235. Use the contains? function to define functions that search for "atom", "basic", and "zoo", respectively.
(define exercise-list (list "atom" "basic" "zoo"))

; Los -> Boolean
; does l contain "atom"
(define (contains-atom? l)
  (contains? "atom" l))

; Los -> Boolean
; does l contain "basic"
(define (contains-basic? l)
  (contains? "basic" l))

; Los -> Boolean
; does l contain "zoo"
(define (contains-zoo? l)
  (contains? "zoo" l))

(contains-atom? exercise-list)

(contains-basic? exercise-list)

(contains-zoo? exercise-list)

;--------------------------------
;Exercise 236. Create test suites for the following two functions.

; - 1 -
; Lon -> Lon 
; adds 1 to each item on l
(check-expect (add1* (list 1 2 3)) (list 2 3 4))
;(define (add1* l)
;  (cond
;    [(empty? l) '()]
;    [else
;     (cons
;       (add1 (first l))
;       (add1* (rest l)))]))

; - 2 -
; Lon -> Lon
; adds 5 to each item on l
(check-expect (plus5 (list 1 2 3)) (list 6 7 8))
;(define (plus5 l)
;  (cond
;    [(empty? l) '()]
;    [else
;     (cons
;       (+ (first l) 5)
;       (plus5 (rest l)))]))




;Then abstract over them. Define the above two functions in terms of the abstraction
;as one-liners and use the existing test suites to confirm that the revised definitions
;work properly. Finally, design a function that subtracts 2 from each number on a given list.


; Lon -> Lon
; abstarcted function to perform math operations 
(define (do-math-operation l num)
  (cond
    [(empty? l) '()]
    [else
     (cons
       (+ (first l) num)
       (do-math-operation (rest l) num))]))

; Lon -> Lon
; adds 1 the each element in the list
(define (add1* l)
   (do-math-operation l 1))


; Lon -> Lon
; adds 5 the each element in the list
(define (plus5 l)
   (do-math-operation l 5))

; Lon -> Lon
; substracts 2 from the each element in the list
(check-expect (subtract2 (list 10 7 3)) (list 8 5 1))
(define (subtract2 l)
  (do-math-operation l -2))


