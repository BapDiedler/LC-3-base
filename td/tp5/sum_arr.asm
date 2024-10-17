.ORIG x3000
crearr  LEA R0 arr
        AND R1 R1 #0
        ADD R1 R1 #10   ;array size = 10
        AND R2 R2 #0    ;sum = 0
        ;array initialisation
loop    STR R2 R0 #0
        ADD R2 R2 #1
        ADD R0 R0 #1
        ADD R1 R1 #-1
        BRp loop
        ;registers update
        LEA R0 arr
        AND R1 R1 #0
        ADD R1 R1 #10   ;array size = 10
        AND R2 R2 #0    ;sum = 0
        ;sum function
sum     LDR R3 R0 #0
        ADD R2 R2 R3
        STR R2 R0 #0
        ADD R0 R0 #1
        ADD R1 R1 #-1
        BRp sum
        HALT

arr .BLKW #10
.END