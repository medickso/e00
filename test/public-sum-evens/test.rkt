#lang racket

(require "../../e0.rkt")

(println (sum-evens '(1 2 -33 4 5)))
(println (sum-evens '(-3 15 -27 18 22 13)))
(println (sum-evens '()))
(println (sum-evens '(-15 30 -10)))
(println (sum-evens '(15)))

(with-output-to-file "output"
  (lambda ()
    (println (sum-evens '(1 2 -33 4 5)))
    (println (sum-evens '(-3 15 -27 18 22 13)))
    (println (sum-evens '()))
    (println (sum-evens '(-15 30 -10)))
    (println (sum-evens '(15))))
  #:exists 'replace)
