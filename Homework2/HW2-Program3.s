
.text

.globl main

main:
    li $10,0x10010000    #loads the base address(0x10010000) to register 10
	
    lw $11,0($10)        #reads the .data x value and stores it in register 11
    mul $12,$11,$11      #x * x then stores in register 12
    mul $12,$12,$11      #(x*x) * x then stores in register 12
	
    lw $13,4($10)        #reads the next value in .data which is a(-3)
    mul $12,$12,$13      #register 12 * register 13(a)
    mul $13,$11,$11      #multiplies register 11 by register 11 (x*x) stores in 13
	
    lw $14,8($10)        #read the next value in .data which is c(3)
    mul $14,$14,$13      #multiplies register 14 by register 13
    add $14,$14,$12      #add register 14 and register 12
	
    lw $13,12($10)       #read the next value in .data which is d(9)
    mul $13,$13,$11      #multiplies register 13 by register 11 and stores it in register 13
    add $14,$14,$13      #adds register 14 and register 13 and stores it in register 14
	
    lw $13,16($10)       #read the next value in .data which is e(-24)
    add $14,$14,$13      #add register 14 and 13 and puts it in register 14.
	
#DATA SEGMENT
.data
x:     .word    1
a:     .word   -3
c:     .word    3
d:     .word    9
e:     .word  -24
