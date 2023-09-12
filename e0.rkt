#lang racket
;; CIS 352 -- Fall 2023
;; Exercise 0
;; 
;; YOU MAY WORK IN A GROUP of 1-3 people. Turing in shared code is
;; permissible within your group.
;; 
;; Groupmember names here:
;; - Student A
;; - Student B
;; - Student C

(provide (all-defined-out)) ;; do not remove this
;; it exports all names from this module to use
;; by the test harness.

;; Here are some introductory Racket exercises which
;; introduce basic forms, along with recursion over lists.  

;; Find the maximum of three numbers, a, b, and c
;; TODO TODO TODO
(define (max a b c)
  ;; use if or cond and the comparison operators < and >
  'todo)

;; see tests public-max0 and public-max1

;; Define a procedure that takes three numbers as
;; arguments and returns the sum of the squares of
;; the two larger numbers.
;; TODO TODO TODO
(define (sum-larger x y z)
  ;; hint: use cond, there are several cases
  'todo)

;; see test public-sum-larger

;; In Racket, lists are represented as "linked lists"
;; of "cons cells." We will learn about cons cells soon.
;; For now, we will show a few examples. For example,
;; the list
(define l '(1 -3 5 2 1 6))

;; could also have been written as
(define l-again (cons 1 (cons -3 (cons 5 (cons 2 (cons 1 (cons 6 '())))))))

;; Exercise (no autograder tests, not graded)
;; How would you write this in Haskell?
;;
;; Answer: TODO

;; Lists are the simplest inductively-defined structures
;; in Racket. A list is either (a) the empty list value
;; null, written as '() in Racet or (b) a pair of a head
;; element (its `car`), paired with another list (its
;; `cdr`). The names car and cdr are archaic and refer
;; to the instructions implementing them (control address
;; register and control data register) on the IBM-704,
;; which was originally used to implement Lisp.

;; We can write recursive functions over lists using a fairly
;; routine recipe:

;; To define the function on a list l
(define (length l)
  ;; There are two cases:
  ;; - l is the empty list '()
  ;; - l is a cons cell with a car / cdr (or first/rest) element
  (if (empty? l) ;; check if it's empty
      ;; Return a value for the base case
      0
      ;; Else, invoke the function recursively on tail,
      ;; and do a bounded amount of work to fix up the
      ;; answer
      (add1 (length (cdr l))))) ;; also could have used rest

;; In the last line, we could have used `rest` instead of
;; `cdr`--their usages are equivalent in this context
;; You will now practice by writing three recursive functions
;; over lists

;; The first function is sum, which should sum
;; every element of the list
;; TODO TODO TODO
(define (sum l)
  (if (empty? l)
      0
      ;; hint: invoke the `sum` function recursively on (rest l),
      ;; then add the value of the first element, which you
      ;; can get with `(first l)`
      'todo))

;; see test public-sum

;; The second is (sum-positives l), which returns the
;; sum of all non-negative values in the list l.
;; TODO TODO TODO
(define (sum-positives l)
  ;; hint: consider using cond (there are three interesting cases)
  'todo)

;; see test public-sum-positives

;; Find the sum of all of the even elements of the list
;; TODO TODO TODO
(define (sum-evens l)
  'todo)

;; see test public-sum-evens

;; OPTIONAL (Extra Practice, **)
;;
;; Find the sum of all of the elements of f which satisfy
;; the predicate `f`.
;; l's type is list[A] and f's is A → Boolean
(define (sum-property l f)
  'todo)

;; see test public-sum-property

;; OPTIONAL (Extra Practice, ***)
;; 
;; (argmax f l) takes two parameters: a function f
;; (which takes numbers and returns numbers), and a
;; list of numbers.
;;
;; (argmax f l) should return the value x in the list
;; l such that (f x) is maximized.
;; 
;; argmax is a higher-order function, because it takes
;; f as an argument and uses it to compute the answer
(define (argmax f l)
  ;; hint: write a helper function which returns a pair of 
  (define (h l)
    'todo)
  (car (h l))) ;; you can change this--I just scaffolded it using my
               ;; code's structure

;; see test public-sum-argmax



