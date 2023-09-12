#lang racket

(require "../../e0.rkt")

(define (f x) (- (* (+ x 2) (+ x 2))))
(define (f1 x) (- (* (- x 7) (- x 7))))

(println (argmax add1 '(5 -3 1 2)))
(println (argmax f '(1 3 5 7 2 -2 8 12 15 -20 -10 -15)))
(println (argmax f1 '(1 3 5 7 8 12 15 -20 -10 -15)))

(with-output-to-file "output"
  (lambda ()
    (println (argmax add1 '(5 -3 1 2)))
    (println (argmax f '(1 3 5 7 2 -2 8 12 15 -20 -10 -15)))
    (println (argmax f1 '(1 3 5 7 8 12 15 -20 -10 -15))))
  #:exists 'replace)
