#lang racket

(require "../../e0.rkt")


(println (max 8 8 3))
(println (max 6 5 5))
(println (max 4 5 5))
(println (max 5 5 4))

(with-output-to-file "output"
  (lambda ()
    (println (max 8 8 3))
    (println (max 6 5 5))
    (println (max 4 5 5))
    (println (max 5 5 4)))
  #:exists 'replace)
