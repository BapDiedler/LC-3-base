.ORIG x3000
        AND R0 R0 #0
        LEA R4 tab
        STR R0 R4 #0
        ADD R0 R0 #1
        STR R0 R4 #1
        ADD R0 R0 #9
        AND R2 R2 #0
        ADD R2 R2 #10

fibo    LDR R0 R4 #0
        LDR R1 R4 #1
        ADD R4 R4 #1
        ADD R0 R0 R1
        STR R0 R4 #1
        ADD R2 R2 #-1
        BRz next
        BR fibo

next    LEA R0 tab2
        lea R3 tab
        AND R1 R1 #0
        ADD R1 R1 #12
        AND R2 R2 #0

sum     LDR R4 R3 #0
        ADD R2 R2 R4
        STR R2 R0 #0
        ADD R3 R3 #1
        ADD R0 R0 #1
        ADD R1 R1 #-1
        BRz fini
        BR sum

fini    HALT
tab .BLKW #12
tab2 .BLKW #12
.END