#lang racket
(printf"Calculo de bhaskara, digite os valores:\n")
(printf "A=")
(define a(read))
(printf "B=")
(define b(read))
(printf "C=")
(define c(read))
(printf "\n\n")

;calcula o delta
(define delta
  (+ (expt b 2)(* -4 a c))
)

;valor do x1
(define x1
  (/ (+(- b) (sqrt delta)) (* 2 a))
)

;valor do x2
(define x2
  (/(-(- b)(sqrt delta))(* 2 a))
)

;valor do Vx
(define Vx
  (/(- b)(* 2 a))
)

;valor do Vy
(define Vy
  (/(* delta -1)(* 4 a))
)

;chama todos os métodos e imprime os resultados
(printf(~a "A= " a))
(printf "\n")
(printf(~a "B= " b))
(printf "\n")
(printf(~a "C= " c))
(printf "\n")
(printf(~a "delta= " delta))
(printf "\n")
(printf(~a "x1= " x1))
(printf "\n")
(printf(~a "x2= " x2))
(printf "\n")
(printf(~a "Vx= " Vx))
(printf "\n")
(printf(~a "Vy= " Vy))
(printf "\n\n")


;adiciona os resultados em um arquivo txt
(require 2htdp/batch-io)
(write-file "bhaskara.txt" (format"Resultados da conta de Bhaskara:\n\nA: ~a\nB: ~a\nC: ~a\ndelta: ~a\nx1: ~a\nx2: ~a\nVx: ~a\nVy: ~a" a b c delta x1 x2 Vx Vy))

