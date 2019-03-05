;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;(place-image
;
; (overlay (triangle 40 "solid" "tan")
;          100 100
;         (ellipse 6 45 "solid" "black"))
;              100 100
;             (empty-scene 200 200))

(place-image
 (above
 (overlay/offset
   (overlay/offset (triangle 35 "solid" "green")
       0 16
     (triangle 40 "solid" "green"))
       0 26
     (triangle 50 "solid" "green"))
     (line 0 30 "black"))
       100 100
     (empty-scene 200 200))

(overlay/xy
   (overlay/xy (ellipse 70 70 "outline" "black")
               10
               15
               (ellipse 10 10 "solid" "forestgreen"))
   20
   15
   (ellipse 10 10 "solid" "forestgreen"))





