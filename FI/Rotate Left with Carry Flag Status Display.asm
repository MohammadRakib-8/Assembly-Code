MODEL SMALL
.STACK 100H
.DATA 
  STR DB  "Roatate Left In Carry Flag :$"
  
.CODE

MAIN PROC
    
    MOV AX,@DATA 
    MOV DS,AX
    
    MOV AH,09H
    LEA DX,STR
    INT 21H
    
    MOV AH,2
    
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AL,0001011b
    ROL AL,1
    
    JC CF_SET
    MOV CL,'0'
    JMP CF_DONE
    
    CF_SET:
    MOV CL,'1'
    CF_DONE:
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN