        .ORIG x3000         ; Point d'entrée
        LD R0, CHAR         ; Charger le caractère à afficher dans R0
        OUT                 ; Afficher le caractère
        HALT                ; Terminer le programme
CHAR    .FILL x0041         ; Le caractère 'A' en ASCII
        .END                ; Fin du programme
