#lang racket

(require "../../e0.rkt")

(define (square x) (* x x))
(define (sum-square x y) (+ (square x) (square y)))

(displayln
 (list (= (sum-larger 10 10 10) (sum-square 10 10))
       (= (sum-larger 1 10 10) (sum-square 10 10))
       (= (sum-larger 10 1 10) (sum-square 10 10))
       (= (sum-larger 10 10 1) (sum-square 10 10))
       (= (sum-larger 1 10 100) (sum-square 10 100))
       (= (sum-larger 1 100 10) (sum-square 10 100))
       (= (sum-larger 10 1 100) (sum-square 10 100))
       (= (sum-larger 10 100 1) (sum-square 10 100))
       (= (sum-larger 100 10 1) (sum-square 10 100))
       (= (sum-larger 100 1 10) (sum-square 10 100))))

(with-output-to-file "output"
  (lambda ()
    (displayln
     (list (= (sum-larger 10 10 10) (sum-square 10 10))
           (= (sum-larger 1 10 10) (sum-square 10 10))
           (= (sum-larger 10 1 10) (sum-square 10 10))
           (= (sum-larger 10 10 1) (sum-square 10 10))
           (= (sum-larger 1 10 100) (sum-square 10 100))
           (= (sum-larger 1 100 10) (sum-square 10 100))
           (= (sum-larger 10 1 100) (sum-square 10 100))
           (= (sum-larger 10 100 1) (sum-square 10 100))
           (= (sum-larger 100 10 1) (sum-square 10 100))
           (= (sum-larger 100 1 10) (sum-square 10 100)))))
  #:exists 'replace)
