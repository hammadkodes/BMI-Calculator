DOSSEG
.MODEL SMALL 
.STACK 100h

.DATA

X DB ' ***** BMI CALCULATOR ***** $'

W DB ' SELECT YOUR WEIGHT IN KGs: $'

W1 DB ' 1) 50  : 60 $'
W2 DB ' 2) 61  : 70 $'
W3 DB ' 3) 71  : 80 $'
W4 DB ' 4) 81  : 90 $'
W5 DB ' 5) 91  : 100 $'
W6 DB ' 6) 101 : 110 $'
W7 DB ' 7) 111 : 120 $'
W8 DB ' 8) 121 : 130 $'
W9 DB ' 9) 131 : 140 $'
W10 DB ' --> $'

H DB ' SELECT YOUR HEIGHT IN CMs: $'

H1 DB ' 1) 130 : 140 $'
H2 DB ' 2) 141 : 150 $'
H3 DB ' 3) 151 : 160 $'
H4 DB ' 4) 161 : 170 $'
H5 DB ' 5) 171 : 180 $'
H6 DB ' 6) 181 : 190 $'
H7 DB ' 7) 191 : 200 $'

WEIGHT DB ?
THEWEIGHT DB ?

HEIGHT DB ?
THEHEIGHT DB ?

RESULT DB ' YOUR BMI IS : $'

RESULT1 DB 'UNDERWEIGHT $'
MSK1 DB ' 1. Eat more and sleep 8 hours a day $'
MSK2 DB ' 2. Absorb high calorie food $'
MSK3 DB ' 3. Drink at least 3L water per day $'
MSK4 DB ' 4. Eat vegetables and 1 glass of milk and 1 egg each day $'

RESULT2 DB 'HEALTHY WEIGHT / PERFECT BMI $'
MSN DB ' Congratulation..! Keep it up $'

RESULT3 DB 'OVERWEIGHT $'
MSL1 DB ' 1. Try to follow a low calorie healthy diet $'
MSL2 DB ' 2. Eat high protein vegetables and avoid fast food $'
MSL3 DB ' 3. Do some workout for weight lose (walking, ropping etc.) $' 

RESULT4 DB 'OBESITY $'
MSM1 DB ' 1. Do cardio for 30mins everyday $'
MSM2 DB ' 2. Eat a healthy diet in calorie deficit $'
MSM3 DB ' 3. Drink plenty of water $'

.CODE 
    MAIN PROC
        mov ax,@data
        mov ds,ax

        CALL enterkey

        ; BMI CALCULATOR

        LEA DX,X
        CALL PRINT

        CALL enterkey
        CALL enterkey

        ; WEIGHT

        LEA DX,W
        CALL PRINT

        CALL enterkey
        CALL enterkey

        LEA DX,W1
        CALL PRINT
        CALL enterkey
        LEA DX,W2
        CALL PRINT
        CALL enterkey
        LEA DX,W3
        CALL PRINT
        CALL enterkey
        LEA DX,W4
        CALL PRINT
        CALL enterkey
        LEA DX,W5
        CALL PRINT
        CALL enterkey
        LEA DX,W6
        CALL PRINT
        CALL enterkey
        LEA DX,W7
        CALL PRINT
        CALL enterkey
        LEA DX,W8
        CALL PRINT
        CALL enterkey
        LEA DX,W9
        CALL PRINT

        CALL enterkey
        CALL enterkey

        LEA DX,W10
        CALL PRINT
    
        CALL READCHAR

        MOV WEIGHT, AL

        CALL enterkey
        CALL enterkey

        ; HEIGHT

        LEA DX,H
        CALL PRINT

        CALL enterkey
        CALL enterkey

        LEA DX,H1
        CALL PRINT
        CALL enterkey
        LEA DX,H2
        CALL PRINT
        CALL enterkey
        LEA DX,H3
        CALL PRINT
        CALL enterkey
        LEA DX,H4
        CALL PRINT
        CALL enterkey
        LEA DX,H5
        CALL PRINT
        CALL enterkey
        LEA DX,H6
        CALL PRINT
        CALL enterkey
        LEA DX,H7
        CALL PRINT
    
        CALL enterkey
        CALL enterkey

        LEA DX,W10
        CALL PRINT

        CALL READCHAR
        MOV HEIGHT, AL

        CALL enterkey
        CALL enterkey

        LEA DX,RESULT
        CALL PRINT

        ; FINDING THE WEIGHT

        CMP WEIGHT,'1'
        JE A
        JNE M
        A:
        MOV THEWEIGHT,55D  
        JMP STOP
        M:
        CMP WEIGHT,'2'
        JE B
        JNE N
        B:
        MOV THEWEIGHT,65D  
        JMP STOP
        N:
        CMP WEIGHT,'3'
        JE C
        JNE O
        C:
        MOV THEWEIGHT,75D  
        JMP STOP
        O:
        CMP WEIGHT,'4'
        JE D
        JNE P
        D:
        MOV THEWEIGHT,85D  
        JMP STOP
        P:
        CMP WEIGHT,'5'
        JE E
        JNE Q
        E:
        MOV THEWEIGHT,95D 
        JMP STOP
        Q:
        CMP WEIGHT,'6'
        JE F
        JNE R
        F:
        MOV THEWEIGHT,105D 
        JMP STOP 
        R:
        CMP WEIGHT,'7'
        JE G
        JNE S
        G:
        MOV THEWEIGHT,115D  
        JMP STOP
        S:
        CMP WEIGHT,'8'
        JE J
        JNE T
        J:
        MOV THEWEIGHT,125D  
        JMP STOP
        T:
        CMP WEIGHT,'9'
        JE K
        JNE STOP  
        K:
        MOV THEWEIGHT,135D  
        JMP STOP

        ; FINDING THE HEIGHT

        STOP:

        CMP HEIGHT,'1'
        JE AA
        JNE MM
        AA:
        MOV THEHEIGHT,2D  
        JMP STOPP
        MM:
        CMP HEIGHT,'2'
        JNE NN
        JE BB
        BB:
        MOV THEHEIGHT,2D  
        JMP STOPP
        NN:
        CMP HEIGHT,'3'
        JE CC
        JNE OO
        CC:
        MOV THEHEIGHT,2D
        JMP STOPP
        OO:
        CMP HEIGHT,'4'
        JNE PP
        JE DM
        DM:
        MOV THEHEIGHT,3D 
        JMP STOPP
        PP:
        CMP HEIGHT,'5'
        JNE QQ
        JE EE
        EE:
        MOV THEHEIGHT,3D 
        JMP STOPP
        QQ:
        CMP HEIGHT,'6'
        JNE RR
        JE FF
        FF:
        MOV THEHEIGHT,4D 
        JMP STOPP 
        RR:
        CMP HEIGHT,'7'
        JNE STOPP
        JE GG
        GG:
        MOV THEHEIGHT, 4D 
        JMP STOPP
    
        STOPP:

        ; FINDING BMI 
        ; BMI = WEIGHT/ (HEIGHT*HEIGHT)

        MOV AL,THEWEIGHT

        MOV BL,THEHEIGHT
        MOV AH,0
        DIV BL

        ; BMI RESULT 

        CMP AL,18
        JL RES
        JG AGAIN
        RES:
        LEA DX,RESULT1  ;  Underweight
        CALL PRINT
        CALL enterkey
        CALL enterkey
        LEA DX,MSK1
        CALL PRINT
        CALL enterkey
        LEA DX,MSK2
        CALL PRINT
        CALL enterkey
        LEA DX,MSK3
        CALL PRINT
        CALL enterkey
        LEA DX,MSK4
        CALL PRINT

        CALL enterkey
        
        JMP FINAL 

        AGAIN:

        CMP AL,25
        JL RESA
        JG AGAINA
        RESA:
        LEA DX,RESULT2 ; Healthy Weight
        CALL PRINT
        CALL enterkey
        CALL enterkey
        LEA DX,MSN
        CALL PRINT
        CALL enterkey
        JMP FINAL

        AGAINA:

        CMP AL,30
        JL RESB
        JG AGAINB
        RESB:
        LEA DX,RESULT3 ;  Overweight
        CALL PRINT
        CALL enterkey
        CALL enterkey
        LEA DX,MSL1
        CALL PRINT
        CALL enterkey
        LEA DX,MSL2
        CALL PRINT
        CALL enterkey
        LEA DX,MSL3
        CALL PRINT
        CALL enterkey
        
        JMP FINAL

        AGAINB:

        LEA DX,RESULT4 ; Obesity
        CALL PRINT
        CALL enterkey
        CALL enterkey
        LEA DX,MSM1
        CALL PRINT
        CALL enterkey
        LEA DX,MSM2
        CALL PRINT
        CALL enterkey
        LEA DX,MSM3
        CALL PRINT
        CALL enterkey
        
        JMP FINAL

        FINAL:
        MOV AH,4CH
        INT 21h  
    

    MAIN ENDP 
    
    ; FUNCTION FOR PRINT STRING
   
    PRINT PROC
        MOV AH,09H
        INT 21H
        RET
    PRINT ENDP
    
    ; READ CHAR FROM THE USER
    
    READCHAR PROC
        MOV AH,1
        INT 21H
        RET
    READCHAR ENDP
   
    ; PRINT NEW LINE
    
    enterkey PROC
        mov dx,10
        mov ah, 2
        int 21h
        mov dx,13
        mov ah,2
        int 21H
        RET
    enterkey ENDP

END MAIN