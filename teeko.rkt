#lang racket

;;(require racket/vector)
(require math/array)

;; 1a. DATA DEFINITIONS
;; #1: A Teeko is a structure: (make-Teeko (make-vector 25)).
(define-struct Teeko [gb] #:transparent)
;; 1b. CONSTANT DEFINITIONS

;;(define tko (make-Teeko #(A B C D E F G H I J K L M N O P Q R S T U V W X Y)))

;;(Teeko-gb tko)
;;(vector-ref (Teeko-gb tko) 5)

(define tko (make-Teeko (array #[ #['A 'B 'C 'D 'E] 
				  #['F 'G 'H 'I 'J]
				  #['K 'L 'M 'N 'O]
				  #['P 'Q 'R 'S 'T]
				  #['U 'V 'W 'X 'Y]])))

tko

;;mya
;;(array-indexes-ref mya (array #['#(0 0) '#(1 1)]))
;;(define arr (array #[#[1 2] #[10 20]]))
;;(define idxs (array #['#(0 0) '#(1 1)]))
;;(array-indexes-ref arr idxs)

;; 1c. FUNCTION WISH LIST

;; 2a. FUNCTION SIGNATURE: Teeko -> Teeko
;; 2b. PURPOSE STATEMENT: To consume a Teeko and display the T
;; 2c. HEADER
;; 3a. FUNCTIONAL EXAMPLES
;; #1: Given: , Expect:
;; 3b. TESTS
#;1 
;; 4. TEMPLATE
;; 5. CODE

;; 2a. FUNCTION SIGNATURE: Teeko -> Teeko
;; 2b. PURPOSE STATEMENT: Initiates the game with an empty Teeko (tko) game board.
;; 2c. HEADER
;; (define (teeko-prog tko) tko)
;; 3a. FUNCTIONAL EXAMPLES & TESTS: NA
;; 4. TEMPLATE
;; (define (teeko-prog tko)
;;  (... (Teeko-gb tko) ...))
;; 5. CODE
#;(define (teeko-prog tko)
(big-bang tko
	  [on-tick tock]
	  [to-draw render]
	  [on-key handle-ke]
	  [stop-when stop?]
	  ))


;;(teeko-prog (make-Teeko ...))
