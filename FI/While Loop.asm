.MODEL SMALL
.STACK 100H
.DATA
.CODE

 MAIN PROC
    MOV CX,5
    MOV AL,'1'
    
    WHILE_LOOP:
    CMP CX,0
    JE END_PROC
    
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    INC AL
    DEC CX
    
    JMP WHILE_LOOP 
    
    END_PROC:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
 END MAIN