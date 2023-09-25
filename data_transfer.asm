MOV R0, #50H  ; Initialize the source memory pointer
MOV R1, #60H  ; Initialize the destination memory pointer
MOV R2, #05H  ; Initialize Iteration counter
BACK: 
    MOV A, @R0  ; Get the data from source memory pointer
    MOV @R1, A  ; Store the data into destination memory pointer
    INC R0      ; Increment the source memory pointer
    INC R1      ; Increment the destination memory pointer
    DJNZ R2, BACK  ; Decrement iteration count and repeat if not zero
END
