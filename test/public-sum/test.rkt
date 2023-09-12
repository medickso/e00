#lang racket

(require "../../e0.rkt")

(println (sum '(1 2 3 4 5)))
(println (sum '(-3 15 -27 18 22 13)))
(println (sum '()))
(println (sum '(15)))

(with-output-to-file "output"
  (lambda ()
    (println (sum '(1 2 3 4 5)))
    (println (sum '(-3 15 -27 18 22 13)))
    (println (sum '()))
    (println (sum '(15))))
  #:exists 'replace)
