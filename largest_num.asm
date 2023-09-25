; Initialize the source memory pointer
MOV R0, #50H  

; Initialize the iteration counter
MOV R2, #05H  

; Use B Register to store the largest value and initialize it to the first value
MOV A, @R0  ; Load the first value into the accumulator
MOV B, A  ; Store it as the initial largest value

; Start of the loop
BACK:
    ; Get the data from the source memory pointer and load it into the accumulator
    MOV A, @R0  

    ; Compare the data with the value in the B register (largest value so far)
    CJNE A, B, LOOP  ; If A (current value) is greater than B (largest so far), jump to LOOP

    ; If A is not greater than B, continue to the next value

    ; Increment the source memory pointer
    INC R0  

    ; Decrement iteration count and repeat if not zero
    DJNZ R2, BACK  

LOOP:
    ; Store the larger value into B register (if A > B)
    MOV B, A  

    ; Increment the source memory pointer
    INC R0  

    ; Decrement iteration count and repeat if not zero
    DJNZ R2, BACK  

NEXT:
    ; Store the largest value into memory location 60H
    MOV 60H, B  

; End of the program
END
