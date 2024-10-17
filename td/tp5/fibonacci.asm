.ORIG x3000
        LEA R4 arr
        AND R0 R0 #0
        STR R0 R4 #0    ;add first value
        ADD R0 R0 #1
        STR R0 R4 #1    ;add second value
        AND R2 R2 #0
        ADD R2 R2 #10
        ;fibonacci function
fibo    LDR R0 R4 #0
        LDR R1 R4 #1
        ADD R4 R4 #1
        ADD R0 R0 R1
        STR R0 R4 #1
        ADD R2 R2 #-1
        BRp fibo
        HALT

arr .BLKW #12
.END