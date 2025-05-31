MODEL SMALL
.STACK 100H
.DATA
 STR DB "LOGIC OP // FOR CLEAR SIGN BIT :$"
.CODE
   MAIN PROC
        MOV DX,@DATA
        MOV DS,DX
        
        MOV AH,9
        LEA DX,STR
        INT 21H

       MOV BH,10011010B ;OUTPUT :1A ASCII 
       AND BH,7Fh
       
       
       MOV AH,2
       MOV DL,BH
       INT 21H 
       
       MOV AH,4CH
       INT 21H
       
       MAIN ENDP
   END MAIN