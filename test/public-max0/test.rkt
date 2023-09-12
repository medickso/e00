#lang racket

(require "../../e0.rkt")


(println (max -3 5 2))
(println (max -3 -1 -1))
(println (max 5 2 1))
(println (max 5 -10 15))

(with-output-to-file "output"
  (lambda ()
    (println (max -3 5 2))
    (println (max -3 -1 -1))
    (println (max 5 2 1))
    (println (max 5 -10 15)))
  #:exists 'replace)
