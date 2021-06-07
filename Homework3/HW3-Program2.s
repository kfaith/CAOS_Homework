main:
.text

li $8,1  	 	  #sets the register to 1
li $9,1   	 	  #sets the register to 1
li $10,1  	 	  #sets the register to 1
li $12, 0    	  #sets the register to 0
li $11,  100 	  #sets the register to 100(For the max number of loops, causes overflow)(if you want to check if the logic is correct you can change the number to like 20)

loop:
add $12,$9,$10    # x + y = z
add $9, $0, $10   # x = y
add $10, $0, $12  # y = z
addi $8,$8,1      # This is the counter, counts to 100. 

exit:			  # Start of exit function

bne $8, $11, loop # keep looping until register 8 reaches 100.