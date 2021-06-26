.MODEL SMALL
.STACK 100H  
.DATA
PROMPT DB '10','$'
.CODE
MAIN PROC
    MOV CX,9
    MOV AH,2
    MOV DL, 49
    TOP:
    INT 21H
    INC DL
    LOOP TOP  
    
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,PROMPT
    MOV AH,9
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN