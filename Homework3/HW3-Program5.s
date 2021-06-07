.data
size:     .word 12
array:    .word 50 12 52 -78 03 12 99 32 53 77 47 00

elementPrompt: .asciiz "What element: "
outputPrompt: .asciiz "Index: "
.text
.globl main
main:  

	la $a0,elementPrompt  #Prints out the what element prompt
	li $v0,4
	syscall

	li $v0,5			   #reads integer
	syscall

	move $t0,$v0			#moves integer to t0

	la $s0,array			#loads address of array
	lw $t1,size				#loads 12 int t1
	li $t3,0   				#loads 0 into t3


searchArray:   				#start of searchArray

	beq $t1,$0,exit         #if t1 is equal to 0, then go to exit(Went through whole array)
	addi $t3,$t3,1
	lw $t2,0($s0)
	bne $t2,$t0,next		#if t2 doesnt equal t0, go to next
	
	la $a0,outputPrompt		#prints output of the element		
	li $v0,4
	syscall
	
	li $v0,1				#prints integer
	
	move $a0,$t3			
	syscall

j searchComplete


next:						#start of next function
	addi $s0,$s0,4			#moves up the array to check next element
	addi $t1,$t1,-1			#decrements counter.

j searchArray				#go back to search array function

exit:  		   				#terminates program
	li $v0,10
	syscall
	
j main