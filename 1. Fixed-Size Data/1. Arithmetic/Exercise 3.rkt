;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;(string-length "42")

;(+ (string-length "hello world") 20)

;(+ (string-length (number->string 42)) 2)

; Exercise 3A and 3B

(define str "helloworld")
(define under_score "_")
(define i 5)

(define hello (substring str 0 i))
(define world (substring str i 10))
(define hello_no_w (substring str 0 4))


(string-append hello under_score world)
(string-append hello_no_w under_score world)


