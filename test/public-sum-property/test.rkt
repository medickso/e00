#lang racket

(require "../../e0.rkt")


(println (sum-property '(1 2 -33 4 5) (lambda (x) (> x 4))))
(println (sum-property '(-3 15 -27 18 22 13) (lambda (x) (< x 10))))
(println (sum-property '(5) even?))
(println (sum-property '() odd?))

(with-output-to-file "output"
  (lambda ()
    (println (sum-property '(1 2 -33 4 5) (lambda (x) (> x 4))))
    (println (sum-property '(-3 15 -27 18 22 13) (lambda (x) (< x 10))))
    (println (sum-property '(5) even?))
    (println (sum-property '() odd?)))
  #:exists 'replace)
