main:

.text
li $s0,1 		   #initializes start of loop to 1.
li $8,0            #sets all of the registers to 0.
li $9,0 
li $10,0 

loop:
add $10,$10,$s0    #add to entire sum
div $s1,$s0,2      #divide number by 2
mfhi $s1           #gets remainder
bnez $s1,oddNumber #if reminder not zero it's odd number
add $8,$8,$s0      #else even number so add to even total

j exit			   #go to exit on line 20

oddNumber:		   #oddNumber function start
add $9,$9,$s0	   #add to odd total

exit:

addi $s0,$s0,1	   #add 1 to the counter
ble $s0,100,loop   #loop until 100



