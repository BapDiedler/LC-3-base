.ORIG x3000
        LEA R0 chaine

        LD R2 a

        LD R3 e
        NOT R3 R3
        ADD R3 R3 #1

loop    LDR R4 R0 #0
        BRz fini
        ADD R4 R4 R3
        BRz change
        ADD R0 R0 #1
        BR loop

change  STR R2 R0 #0
        ADD R0 R0 #1
        BR loop


fini    HALT
chaine  .STRINGZ "Hello TheoTime"
a       .STRINGZ "a"
e       .STRINGZ "e"
.END