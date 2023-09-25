; Initialize the iteration counter
MOV R2, #05H

; Decrement the iteration count
DEC R2

; Outer loop
BACK1:
    ; Initialize memory pointer 1
    MOV R0, #50H

    ; Initialize memory pointer 2
    MOV R1, #51H

    ; Store outer loop count
    MOV A, R2
    MOV R3, A  ; Store inner loop count

    ; Inner loop
    BACK:
        ; Get the data from memory pointer 1
        MOV A, @R0

        ; Get the data from memory pointer 2
        MOV B, @R1

        ; Compare A and B
        CJNE A, B, LOOP

    LOOP:
        ; If no carry (A >= B), go to LOOP1
        JNC LOOP1

        ; Exchange the data in memory pointers
        MOV @R0, B
        MOV @R1, A

    LOOP1:
        ; Increment memory pointer 1
        INC R0

        ; Increment memory pointer 2
        INC R1

        ; Decrement inner loop count and repeat if not zero
        DJNZ R3, BACK

    ; Decrement outer loop count and repeat if not zero
    DJNZ R2, BACK1

; End of the program
END
