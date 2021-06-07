main:


.data
string:   .asciiz    "Is  this a dagger    which I see before me?"
newline: .asciiz     "\n"

.text

la $t0,string 		#Load the string int t0



loop:				#starts loop
lb $a0,0($t0)		#gets the first char
beq $a0,0,exit		#if end of string, exit
beq $a0,32,checkSpace#if space, go to space
li $v0,11			#else print
syscall
addi $t0,$t0,1		#increment letters
j loop				#loop again


checkSpace:			#starts checkSpace function
addi $t0,$t0,1		# increments letter
j loop				#go back to loop


exit:				#terminates program
li $v0,10
syscall