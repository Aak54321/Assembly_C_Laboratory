; Initialize input1 memory pointer
MOV R0, #51H

; Initialize input2 memory pointer and store output also
MOV R1, #61H

; Initialize iteration count
MOV R2, #02H

; Clear carry flag
CLR C

; Start of the loop
BACK:
    ; Get lower bytes' data in the first iteration, upper bytes' data in the second iteration
    MOV A, @R0

    ; Add them with carry and store in memory pointer 2
    ADDC A,@R1
    MOV @R1, A

    ; Increment memory pointer1 & 2 to get upper bytes
    INC R0
    INC R1

    ; Decrement iteration count and repeat if not zero
    DJNZ R2, BACK

; End of the program
END
