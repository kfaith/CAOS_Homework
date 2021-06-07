main:

    .data
    buffer: .space 20
    EnterChar:  .asciiz "Enter Scale: "
    EnterTemp:  .asciiz "Enter temperature: "
    CelsiusTemp:  .asciiz "Celsius Temperature: "
	FarenheitTemp: .asciiz "Farenheit Temperature: "
	newLine: .asciiz "\n"
	doneMessage: .asciiz "done"
    
.text

loop:
    la $a0, EnterChar       # print out enter scale
    li $v0, 4			 
    syscall

    li $v0, 8       		# reads string from user
    la $a0, buffer  		# allot the byte space for string
    li $a1, 20      		# allot the byte space for string
    syscall
    move $t0, $a0  		    # save input to t0


    lb $a0, 0($a0)  		#Get the char
    beq $a0, 70, Farenheit  #If F, got to Farenheit
    beq $a0, 67, Celsius    #If C, go to Celsius
    beq $a0, 81, Exit       #If Q, go to Exit
    syscall
    

Farenheit: 				    #If Farenheit, do farenheit calculations
	la $a0, EnterTemp 	    #Outputs the prompt for entering temperature
    li $v0, 4
    syscall
    
    li $v0, 5 				#allows input for a number
    syscall
    move $t3, $v0
	
    sub $t3, $t3, 32		#subtracts
    mul $t3, $t3, 5			#multiplies
    div $t3, $t3, 9			#divides
    
    	
	la $a0, CelsiusTemp 	#Outputs the prompt for Celsius
    li $v0, 4
    syscall
	
	
	move $a0, $t3
	
    li $v0, 1				#prints the integer
    syscall
	
	la $a0, newLine			#prints a newLine
	li $v0, 4
	syscall
	 
j loop


Celsius: 					#If Celsius, do celsius calculations
	la $a0, EnterTemp 		#Outputs the prompt for entering temperature
    li $v0, 4
    syscall
    
    li $v0, 5 				#allows input for a number
    syscall
    move $t2, $v0
    
    mul $t2, $t2, 9			#multiplies 
    div $t2, $t2, 5			#divides
    add $t2, $t2, 32		#add
	
	la $a0, FarenheitTemp 	#Outputs the prompt for Farenheit
    li $v0, 4
    syscall
	
	move $a0, $t2
    
    li $v0, 1				#prints the integer
    syscall
    
	la $a0, newLine			#prints a newLine	
	li $v0, 4
	syscall
    
j loop


Exit: 						#If exit, exit the program.

	la $a0, doneMessage		#prints doneMessage
	li $v0, 4
	syscall
	
	li $v0,10				#exits program
	syscall