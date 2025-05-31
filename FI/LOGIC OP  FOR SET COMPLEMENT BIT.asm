.MODEL SMALL
.STACK 100H
.DATA
 STR DB "LOGIC OP // FOR SET COMPLEMENT BIT (MSB AND LSB SET TO 1> :$"
.CODE
   MAIN PROC
        MOV DX,@DATA
        MOV DS,DX
        
        MOV AH,9
        LEA DX,STR
        INT 21H

       MOV BH,00000000B ;OUTPUT :81 ASCII (10000001>
       OR BH,81H
       
       
       MOV AH,2
       MOV DL,BH
       INT 21H 
       
       MOV AH,4CH
       INT 21H
       
       MAIN ENDP
   END MAIN