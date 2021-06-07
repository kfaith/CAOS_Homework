
.text

.globl main

main:



	li $9, 1600000        # this puts x(1,600,000) into register 9. 
	li $10, 80000         # this puts y(80,000) into register 10.
	li $11, 400000        # this puts z(400,000) into register 11.


	srl $9, $9, 4 	      # this right shifts register 9's bits 4 bits.
	srl $10, $10, 4       # this right shifts register 9's bits 4 bits.
	srl $11, $11, 4       # this right shifts register 9's bits 4 bits.
	
	
	multu $9, $10         # this multiplies register 9 by register 10 (x*y)
	mflo $13 			  # this moves from the LO register to register 13.

	
	divu $13, $11 		  # this divides register 13(x*y) by register 11(40,000 right shifted)
	mflo $13 			  # this moves from the LO register to register 13.
	
	sll $13, $13, 4		  # this left shifts the 13th register by 4 bits then replaces register 13.
	
