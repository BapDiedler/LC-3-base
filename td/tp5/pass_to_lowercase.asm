.ORIG x3000
        LEA R0 chaine
        LD R2 a
        LD R4 a_up
        LD R3 z
        NOT R3 R3
        ADD R3 R3 #1    ;-z
        NOT R2 R2
        ADD R2 R2 #1    ;-a
        ADD R4 R2 R4    ;A-a
        
loop    LDR R1 R0 #0
        BRz fin         ;end of file
        ADD R5 R1 R2
        BRn no_low      ;before lowercase
        ADD R5 R1 R3
        BRp no_low      ;after lowercase
        ADD R1 R1 R4
        STR R1 R0 #0    ;pass to uppercase
no_low  ADD R0 R0 #1
        BR loop
fin     HALT

chaine  .STRINGZ "ABCD!-]abcd"
a       .STRINGZ "a"
z       .STRINGZ "z"
a_up       .STRINGZ "A"
.END
