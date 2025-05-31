.MODEL SMALL
.STACK 100H
.DATA
 STR DB "UISING IF AND THEN CONDITON FOR COMPARING TWO VALUE :$"
 .CODE
 
 MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,STR
    INT 21H 
    
   
    MOV BH,2
    MOV BL,6 
      
           
    CMP BH,BL 
       
   
    JG DISPLAY_BH
    JMP ELSE_
          
    DISPLAY_BH:
    MOV AH,2
    MOV DL,'2'
    INT 21H  
    JMP END_MAIN_PROC
    
    ELSE_:
    MOV AH,2
    MOV DL,'6'
    INT 21H
          
    
   END_MAIN_PROC: 
   MOV AH,4CH
   INT 21H 
   
   MAIN ENDP
   END MAIN