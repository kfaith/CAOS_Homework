.text

.globl main

main:


     li $9, 12345678		#puts 12345678 in register 9
     li $10, 10				#puts 10 in register 10

     divu $9, $10           # does 12345678/10 and puts LO as 1234567 and HI as 8
     mflo $11               # moves LO to register 11(1234567)
     mfhi $12               # moves HI to register 12(8)
     mul $13, $12, $10      # multiplies register 12 by 10
	 
	 divu $11, $10			# does 1234567/10 and puts LO as 123456 and HI as 7
	 mflo $11 				# moves LO to register 11(123456)
	 mfhi $12				# moves HI to register 12(7)
	 add $15, $13, $12		# adds 80 + 7 for 87 and puts it in register 15
	 
	 divu $11, $10			# does 123456/10 and puts LO as 12345 and HI as 6
	 mflo $11 				# moves LO to register 11(12345)
 	 mfhi $12				# moves HI to register 12(6)
	 mul $15, $15, $10	 	# multiplies 87 by 10, so 870.
	 add $15, $15, $12		# adds 870 + 6 and puts it in register 15.
	 
	 divu $11, $10			# does 12345/10 and puts LO as 1234 and HI as 5
	 mflo $11 				# moves LO to register 11(1234)
 	 mfhi $12				# moves HI to register 12(5)
	 mul $15, $15, $10	 	# multiplies 876 by 10, so 8760.
	 add $15, $15, $12		# adds 8760 + 5 and puts it in register 15.
	 
	 divu $11, $10			# does 12345/10 and puts LO as 123 and HI as 4
	 mflo $11 				# moves LO to register 11(123)
 	 mfhi $12				# moves HI to register 12(4)
	 mul $15, $15, $10	 	# multiplies 8765 by 10, so 87650.
	 add $15, $15, $12		# adds 87650 + 4 and puts it in register 15.
	 
	 divu $11, $10			# does 12345/10 and puts LO as 12 and HI as 3
	 mflo $11 				# moves LO to register 11(12)
 	 mfhi $12				# moves HI to register 12(3)
	 mul $15, $15, $10	 	# multiplies 87654 by 10, so 876540.
	 add $15, $15, $12		# adds 876540 + 3 and puts it in register 15.
	 
	 divu $11, $10			# does 12345/10 and puts LO as 1 and HI as 2
	 mflo $11 				# moves LO to register 11(1)
 	 mfhi $12				# moves HI to register 12(2)
	 mul $15, $15, $10	 	# multiplies 876543 by 10, so 8765430.
	 add $15, $15, $12		# adds 8765430 + 2 and puts it in register 15.
	 
	 divu $11, $10			# does 12345/10 and puts LO as 0 and HI as 1
	 mflo $11 				# moves LO to register 11(0)
 	 mfhi $12				# moves HI to register 12(1)
	 mul $15, $15, $10	 	# multiplies 8765432 by 10, so 87654320.
	 add $15, $15, $12		# adds 87654320 + 1 and puts it in register 15.
	 
#My answer is stored in register 15, and the original number is stored in register 9.
#I was not allowed to change register a1 and a2.
