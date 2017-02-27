#lang racket

(require 2htdp/universe)
(require 2htdp/image)

;; 1a. DATA DEFINITIONS
;; #1: A Teeko is a structure: (make-Teeko (make-array #(5 5) 'X))
;;(define-struct Teeko [gb] #:transparent)
;; 1b. CONSTANT DEFINITIONS
(define WIDTH 1000)
(define HEIGHT 150)
(define EMPTY_SCENE (empty-scene WIDTH HEIGHT))
(define GAMEBOARD_FONT_SIZE 12)


#|(define tko (make-Teeko (array #[ #['A 'B 'C 'D 'E] 
				    #['F 'G 'H 'I 'J]
				    #['K 'L 'M 'N 'O]
				    #['P 'Q 'R 'S 'T]
				    #['U 'V 'W 'X 'Y]])))

tko
(define tko   '(A B C D E
		  F G H I J
		  K L M N O
		  P Q R S T 
		  U V W X Y ))
tko
|#

;; 2a. FUNCTION SIGNATURE: 1String String -> Image
;; 2b. PURPOSE STATEMENT: Consumes a 1String of the character to convert to 
;; an image and a String of the color for the character and circumscribing
;; circle; returns an image of the character in a circle of the color 
;; consumed.
;; 2c. HEADER
;; (define (image-chr chr clr) EMPTY_SCENE)
;; 3. FUNCTIONAL EXAMPLES & TESTS
;;(check-expect (image-chr 'A "white") (text "A" GAMEBOARD_FONT_SIZE "white"))
;;(check-expect (image-chr 'A "white") (circle 15 "solid" "white"))
;; 4. TEMPLATE
;; (define (image-chr chr clr) 
;;   (... chr ... clr ...))
;; 5. CODE
(define (image-chr chr clr) 
  (circle 15 "solid" clr))

(image-chr "a" "white")

;;mya
;;(array-indexes-ref mya (array #['#(0 0) '#(1 1)]))
;;(define arr (array #[#[1 2] #[10 20]]))
;;(define idxs (array #['#(0 0) '#(1 1)]))
;;(array-indexes-ref arr idxs)

;; 1c. FUNCTION WISH LIST
;render
;tock
;on-key

;; 2a. FUNCTION SIGNATURE: Teeko -> Image
;; 2b. PURPOSE STATEMENT: To consume a Teeko (tko) and return and image of 
;; the game board.
;; 2c. HEADER
;;(define (render tko) EMPTY_SCENE)
;; 3a. FUNCTIONAL EXAMPLES & TESTS
;;(check-expect (render tko) EMPTY_SCENE)
;; 4. TEMPLATE
;;(define (render tko)

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
#|;(define (teeko-prog tko)
(big-bang tko
	  [on-tick tock]
	  [to-draw render]
	  [on-key handle-ke]
	  [stop-when stop?]
	  ))
|#

;;(teeko-prog (make-Teeko ...))
