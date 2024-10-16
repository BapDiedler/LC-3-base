.ORIG x3000

        LEA R0 chaine
        LD R2 a
        LD R4 A
        LD R3 z

        NOT R3 R3
        ADD R3 R3 #1

        NOT R2 R2
        ADD R2 R2 #1

        ADD R4 R2 R4

loop    LDR R1 R0 #0
        BRz fin
        ADD R5 R1 R2
        BRn pasMinuscule
        ADD R5 R1 R3
        BRp pasMinuscule
        ADD R1 R1 R4
        STR R1 R0 #0

pasMinuscule
        ADD R0 R0 #1
        BR loop

fin     HALT

chaine  .STRINGZ "ABCD!-]abcd"
a       .STRINGZ "a"
z       .STRINGZ "z"
A       .STRINGZ "A"
.END
