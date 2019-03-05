;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 9 - final|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

#| instructions for exercise 11:
create an expression that converts whatever in represents to a number. For a
string, it determines how long the string is; for an image, it uses the area;
for a number, it decrements the number, unless it is already 0 or negative;
for #true it uses 10 and for #false 20.
|#

#|

I believe that the question is asking for a single expression,
not one for each type.
Your expression for Number works for all cases where 'in' is a number.
Similarly, your expression for Boolean (or subexpression of the full answer)
should work for all cases where 'in' is a Boolean value. It's the same idea.


The exercise doesn't say what the result should be if none of
the cases hold (if 'in' is not one of these four types).
You chose 'false', which is a reasonable choice.
The point of the exercise is just to give you practice in working with
predicates and complex conditional expressions.

-----------------------------------------
String: "hello"
Image: (rectangle 10 20 "solid" "blue")
Number 11, -11, 0
Boolean: false, true
||
\/
-----------------------------------------

|#

(define in ...)
 
(if (string? in)
    ;string
    (string-length in) ;how long the string is
       (if (image? in)
           ;image
           (* (image-width in) (image-height in)) ;image area
           (if (number? in)
               ;number
               (if (> in 0)
                   (- in 1) ;positive number
                   in) ; negative number or zero
               (if (boolean? in)
                   ;boolean
                   (if in
                       10 ;true
                       20) ;false
false))))