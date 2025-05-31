.MODEL SMALL
.STACK 100H
.DATA
    msg1 DB 'The first character is: $'
    result DB '?', '$'

.CODE
MAIN PROC
    MOV AX, @DATA    
    MOV DS, AX

    ; Load ASCII characters into AL and BL
    MOV AL, 'Z'      
    MOV BL, 'a'      

    ; Compare AL and BL
    CMP AL, BL       
    JLE AL_SMALLER   

    ; Else, BL is smaller or equal
    MOV AL, BL      

AL_SMALLER:
    ; Store the resulting character
    MOV result, AL

    ; Display the message
    LEA DX, msg1     
    MOV AH, 09H      
    INT 21H

    ; Display the character
    LEA DX, result   
    MOV AH, 09H      
    INT 21H

    ; Exit the program
    MOV AH, 4CH      
    INT 21H

MAIN ENDP
END MAIN