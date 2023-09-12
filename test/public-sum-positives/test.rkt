#lang racket

(require "../../e0.rkt")

(println (sum-positives '(1 2 -33 4 5)))
(println (sum-positives '(-3 15 -27 18 22 13)))
(println (sum-positives '()))
(println (sum-positives '(-15)))
(println (sum-positives '(15)))

(with-output-to-file "output"
  (lambda ()
    (println (sum-positives '(1 2 -33 4 5)))
    (println (sum-positives '(-3 15 -27 18 22 13)))
    (println (sum-positives '()))
    (println (sum-positives '(-15)))
    (println (sum-positives '(15))))
  #:exists 'replace)
