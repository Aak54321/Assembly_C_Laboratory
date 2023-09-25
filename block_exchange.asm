; Initialize the source memory pointer
MOV R0, #50H  

; Initialize the destination memory pointer
MOV R1, #60H  

; Initialize the iteration counter
MOV R2, #05H  

; Start of the loop
BACK:
    ; Get the data from the source memory pointer and load it into the accumulator
    MOV A, @R0  

    ; Exchange data between the accumulator and destination memory pointer
    XCH A, @R1  

    ; Store the data into the source memory pointer
    MOV @R0, A  

    ; Increment the source memory pointer
    INC R0  

    ; Increment the destination memory pointer
    INC R1  

    ; Decrement iteration count and repeat if not zero
    DJNZ R2, BACK  

; End of the program
END
