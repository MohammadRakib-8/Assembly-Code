.MODEL SMALL
.STACK 100H 
.DATA  
  STR DB 0AH,0DH,'* * * * * * * * * * *$'
  STE DB '* * $'
  ADB DB 'ENTER TWO DIGITS LESS THAN 10 :$'
  AVG DB 'THE SUB IS  : $'
 
.CODE

MAIN PROC 
     
     MOV AX,@DATA
     MOV DS,AX 
     
    MOV AH,9
    LEA DX,ADB
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    INT 21H
    MOV BL,AL 
    
    SUB BH,BL
    ADD BH,'0'   
    
   MOV AH,9
   LEA DX,STR
   INT 21H
   INT 21H
   
   MOV AH,2
   MOV DL,0AH
   INT 21H
   MOV DL,0DH
   INT 21H  
   
   MOV AH,9
   LEA DX,STE
   INT 21H
   
   MOV AH,9
   LEA DX,AVG
   INT 21H
   
   MOV AH,2 
   MOV DL,BH
   INT 21H  
   
   MOV AH,9 
   LEA DX,STE
   INT 21H
   
   
   MOV AH,9
   LEA DX,STR
   INT 21H
   INT 21H
   
  MOV AH,4CH
  INT 21H
   
   
    
    
    MAIN ENDP
END MAIN 