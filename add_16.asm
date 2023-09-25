MOV A, #34H  ; Load value 0x34 into register A
MOV B, #12H  ; Load value 0x12 into register B
ADD A, B     ; Add A and B
MOV R0, A     ; Store the result in register R0

MOV A, #0B4H  ; Load value 0xB4 into register A
MOV B, #0C2H  ; Load value 0xC2 into register B
ADDC A, B     ; Add A and B with carry
MOV R1, A     ; Store the result in register R1

END           ; End of the program
