;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 27 (Composing Functions)|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Exercise 27

;2.3 Composing Functions
;
;1. The problem statement specifies how the number of attendees
;depends on the ticket price. Computing this number is clearly
;a separate task and thus deserves its own function definition:

(define (attendees ticket-price)
  (- INITIAL_ATTENDEES
     (* (- ticket-price INITIAL_PRICE) (/ ATTENDEES_CHANGE PRICE_CHANGE))))

;2. The revenue is exclusively generated by the sale of tickets, meaning
;it is exactly the product of ticket price and number of attendees:

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

;3. The cost consists of two parts: a fixed part ($180)
;and a variable part that depends on the number of attendees.
;Given that the number of attendees is a function of the ticket price,
;a function for computing the cost of a show must also consume
;the ticket price so that it can reuse the attendees function:

(define (cost ticket-price)
  (+ PERFORMANCE_COST
     (* COST_PER_ATTENDEE (attendees ticket-price))))

;4. Finally, profit is the difference between revenue and costs
;for some given ticket price:

(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

(define INITIAL_ATTENDEES 120)
(define INITIAL_PRICE 5.0)
(define ATTENDEES_CHANGE 15)
(define PRICE_CHANGE 0.10)
(define PERFORMANCE_COST 180)
(define COST_PER_ATTENDEE 0.04)


(profit 5)