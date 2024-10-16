.ORIG x3000 ;remarque: la pile ne descend pas mais monte.
Main    LEA R1 arr
        JSR strlen
        AND R1 R1 #0 ;première moitié du tableau
        AND R2 R2 #0 ;première moitié négative du tableau
        ADD R0 R0 #-1
loop    ADD R3 R0 R2
        BRnz end
        LEA R3 arr
        ADD R4 R3 R1
        ADD R3 R3 R0
        JSR swap
        ADD R0 R0 #-1
        ADD R2 R2 #-1
        ADD R1 R1 #1
        BR loop
end     HALT

strlen  ADD R6 R6 #1
        STR R7 R6 #0
        LDR R0 R1 #0
        BRz fin
        ADD R1 R1 #1
        JSR strlen
        ADD R0 R0 #1
	LDR R7 R6 #0
        ADD R6 R6 #-1
        RET
fin	AND R0 R0 #0
        LDR R7, R6, #0
        ADD R6, R6, #-1
        RET
; autres sous-routines
swap    ADD R6 R6 #1 ;ajout des deux adresses dans la pile
        STR R3 R6 #0
        ADD R6 R6 #1
        STR R4 R6 #0

        LDR R3 R3 #0 ;sauvegarde de la valeur en mémoire de R3
        ADD R6 R6 #1
        STR R3 R6 #0
        ; échange des deux valeurs
        LDR R3 R4 #0
        LDR R4 R6 #-2
        STR R3 R4 #0

        LDR R3 R6 #0
        LDR R4 R6 #-1
        STR R3 R4 #0

        ADD R6 R6 #-3
        RET

arr .STRINGZ "abababccccdedede"
; autres constantes ou données statiques
.END