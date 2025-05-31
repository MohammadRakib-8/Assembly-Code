MODEL SMALL
.STACK 100H
.DATA
 STR DB LOGIC OP NOT INSTRUCTION$
.CODE
   MAIN PROC
        MOV DX,@DATA
        MOV DS,DX
        
        MOV AH,9
        LEA DX,STR
        INT 21H

       MOV BH,10000000B
       NOT BH           ;OUTPUT 7F
     
       
       
       MOV AH,2
       MOV DL,BH
       INT 21H 
       
       MOV AH,4CH
       INT 21H
       
       MAIN ENDP
   END MAIN