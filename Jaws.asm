;Start\End 28000,31519
                ORG   $6D60

                LBRA  GameSetUp                     ;Get game going

ScoreLastGame   FCB   $00,$00
ScubaPos        FCB   $00,$00
SpearPos        FCB   $00,$00
SpearColPos     FCB   $00
                FCB   $00                           ;Not Used
BarrelPos       FCB   $00,$00
Fish1Pos        FCB   $00,$00
SharkPos        FCB   $00,$00
SharkColPos     FCB   $00
SpearRotCnt     FCB   $00
BarrelHitMkr    FCB   $00
Fish1RotCnt     FCB   $00
SharkRotCnt     FCB   $00
SpearActive     FCB   $00
SharkActive     FCB   $00
BarrelActive    FCB   $00
Fish2Pos        FCB   $00,$00
Fish3Pos        FCB   $00,$00
Fish1Active     FCB   $00
NumLives        FCB   $00
Fish1ColPos     FCB   $00
SoundType       FCB   $00,$00
CurrentScore    FCB   $00,$00,$00,$00,$00,$00
GameScore       FCB   $00,$00
SharkTimer      FCB   $00,$00
Score_Pos1      FCB   $00,$00
Score_Pos2      FCB   $00,$00
Score_Pos3      FCB   $00,$00
Score_Pos4      FCB   $00,$00
Score_Pos5      FCB   $00,$00
Score_Pos6      FCB   $00,$00

BlankGraphic    FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00,$00
                FCB   $00,$00,$00,$00


                ;Spear Graphic
SpearGraphic    FCB   $80,$00
                FCB   $FF,$E0
                FCB   $80,$00

                ;High Resolution JAWS Text
JawsTextGrp     FCB   $00,$0C,$00,$0C,$00,$0C,$00
                FCB   $0C,$00,$0C,$00,$0C,$00,$0C
                FCB   $20,$2C,$20,$2C,$20,$2C,$10
                FCB   $2C,$08,$28,$07,$E0,$00,$2C
                FCB   $00,$4C,$00,$8C,$01,$0C,$02
                FCB   $0C,$04,$0C,$0B,$EC,$10,$2C
                FCB   $20,$2C,$20,$2C,$20,$2C,$20
                FCB   $2C,$20,$2C,$31,$84,$31,$84
                FCB   $31,$84,$31,$84,$31,$84,$31
                FCB   $84,$31,$84,$33,$A8,$33,$A8
                FCB   $37,$B8,$3D,$B0,$3D,$B0,$39
                FCB   $A0,$07,$C0,$14,$30,$3A,$0C
                FCB   $1D,$00,$0E,$80,$07,$00,$03
                FCB   $80,$01,$C0,$02,$E0,$01,$70
                FCB   $20,$B8,$10,$58,$0F,$E0

                ;Fish Graphic (1x5)
FishGraphic     FCB   $31,$5B,$FF,$7B,$31

                ;Barrel Graphic (1x5)
BarrelGraphic   FCB   $BD,$BD,$81,$BD,$BD

                ;Explosion when barrel hits shark (2x17)
SharkExplodeGrp FCB   $C0,$00
                FCB   $63,$D8
                FCB   $75,$A0
                FCB   $7B,$1C
                FCB   $21,$2C
                FCB   $4C,$D8
                FCB   $9A,$37
                FCB   $F9,$A8
                FCB   $08,$42
                FCB   $25,$26
                FCB   $48,$9A
                FCB   $59,$04
                FCB   $96,$98
                FCB   $1D,$70
                FCB   $09,$00
                FCB   $09,$00
                FCB   $01,$00

                ;Shark "flash" when bites scuba diver (3x19)
SharkBiteGrp    FCB   $00,$03,$00
                FCB   $00,$06,$00
                FCB   $E0,$0E,$00
                FCB   $7C,$1E,$00
                FCB   $3B,$FF,$F0
                FCB   $1F,$F6,$FC
                FCB   $00,$1B,$7E
                FCB   $00,$3D,$FE
                FCB   $03,$FF,$FF
                FCB   $00,$00,$0F
                FCB   $00,$01,$07
                FCB   $00,$00,$87
                FCB   $00,$00,$CE
                FCB   $00,$00,$FE
                FCB   $00,$00,$F8
                FCB   $00,$00,$F0
                FCB   $00,$00,$E0
                FCB   $00,$00,$C0
                FCB   $00,$01,$00

                ;Shark open mouth on approach to scuba diver (4x10)
SharkMouthGrp   FCB   $00,$03,$00,$08
                FCB   $00,$06,$00,$18
                FCB   $E0,$0E,$00,$38
                FCB   $7C,$1E,$00,$70
                FCB   $3B,$FF,$F8,$F0
                FCB   $1F,$F6,$FF,$F0
                FCB   $00,$1B,$7F,$F0
                FCB   $00,$3D,$FF,$30
                FCB   $03,$FF,$F0,$18
                FCB   $00,$00,$00,$08

                ;Shark when moving (4x10)
SharkNormGrp    FCB   $00,$03,$00,$08
                FCB   $00,$06,$00,$18
                FCB   $00,$0E,$00,$38
                FCB   $00,$1E,$00,$70
                FCB   $FF,$FF,$F8,$F0
                FCB   $7B,$F6,$FF,$F0
                FCB   $3F,$1B,$7F,$F0
                FCB   $05,$FF,$F0,$30
                FCB   $00,$00,$00,$18
                FCB   $00,$00,$00,$08

                ;Half of diver - after being bitten (2x8)
ScubaBitGraphic FCB   $08,$12
                FCB   $1C,$3A
                FCB   $3F,$7A
                FCB   $47,$FA
                FCB   $8B,$8A
                FCB   $1C,$00
                FCB   $20,$00
                FCB   $40,$00

                ;Scuba diver moving up graphic (4x12)
ScubaUpGraphic  FCB   $00,$0D,$F6,$78
                FCB   $00,$1D,$F7,$F4
                FCB   $00,$1D,$F7,$EC
                FCB   $08,$12,$0A,$F4
                FCB   $1C,$3B,$FE,$7E
                FCB   $3F,$7B,$DE,$82
                FCB   $47,$FB,$B4,$44
                FCB   $8B,$8B,$68,$38
                FCB   $1C,$00,$C0,$00
                FCB   $20,$00,$60,$00
                FCB   $40,$00,$30,$00
                FCB   $00,$7F,$D7,$00

                ;Scuba Diver moving down graphic (4x12)
ScubaDnGraphic  FCB   $00,$0D,$F6,$78
                FCB   $00,$1D,$F7,$F4
                FCB   $00,$1D,$F7,$EC
                FCB   $FE,$12,$0A,$F4
                FCB   $0E,$3B,$FE,$7E
                FCB   $06,$7B,$DE,$82
                FCB   $15,$FB,$B4,$44
                FCB   $3B,$8B,$68,$38
                FCB   $4F,$00,$C0,$00
                FCB   $80,$00,$60,$00
                FCB   $00,$00,$30,$00
                FCB   $00,$7F,$D7,$00

                ;HiRes Numbers data (all 1x8)
NumbersText     FCB   $78,$CC,$CC,$CC,$CC,$CC,$CC,$78       ;0
                FCB   $30,$70,$B0,$30,$30,$30,$30,$FC       ;1
                FCB   $78,$FC,$8C,$0C,$38,$70,$FC,$FC       ;2
NBR_3           FCB   $78,$CC,$8C,$38,$38,$8C,$CC,$78       ;3
                FCB   $80,$80,$90,$90,$FC,$FC,$10,$10       ;4
                FCB   $FC,$FC,$C0,$F8,$FC,$0C,$FC,$F8       ;5
                FCB   $3C,$7C,$C0,$F8,$FC,$CC,$FC,$78       ;6
                FCB   $FC,$FC,$0C,$0C,$18,$30,$70,$E0       ;7
                FCB   $78,$CC,$CC,$78,$CC,$CC,$CC,$78       ;8
                FCB   $78,$FC,$CC,$FC,$7C,$0C,$FC,$F8       ;9

                ;HiRes Score Text
ScoreText       FCB   $FC,$C4,$80,$FC,$E4,$04,$9C,$FC       ;S
                FCB   $FC,$80,$80,$C0,$C0,$C0,$FC,$FC       ;C
                FCB   $FC,$84,$84,$C4,$C4,$C4,$FC,$FC       ;O
                FCB   $FC,$8C,$84,$C4,$F8,$C4,$C4,$C4       ;R
                FCB   $FC,$80,$80,$F0,$F0,$C0,$FC,$FC       ;E

                ;HiRes LIVES text
LivesText       FCB   $C0,$C0,$C0,$C0,$80,$80,$80,$FC       ;L
                FCB   $20,$20,$20,$20,$30,$30,$30,$30       ;I
                FCB   $C4,$C4,$C4,$84,$84,$4C,$38,$30       ;V
                FCB   $FC,$E0,$80,$F0,$F0,$80,$9C,$FC       ;E
                FCB   $7C,$CC,$80,$F8,$7C,$04,$CC,$F8       ;S

                ;*************************************
                ;Draws HiRes text that is 2 bytes wide
                ;*************************************
Draw2ByteGrp    PSHS  A,B,X,Y,U
D2BG_1          LDU   ,Y++                      ;Get graphic
                STU   ,X                        ;Write to screen
                ABX                             ;repoint to next screen position
                DECA                            ;decrease height count
                BNE   D2BG_1                    ;Not finsihed
                PULS  A,B,X,Y,U,PC

                ;************************************
                ;Draws HiRes text that is 1 byte wide
                ;************************************
Draw1ByteGrp    PSHS  A,B,X,Y
                STA   ,-S                       ;Store height of graphic
D1BG_1          LDA   ,Y+                       ;Get graphic
                STA   ,X+                       ;Write to screen
                ABX                             ;repoint to next screen position
                DEC   ,S                        ;decrease height count
                BNE   D1BG_1                    ;Not finsihed
                LEAS  1,S                       ;Repoint stack
                PULS  A,B,X,Y,PC                ;Return

                ;*************************************
                ;Draws HiRes text that is 4 bytes wide
                ;*************************************
Draw4ByteGrp    PSHS  A,B,X,Y,U
D4BG_1          LDU   ,Y++                      ;Get graphic
                STU   ,X                        ;Write to screen
                LDU   ,Y++                      ;Get graphic
                STU   2,X                       ;Write to screen
                ABX                             ;repoint to next screen position
                DECA                            ;decrease height count
                BNE   D4BG_1                    ;Not finsihed
                PULS  A,B,X,Y,U,PC              ;Return

                ;Delay \ pause
Delay           PSHS  A,B,X,Y
                LDX   #$0FA0                    ;Set Counter
Delay_1         LEAX  -1,X                      ;Reduce counter
                CMPX  #$0000                    ;Reached zero?
                BNE   Delay_1                   ;No
                PULS  A,B,X,Y,PC                ;Return

                ;*************************************
                ;Draws HiRes text that is 3 bytes wide
                ;*************************************
Draw3ByteGrp    PSHS  A,B,X,Y,U
                STA   ,-S
D3BG_1          LDU   ,Y++                      ;Get graphic
                STU   ,X++                      ;Write to screen
                LDA   ,Y+                       ;Get graphic
                STA   ,X+                       ;Write to screen
                ABX                             ;repoint to next screen position
                DEC   ,S                        ;decrease height count
                BNE   D3BG_1                    ;Not finsihed
                LEAS  1,S                       ;Repoint stack
                PULS  A,B,X,Y,U,PC              ;Return

                ;*******************
                ;Scuba diver control
                ;*******************
DiverControl    PSHS  A,B,X,Y
                LBSR  FireSpearCheck            ;Check if player fires spear
                LBSR  SpearControl              ;Move spear (if active)
                LBSR  CheckSpearPos             ;Check spear position
                LDA   #$7F                      ;Reset keyboard rollover table
                STA   $0151
                LDA   #$FF
                STA   $0155
                JSR   $8006                     ;Check for key press
                CMPA  #$5E                      ;Has UP ARROW been pressed?
                BNE   MoveDiverDown             ;No
                BRA   MoveDiverUp               ;Yes - Move diver up

                ;*********************
                ;Move scuba diver down
                ;*********************
MoveDiverDown   SYNC
                LDX   ScubaPos                  ;Get scuba diver position
                LEAX  -32,X                     ;Move screen pointer (to erase top row)
                LDY   #BlankGraphic             ;point to blank graphic
                LDA   #$0D                      ;Height of graphic
                LDB   #$20                      ;Graphic offset
                LBSR  Draw4ByteGrp              ;Draw it
                LEAX  64,X                      ;Move position 2 rows down
                LDA   #$0C                      ;Height of graphic
                LDY   #ScubaDnGraphic           ;Posint to scuba down graphic
                LBSR  Draw4ByteGrp              ;Draw it
                STX   ScubaPos                  ;Save position
                CMPX  #$1980                    ;Has scuba diver reached bottom?
                BCS   MDD_Exit                  ;No - return
                LDX   #$1960                    ;Yes - set position
                STX   ScubaPos                  ;Save
MDD_Exit        PULS  A,B,X,Y,PC                ;Return

                ;*******************
                ;Move scuba diver up
                ;*******************
MoveDiverUp     SYNC
                LDX   ScubaPos                  ;Get scuba diver position
                LDY   #BlankGraphic             ;Point to blank graphic
                LDA   #$0D                      ;Height of graphic
                LDB   #$20                      ;Graphic offset
                LBSR  Draw4ByteGrp              ;Draw it
                LEAX  -32,X                     ;Reposition 1 row up
                LDA   #$0C                      ;Height of graphic
                LDY   #ScubaUpGraphic           ;Point to scuba up graphic
                LBSR  Draw4ByteGrp              ;Draw it
                STX   ScubaPos                  ;Save psotion
                CMPX  #$0880                    ;Has scuba diver reached top?
                BHI   MDU_Exit                  ;No - return
                LDX   #$08A0                    ;Yes - set position
                STX   ScubaPos                  ;Save
MDU_Exit        PULS  A,B,X,Y,PC                ;Return

                ;*************************
                ;Control movement of spear
                ;*************************
SpearControl    PSHS  A,B,X,Y
                LDA   SpearActive               ;Get spear active marker
                CMPA  #$00                      ;Is spear Active ?
                LBEQ   SC_Exit                  ;No - return
                LDB   #$03                      ;Yes - Move it right
SC_2            LDA   #$02                      ;rotate right twice
SC_1            ANDCC #$FE
                LDX   SpearPos                  ;Get spear position
                LBSR  RotateByteR               ;Rotate all bits right
                LEAX  1,X                       ;move to next byte
                LBSR  RotateByteR               ;rotate all bits right
                LEAX  1,X                       ;move to next byte
                LBSR  RotateByteR               ;rotate all bit right
                DECA                            ;Have we rotated twice?
                BNE   SC_1                      ;No
                LDX   SpearPos                  ;Get spear position
                LEAX  32,X                      ;Move next row down
                STX   SpearPos                  ;Save
                DECB                            ;Decrease row count
                BNE   SC_2                      ;more rows to rotate
                LEAX  -96,X                     ;reset spear position
                STX   SpearPos                  ;Save
                LDB   SpearRotCnt               ;Get number of times spear graphic has rotated
                DECB                            ;Decrease it
                STB   SpearRotCnt               ;Save it
                BNE   SC_Exit                   ;Exit if not zero
                LDB   #$04                      ;Reset spear rotate count
                STB   SpearRotCnt               ;Save
                LDX   SpearPos                  ;Get spear position
                LEAX  1,X                       ;Move to next byte
                STX   SpearPos                  ;Save
                LDA   SpearColPos               ;Get spear column position
                INCA                            ;Increase it
                STA   SpearColPos               ;Save it

                ;Check if spear hit a fish
                LDX   SpearPos
                LEAX  -32,X                     ;Check above spear
                LDA   ,X                        ;Get graphic
                CMPA  #$00                      ;Hit anything?
                BEQ   SC_3                      ;No - check below spear
                LDB   #$0A                      ;Yes - play sound 10 times
SC_4            LDX   #$0032                    ;Set sound type
SC_5            STX   SoundType
                LBSR  MakeNoise             ;Play sound
                LEAX  -1,X                      ;Adjust sound
                DECB                            ;Reduce loop counter
                BNE   SC_5                      ;play again

                ;Reset fish 1 \ erase spear
                CLRA
                STA   Fish1Active               ;No longer active
                LDY   #BlankGraphic             ;point to blank graphic
                LDX   Fish1Pos                  ;Get fish 1 position
                LDA   #$05                      ;height of graphic
                LDB   #$1F                      ;graphic offset
                LBSR  Draw1ByteGrp              ;erase it
                LEAX  -1,X                      ;Move 1 bute to left
                LBSR  Draw1ByteGrp              ;erase it
                LDX   SpearPos                  ;Erase spear
                LDA   #$03                      ;height of graphic
                LDB   #$20                      ;draphic offset
                LBSR  Draw2ByteGrp              ;erase it
                LDA   #$1A
                STA   SpearColPos               ;Reset spear position
                LBSR  ChkFish1Active            ;create \ draw new Fish 1
                LBSR  DrawFish1                 ;Draw fish 1
                LBSR  ScoreIncrease             ;increase player score
                LBSR  ScoreIncrease             ;increase player score again
                LBSR  ScoreIncrease             ;increase player score again
                LBSR  ScoreIncrease             ;increase player score again
                LDX   SharkTimer                ;Increase time it takes for shark to appear
                LEAX  25,X
                STX   SharkTimer
SC_Exit         PULS  A,B,X,Y,PC                ;Return

SC_3            LDX   SpearPos
                LEAX  96,X                      ;Check below spear
                LDA   ,X
                CMPA  #$00                      ;Hit anything?
                BNE   SC_4                      ;Yes - register hit
                PULS  A,B,X,Y,PC                ;No - return

                ;Rotate byte right
RotateByteR     PSHS  A,B,X,Y
                LDB   ,X                        ;Get graphic byte
                RORB                            ;rotate it right
                STB   ,X                        ;write back to screen
                PULS  A,B,X,Y,PC                ;return

                ;**************
                ;Draw new spear
                ;**************
DrawSpear       PSHS  A,B,X,Y
                LDB   SharkActive
                CMPB  #$01                      ;Is shark active
                BEQ   DS_Exit                   ;Yes - Do not draw - exit
                LDX   ScubaPos
                LEAX  $0164,X                   ;Set position to draw spear
                STX   SpearPos                  ;Save
                LDY   #SpearGraphic             ;Draw spear
                LDA   #$03
                LDB   #$20
                LBSR  Draw2ByteGrp
                LDX   #$001E
                STX   SoundType
                LBSR  MakeNoise                ;Play sound
DS_Exit         PULS  A,B,X,Y,PC                ;Return

                ;********************************
                ;Increase + update onscreen score
                ;********************************
ScoreIncrease   PSHS  A,B,X,Y
                LDB   #$0A                      ;Increase score by 10
SI_1            LDX   GameScore
                LEAX  1,X
                STX   GameScore
                DECB
                BNE   SI_1
                LDX   #$1C6C                    ;Position to write score
                LDY   #CurrentScore             ;Get Score digit to display
SI_3            LDA   ,Y
                INCA                            ;Increase it
                CMPA  #$0A                      ;Is it 10?
                BEQ   SI_2                      ;Yes
                STA   ,Y                        ;No - store it
                LDB   #$08                      ;Get digit to draw
                MUL
                ADDD  #NumbersText              ;Point to correct number data
                TFR   D,Y
                LDA   #$08
                LDB   #$1F
                LBSR  Draw1ByteGrp              ;Draw it
                PULS  A,B,X,Y,PC                ;Return

SI_2            CLRA                            ;Reached 10 so set to zero
                STA   ,Y                        ;Save it
                PSHS  Y
                LDB   #$08                      ;Get digit data to draw
                MUL
                ADDD  #NumbersText
                TFR   D,Y                       ;Point to graphic data
                LDA   #$08                      ;Height of graphic
                LDB   #$1F                      ;Graphic offset
                LBSR  Draw1ByteGrp              ;Draw it
                PULS  Y
                LEAY  1,Y                       ;Move to next digit
                LEAX  -1,X                      ;Move to next draw position
                CMPX  #$1C68                    ;Have we reached last digit?
                BNE   SI_3                      ;No
                PULS  A,B,X,Y,PC                ;Return

                ;*************************
                ;Move score pos 5 to pos 6
                ;*************************
MoveScr5To6     PSHS  A,B,X,Y
                LDX   Score_Pos5                ;;Get score in pos 5
                LDY   BlankGraphic              ;??
                STY   Score_Pos6                ;??
                STX   Score_Pos6                ;Save score to pos 6
                PULS  A,B,X,Y,PC

                ;*************************
                ;Move score pos 4 to pos 5
                ;*************************
MoveScr4To5     PSHS  A,B,X,Y
                LDX   Score_Pos4                ;Get score in pos 4
                STX   Score_Pos5                ;Save score to pos 5
                PULS  A,B,X,Y,PC

                ;*************************
                ;Move score pos 3 to pos 4
                ;*************************
MoveScr3To4     PSHS  A,B,X,Y
                LDX   Score_Pos3                ;Get score in pos 3
                STX   Score_Pos4                ;Save score to pos 4
                PULS  A,B,X,Y,PC

                ;*************************
                ;Move score pos 2 to pos 3
                ;*************************
MoveScr2To3     PSHS  A,B,X,Y
                LDX   Score_Pos2                ;Get score in pos 2
                STX   Score_Pos3                ;Save score to pos 3
                PULS  A,B,X,Y,PC

                ;*************************
                ;Move score pos 1 to pos 2
                ;*************************
MoveScr1To2     PSHS  A,B,X,Y
                LDX   Score_Pos1                ;Get score in pos 1
                STX   Score_Pos2                ;Save score to pos 3
                PULS  A,B,X,Y,PC

                ;*******************
                ;Display High Scores
                ;*******************
DispHighScores  PSHS  A,B,X,Y
                LDY   Score_Pos6                ;Get position 6 score
                LDX   #$05AB                    ;set screen position
                STX   <$88                      ;Store it (for JSR $957A)
                LBSR  WriteScore                ;Write it to screen
                LDY   Score_Pos5                ;Get position 5 score
                LDX   #$056B                    ;set screen position
                STX   <$88                      ;Store it (for JSR $957A)
                LBSR  WriteScore                ;Write it to screen
                LDY   Score_Pos4                ;Get position 4 score
                LDX   #$052B                    ;set screen position
                STX   <$88                      ;Store it (for JSR $957A)
                LBSR  WriteScore                ;Write it to screen
                LDY   Score_Pos3                ;Get position 3 score
                LDX   #$04EB                    ;set screen position
                STX   <$88                      ;Store it (for JSR $957A)
                LBSR  WriteScore                ;Write it to screen
                LDY   Score_Pos2                ;Get position 2 score
                LDX   #$04AB                    ;set screen position
                STX   <$88                      ;Store it (for JSR $957A)
                LBSR  WriteScore                ;Write it to screen
                LDY   Score_Pos1                ;Get position 1 score
                LDX   #$046B                    ;set screen position
                STX   <$88                      ;Store it (for JSR $957A)
                LBSR  WriteScore                ;Write it to screen
                PULS  A,B,X,Y,PC

                ;**************************
                ;Write score to text Screen
                ;**************************
WriteScore      PSHS  A,B,X,Y
                CLR   <$6F                      ;Set output device to VDU
                TFR   Y,D                       ;$957A writes value in REG D to screen
                JSR   $957A                     ;Write to screen
                PULS  A,B,X,Y,PC

                ;*********
                ;Game Over
                ;*********
GameOver        LDA   #$01                      ;Screen to Normal text mode
                STA   $FF22
                LDA   #$7E
                STA   $FFC3
                STA   $FFC5
                STA   $FFC7

                ;Clear text screen
GAMEOVER_1      LDX   #$0400
                LDA   #$60
GAMEOVER_6      STA   ,X+
                CMPX  #$0600
                BNE   GAMEOVER_6

                ;Write 1,2,3,4,5,6
                LDX   #$0468
                LDA   #$71
GameOver_2      STA   ,X
                LEAX  64,X
                INCA
                CMPA  #$77
                BNE   GameOver_2

                ;Write 6 dots
                LDX   #$0469
                LDB   #$06
                LDA   #$6E
GameOver_3      STA   ,X
                LEAX  64,X
                DECB
                BNE   GameOver_3

                ;Write JAWS
                LDX   #$040C
                LDY   #JawsText
GameOver_4      LDA   ,Y+
                STA   ,X+
                CMPY  #JawsText+5
                BNE   GameOver_4

                ;Write BY STEVE GATHERCOLE
                LDX   #$0425
                LDY   #BySteveText
GameOver_5      LDA   ,Y+
                STA   ,X+
                CMPY  #BySteveText+19
                BNE   GameOver_5

                ;Sort Scores
SortScores      LDX   GameScore
                CMPX  Score_Pos1                ;Compare to top score (pos 1)
                BCS   SortScores2               ;Not higher - check with pos 2
                LBSR  MoveScr5To6
                LBSR  MoveScr4To5
                LBSR  MoveScr3To4
                LBSR  MoveScr2To3
                LBSR  MoveScr1To2
                STX   Score_Pos1                ;Save score in 1
                LDY   #$046B                    ;Screen position that last game score was written to
                STY   ScoreLastGame             ;Save it (so it can be flashed)
                LBRA  SortScoresExit

SortScores2     CMPX  Score_Pos2                ;Compare to 2nd (pos 2)
                BCS   SortScores3               ;Not Higher - check with pos 3
                LBSR  MoveScr5To6
                LBSR  MoveScr4To5
                LBSR  MoveScr3To4
                LBSR  MoveScr2To3
                STX   Score_Pos2                ;Save score in 2
                LDY   #$04AB                    ;Screen position that last game score was written to
                STY   ScoreLastGame             ;Save it (so it can be flashed)
                LBRA  SortScoresExit

SortScores3     CMPX  Score_Pos3                ;Compare to 3rd (pos 3)
                LBCS  SortScores4               ;Not higer - check with pos 4
                LBSR  MoveScr5To6
                LBSR  MoveScr4To5
                LBSR  MoveScr3To4
                STX   Score_Pos3                ;Save score in 3
                LDY   #$04EB                    ;Screen position that last game score was written to
                STY   ScoreLastGame             ;Save it (so it can be flashed)
                LBRA  SortScoresExit

SortScores4     CMPX  Score_Pos4                ;Compare to 4th (pos 4)
                BCS   SortScores5               ;Not higer - check with pos 5
                LBSR  MoveScr5To6
                LBSR  MoveScr4To5
                STX   Score_Pos4                ;Save score in 4
                LDY   #$052A                    ;Screen position that last game score was written to
                STY   ScoreLastGame             ;Save it (so it can be flashed)
                BRA   SortScoresExit

SortScores5     CMPX  Score_Pos5                ;Compare to 5th (pos 5)
                BCS   SortScores6               ;Not higer - check with pos 6
                LBSR  MoveScr5To6
                STX   Score_Pos5                ;Save score in 5
                LDY   #$056B                    ;Screen position that last game score was written to
                STY   ScoreLastGame             ;Save it (so it can be flashed)
                BRA   SortScoresExit

SortScores6     CMPX  Score_Pos6                ;Compare to 6th (pos 6)
                BCS   SortScoresExit            ;Not higer - exit
                LDY   #$05AB                    ;Screen position that last game score was written to
                STY   ScoreLastGame             ;Save it (so it can be flashed)
                STX   Score_Pos6
SortScoresExit  LBSR  DispHighScores            ;Display scores

                ;Write Another game and check for response
                LDX   #$05E7                    ;73BD 8E05E7
                LDY   #AnotherGameText
WAG_1           LDA   ,Y+
                STA   ,X+
                CMPY  #AnotherGameText+16
                BNE   WAG_1
WAG_2           JSR   $8006                     ;Check for key press
                CMPA  #$59                      ;'Y' pressed?
                LBEQ  GameSetUp                 ;Yes - setup another game
                CMPA  #$4E                      ;'N' pressed?
                LBEQ  AnotherGameNo             ;Yes - Exit
                LBSR  FlashHighScore            ;Flash High Score
                LBSR  Delay                     ;Slow things down
                BRA   WAG_2                     ;Check again

AnotherGameText FCB   $41
                FCB   $4E
                FCB   $4F
                FCB   $54
                FCB   $48
                FCB   $45
                FCB   $52
                FCB   $60,$47
                FCB   $4F
                FCB   $60,$68
                FCB   $59
                FCB   $6F,$4E
                FCB   $69

JawsText        FCB   $0A,$01
                FCB   $17,$13,$60

BySteveText     FCB   $02
                FCB   $19
                FCB   $20,$13
                FCB   $14
                FCB   $05
                FCB   $16,$05,$20
                FCB   $07,$01
                FCB   $14
                FCB   $08,$05
                FCB   $12
                FCB   $03,$0F
                FCB   $0C,$05

AnotherGameNo   LDX   #$0400
                STX   <$88

                ;Flash score of last game
FlashHighScore  PSHS  A,B,X,Y
                LDX   ScoreLastGame             ;This is the screen position of the score
                LDB   #$0A                      ;Loop count
                LEAX  -3,X                      ;Move to left hand side of text
FHS_1           LDA   ,X                        ;Get character
                EORA  #$40                      ;Invert it
                STA   ,X+                       ;Write to screen
                DECB                            ;decrease loop counter
                BNE   FHS_1                     ;Not finsihed
                LBSR  MakeNoise                ;Play sound
                PULS  A,B,X,Y,PC                ;Return

                ;Make noise for shark biting scuba diver
SharkBiteNoise  PSHS  A,B,X,Y
                LDA   $FF23
                ORA   #$08
                STA   $FF23
                LDX   #$0001
SBN_2           LDA   #$FD
                STA   $FF20
                BSR   SBN_1
                CLR   $FF20
                BSR   SBN_1
                LEAX  1,X
                CMPX  #$00FE
                BCS   SBN_2
                LDA   $FF23
                ANDA  #$F7
                STA   $FF23
                PULS  A,B,X,Y,PC

SBN_1           TFR   X,Y
SBN_3           LEAY  -1,Y
                BHI   SBN_3
                RTS

                ;****************************
                ;Check if player firing spear
                ;****************************
FireSpearCheck  PSHS  A,B,X,Y
                LDA   SpearActive               ;Get spear active marker
                CMPA  #$01                      ;Is spear active?
                BEQ   FSC_Exit                  ;Yes - Exit
                JSR   $8006                     ;No - check for fire button
                CMPA  #$0D                      ;Has ENTER\FIRE been pressed
                BNE   FSC_Exit                  ;No - Exit
                LBSR  DrawSpear                 ;Yes - Draw spear on screen
                LDA   #$01                      ;Set spear active marker
                STA   SpearActive               ;Save
FSC_Exit        PULS  A,B,X,Y,PC                ;Return

                ;**************************
                ;Check fired spear position
                ;**************************
CheckSpearPos   PSHS  A,B,X,Y
                LDA   SpearColPos               ;Get position
                CMPA  #$1A                      ;Far right of screen?
                BCS   CSP_Exit                  ;No - exit
                CLRA                            ;Yes - clear spear data
                STA   SpearActive
                STA   SpearColPos
                LDY   #BlankGraphic             ;Erase spear graphic
                LDX   SpearPos
                LDA   #$03
                LDB   #$20
                LBSR  Draw2ByteGrp
CSP_Exit        PULS  A,B,X,Y,PC

                ;*************************
                ;Check if fish 1 is active
                ;*************************
ChkFish1Active  PSHS  A,B,X,Y
                LDA   Fish1Active               ;Get Fish 1 active marker
                CMPA  #$01                      ;Is Fish 1 active?
                BEQ   CF1A_Exit                 ;Yes
                LDY   #BlankGraphic             ;Fish 1 not active - erase
                LDX   Fish1Pos
                LDA   #$05
                LDB   #$1F
                LBSR  Draw1ByteGrp
                JSR   $978E                     ;Generate 8 BIT random number
                LDB   $0116                     ;Calculate new position on screen
                CMPB  #$8F
                BCS   CF1A_2
                LDB   #$8F
CF1A_2          LDA   #$20
                MUL
                ADDD  #$095E
                STD   Fish1Pos                  ;Store new position
CF1A_Exit       PULS  A,B,X,Y,PC                ;Return

                ;**************
                ;Draw fish 1
                ;**************
DrawFish1       PSHS  A,B,X,Y
                LDB   Fish1Active               ;Get fish 1 active marker
                CMPB  #$01                      ;Is fish 1 active?
                BEQ   DF1_Exit                  ;Yes
                LDX   Fish1Pos                  ;Get fish 1 position
                LDY   #FishGraphic              ;Get blank graphic
                LDA   #$05                      ;Height of graphic
                LDB   #$1F                      ;Graphic offset
                LBSR  Draw1ByteGrp              ;Draw it
                LDA   #$01
                STA   Fish1Active               ;Fish 1 is now active
                LDB   #$08
                STB   Fish1RotCnt               ;Reset byte rotation count
                CLRB
                STB   Fish1ColPos
DF1_Exit        PULS  A,B,X,Y,PC                ;Return 74E7

                ;***********
                ;Move fish 1
                ;***********
MoveFish1       PSHS  A,B,X,Y
                SYNC
                LDB   #$05                      ;5 Rows to move
MF1_1           ANDCC #$FE
                LDX   Fish1Pos                  ;Get fish 1 position
                LBSR  RotateByteL               ;Rotate graphic left 1 bit
                LEAX  -1,X
                LBSR  RotateByteL
                LDX   Fish1Pos
                LEAX  32,X                      ;Move down to next row
                STX   Fish1Pos
                DECB                            ;Decrease row count
                BNE   MF1_1                     ;Not fisnihed
                LEAX  $FF60,X                   ;Reset fish 1 position
                STX   Fish1Pos                  ;Save
                LDB   Fish1RotCnt
                DECB                            ;Reduce rotation count
                STB   Fish1RotCnt
                BNE   MF1_Exit                  ;Can still rotate - exit
                LDB   #$08                      ;Move onto next byte - reset rotation count
                STB   Fish1RotCnt
                LDB   Fish1ColPos               ;Increase column count by 1
                INCB
                STB   Fish1ColPos
                CMPB  #$19                      ;Has fish reached left hand side of screen?
                BCS   MF1_2                     ;No
                CLRB                            ;Yes
                STB   Fish1ColPos               ;Reset column position count
                STB   Fish1Active               ;Fish 1 is no longer active
                LDB   NumLives                  ;Player has lost a life
                DECB
                STB   NumLives
                LBSR  FlashLivesText

MF1_2           LDX   Fish1Pos                  ;Move fish 1 - 1 byte left
                LEAX  -1,X
                STX   Fish1Pos
                JSR   $978E                     ;Generate random number to move fish 1 up or down
                LDB   $0116                     ;Get the number
                CMPB  #$7D                      ;Compare
                BHI   MF1_Up                    ;Move fish 1 up 2 rows
                LDX   Fish1Pos                  ;Erase fish 1
                LDY   #BlankGraphic
                LDA   #$05
                LDB   #$1F
                LBSR  Draw1ByteGrp
                LEAX  64,X                      ;Move fish 1 down 2 rows
                CMPX  #$1A5F                    ;reached bottom of screen?
                BCS   MF1_3                     ;Yes - can't move down
                LEAX  -64,X                     ;No - move down
MF1_3           STX   Fish1Pos                  ;Store new position
                LDY   #FishGraphic
                LBSR  Draw1ByteGrp              ;Draw fish 1
MF1_Exit        PULS  A,B,X,Y,PC                ;Return

MF1_Up          LDX   Fish1Pos                  ;Erase fish 1
                LDY   #BlankGraphic
                LDA   #$05
                LDB   #$1F
                LBSR  Draw1ByteGrp
                LEAX  -64,X                     ;Move fish 1 up 2 rows
                CMPX  #$08DF                    ;Reached top of screen?
                BHI   MF1_4                     ;Yes - can't move up
                LEAX  64,X                      ;No - move up
MF1_4           STX   Fish1Pos                  ;Store new position
                LDY   #FishGraphic
                LBSR  Draw1ByteGrp              ;Draw fish 1
                BRA   MF1_Exit                  ;Return

RotateByteL     PSHS  A,B,X,Y
                LDB   ,X
                ROLB
                STB   ,X
                PULS  A,B,X,Y,PC

                ;Make noise
MakeNoise       PSHS  A,B,X,Y
                LDA   $FF23
                ORA   #$08
                STA   $FF23
                LDX   #$0001
MN_2            LDA   #$FD
                STA   $FF20
                BSR   MN_1
                CLR   $FF20
                BSR   MN_1
                LEAX  1,X
                CMPX  SoundType
                BCS   MN_2
                LDA   $FF23
                ANDA  #$F7
                STA   $FF23
                PULS  A,B,X,Y,PC

MN_1            TFR   X,Y
MN_3            LEAY  -1,Y
                BNE   MN_3
                RTS

                ;*************************
                ;Timer for shark to appear
                ;*************************
SharkControl    LDX   SharkTimer                ;Get shark appearance Timer
                LEAX  -1,X                      ;Decrease it
                STX   SharkTimer                ;Save it
                CMPX  #$0001                    ;Has it reached 1?
                BHI   SCTL_1                    ;No
                LBEQ  ControlShark              ;Yes - start shark moving
SCTL_1          LDB   NumLives                  ;Get number of lives
                CMPB  #$00                      ;Is it zero?
                LBEQ  GameOver                  ;Yes - game over
                LBRA  MainLoop                  ;Return to main game loop

                ;********************************
                ;Control Fish 2 (always moves up)
                ;********************************
MoveFish2       PSHS  A,B,X,Y
                LDX   Fish2Pos                  ;Get fish 2 position
                LDY   #BlankGraphic             ;Point to Blank graphic
                LDA   #$05                      ;Height of graphic
                LDB   #$1F                      ;Graphic offset
                LBSR  Draw1ByteGrp              ;Draw it
                LEAX  -32,X                     ;Set new position 1 row up
                STX   Fish2Pos                  ;Save it
                CMPX  #$0880                    ;Reached top of game area?
                BHI   MF2_1                     ;No
                LDX   #$164F                    ;Yes - set new position
                STX   Fish2Pos                  ;Store it
MF2_1           LDY   #FishGraphic              ;Point to fish graphic
                LBSR  Draw1ByteGrp              ;Draw it
                LBSR  ChkFish2Hit               ;Check if fish 2 hits fish 1
                PULS  A,B,X,Y,PC                ;Return

                ;**********************************
                ;Control Fish 3 (always moves down)
                ;**********************************
MoveFish3       PSHS  A,B,X,Y
                LDX   Fish3Pos                  ;Get fish 1 position
                LDY   #BlankGraphic             ;point to Blank Graphic
                LDA   #$05                      ;Height of grahic
                LDB   #$1F                      ;Graphic offset
                LBSR  Draw1ByteGrp              ;Draw it
                LEAX  32,X                      ;Set new position 1 row down
                STX   Fish3Pos                  ;Store new psotion
                CMPX  #$1A36                    ;Reached bottom of game area?
                BCS   MF3_1                     ;No
                LDX   #$08B9                    ;Yes - set new position
                STX   Fish3Pos                  ;Store it
MF3_1           LDY   #FishGraphic              ;Point to fish graphic
                LBSR  Draw1ByteGrp              ;Draw it
                LBSR  ChkFish3Hit               ;
                PULS  A,B,X,Y,PC                ;Return

                ;***********************************************
                ;Check if anything hits fish 2 (fish 1 or arrow)
                ;***********************************************
ChkFish2Hit     PSHS  A,B,X,Y
                LDX   Fish2Pos                  ;Get position
                LEAX  -33,X                     ;Point to top left of fish
                LDB   #$07                      ;Loop counter
CF2H_1          LDA   ,X                        ;Get graphic at pointer
                CMPA  #$00                      ;Is it blank \ empty?
                BNE   Fish2Hit                  ;No -fish 2 has been hit
                LEAX  32,X                      ;Move down one row
                DECB                            ;reduce loop counter
                BNE   CF2H_1                    ;check again
CF2H_Exit       PULS  A,B,X,Y,PC                ;return

                ;**************************
                ;Fish 2 hit fish 1 or arrow
                ;**************************
Fish2Hit        LDX   Fish2Pos                  ;Get fish 2 position
                LDY   #BlankGraphic
                LDA   #$05
                LDB   #$1F
                LBSR  Draw1ByteGrp              ;Erase fish
                LDX   #$164F                    ;Reset position to bottom of screen
                STX   Fish2Pos                  ;Save
                LDB   #$06                      ;Play noise 6 times
                LDX   #$001E                    ;Set sound type
F2H_1           STX   SoundType
                LBSR  MakeNoise
                LEAX  -1,X                      ;Change sound
                LBSR  ScoreIncrease             ;Increase score
                DECB
                BNE   F2H_1                     ;Repeat noise and increase score again
                LDX   SharkTimer                ;Increase shark timer
                LEAX  35,X
                STX   SharkTimer
                BRA   CF2H_Exit                 ;Return

                ;***********************************************
                ;Check if anything hits fish 3 (fish 1 or arrow)
                ;***********************************************
ChkFish3Hit     PSHS  A,B,X,Y
                LDX   Fish3Pos                  ;Get position
                LEAX  -33,X                     ;Point to top left of fish
                LDB   #$06                      ;Loop counter
CF3H_1          LDA   ,X                        ;Get graphic at pointer
                CMPA  #$00                      ;Is it blank \ empty
                BNE   Fish3Hit                  ;No - fish 3 has been hit
                LEAX  32,X                      ;Move down 1 row
                DECB                            ;Reduce loop counter
                BNE   CF3H_1                    ;Check again
CF3H_Exit       PULS  A,B,X,Y,PC                ;Return

                ;**************************
                ;Fish 3 hit fish 1 or arrow
                ;**************************
Fish3Hit        LDX   Fish3Pos                  ;Get fish 3 position
                LDY   #BlankGraphic
                LDA   #$05
                LDB   #$1F
                LBSR  Draw1ByteGrp              ;erase fish
                LDX   #$08B9                    ;Reset position to top of screen
                STX   Fish3Pos                  ;Save it
                LDB   #$0A                      ;Play noise ten times
                LDX   #$003C                    ;set sound type
F3H_1           STX   SoundType
                LBSR  MakeNoise                ;Play noise
                LEAX  -1,X                      ;Change sound
                LBSR  ScoreIncrease             ;Increase score
                DECB
                BNE   F3H_1                     ;repeat noise and increase score again
                LDX   SharkTimer                ;Increase shark timer
                LEAX  35,X
                STX   SharkTimer
                BRA   CF3H_Exit                 ;Return

                ;****************
                ;Flash Lives text
                ;****************
FlashLivesText  PSHS  A,B,X,Y
                LDY   #$0004                    ;Flash 4 times
FLT_2           LDX   #$1C77                    ;Screen position
FLT_1           LDB   #$07                      ;Width of graphic
FLT_3           LDA   ,X                        ;Get graphic
                COMA                            ;invert colours
                STA   ,X                        ;draw back on screen
                LEAX  1,X                       ;move to next byte
                DECB                            ;reduce width count
                BNE   FLT_3                     ;more bytes to flash
                LEAX  25,X                      ;move down 1 row
                CMPX  #$1D7D                    ;reached bottom of graphic ?
                BCS   FLT_1                     ;no - flash next row
                LBSR  SharkBiteNoise            ;make noise
                LEAY  -1,Y                      ;Reduce flkash count
                CMPY  #$0000                    ;Flashed 4 times?
                BNE   FLT_2                     ;no - repeat

                ;Redraw number of lives
                LDB   NumLives                  ;Get number of lives
                LDA   #$08                      ;Calc where graphic is
                MUL
                ADDD  #NumbersText
                TFR   D,Y                       ;point to correct number
                LDX   #$1C7D                    ;screen position
                LDA   #$08                      ;height of graphic
                LDB   #$1F                      ;graphic offset
                LBSR  Draw1ByteGrp              ;draw it
                PULS  A,B,X,Y,PC                ;return

                ;Move Shark left
MoveShark       PSHS  A,B,X,Y
                SYNC
                LDB   #$0A                      ;Height of graphic
MS_2            LDA   #$01                      ;Rotate\move 1 bit
MS_1            ANDCC #$FE
                LDX   SharkPos                  ;get shark psotion
                LEAX  3,X                       ;adjust to most left hand side
                LBSR  RotateByteL               ;rotate all bits left
                LEAX  -1,X                      ;move to next byte
                LBSR  RotateByteL               ;rotate all bits left
                LEAX  -1,X                      ;move to next byte
                LBSR  RotateByteL               ;rotate all bits left
                LEAX  -1,X                      ;move to next byte
                LBSR  RotateByteL               ;rotate all bits left
                LEAX  -1,X                      ;move to next byte
                LBSR  RotateByteL               ;rotate all bits left
                DECA                            ;Have we moved once?
                BNE   MS_1                      ;No - repeat
                LDX   SharkPos                  ;get shark position
                LEAX  32,X                      ;move down 1 row
                STX   SharkPos                  ;save
                DECB                            ;fisished movoing all rows?
                BNE   MS_2                      ;No
                LEAX  $FEC0,X                   ;Reset shark position to original
                STX   SharkPos                  ;Save
                LDB   SharkRotCnt               ;Get bit rotation count
                DECB                            ;Decrease
                STB   SharkRotCnt               ;Save
                BNE   MS_Exit                   ;NOT rotated 8 times - exit
                LDB   #$08                      ;Rotated 8 times - reset count
                STB   SharkRotCnt               ;Save
                LDX   SharkPos                  ;ghet shark position
                LEAX  -1,X                      ;Moved 1 byte left
                BSR   ChkSharkMouth             ;Save
                LDB   SharkColPos               ;Update shark column
                INCB                            ;Increase it
                STB   SharkColPos               ;Save
                LBSR  CheckBarrelHit            ;Check if barrel hit shark
MS_Exit         STX   SharkPos
                PULS  A,B,X,Y,PC                ;return

                ;****************************
                ;Check if shark mouth to open
                ;****************************
ChkSharkMouth   PSHS  A,B,X,Y
                LDB   SharkColPos               ;Get shark column position
                CMPB  #$12                      ;moved 12 columns\bytes to the left?
                BCS   CSM_Exit                  ;No - Exit
                LDX   SharkPos                  ;Get shark position
                LEAX  -1,X                      ;
                LDY   #SharkMouthGrp            ;Point to open mouth graphic
                LDA   #$0A                      ;Height of graphic
                LDB   #$20                      ;Graphic offset
                LBSR  Draw4ByteGrp              ;Draw it
CSM_Exit        PULS  A,B,X,Y,PC

                ;**********************
                ;Game start point GameSetUp
                ;**********************
GameSetUp       LDA   #$F5                      ;setup pmode 4
                STA   $FFC3
                STA   $FFC5
                STA   $FFC7
                LDA   $FF22
                ANDA  #$07
                ORA   #$F8
                STA   $FF22

                ;Clear Screen
                LDX   #$0600
GSU_1           CLRA
                STA   ,X+
                CMPX  #$1E00
                BNE   GSU_1

                ;Draw lines at top of screen
                LDX   #$0600
GSU_3           LDB   #$20
                LDA   #$FF
GSU_2           STA   ,X+
                DECB
                BNE   GSU_2
                LEAX  64,X
                CMPX  #$0860
                BCS   GSU_3

                ;Write JAWS text
                LDY   #JawsTextGrp
                LDX   #$064B
GSU_4           LDA   #$0D
                LDB   #$20
                LBSR  Draw2ByteGrp
                LEAX  2,X
                LEAY  26,Y
                CMPY  #FishGraphic
                BNE   GSU_4

                ;Draw lines at bottom of screen
                LDX   #$1C20
GSU_6           LDB   #$20
GSU_5           LDA   #$FF
                STA   ,X+
                DECB
                BNE   GSU_5
                LEAX  64,X
                CMPX  #$1DE1
                BCS   GSU_6

                ;Write SCORE text
                LDY   #ScoreText
                LDX   #$1C62
GSU_7           LDA   #$08
                LDB   #$1F
                LBSR  Draw1ByteGrp
                LEAX  1,X
                LEAY  8,Y
                CMPY  #LivesText
                BNE   GSU_7

                ;Write LIVES text
                LDX   #$1C77
                LDY   #LivesText
GSU_8           LBSR  Draw1ByteGrp
                LEAY  8,Y
                LEAX  1,X
                CMPY  #Draw2ByteGrp
                BNE   GSU_8

                ;Write current score 000000
                LDY   #NumbersText
                LDX   #$1C68
GSU_9           LBSR  Draw1ByteGrp
                LEAX  1,X
                CMPX  #$1C6E
                BNE   GSU_9

                ;Write number of lives (3)
                LDY   #NBR_3
                LDX   #$1C7D
                LBSR  Draw1ByteGrp

                ;Setup game parameters
                LDX   #$08A8                    ;Overwritten below
                STX   BarrelPos                 ;Overwritten below
                LDX   #$1280                    ;Set scuba diver position
                STX   ScubaPos
                LDX   #$164F                    ;Set fish 2 position
                STX   Fish2Pos
                LDX   #$08B9                    ;Set fish 3 psotion
                STX   Fish3Pos
                LDB   #$04                      ;Set bit scroll amount
                STB   SpearRotCnt
                LDB   #$08                      ;Initial shark graphic errors when set to 2
                STB   SharkRotCnt
                CLRA                            ;Reset game parameters
                STA   BarrelHitMkr
                STA   BarrelActive
                STA   SharkColPos
                STA   SharkActive
                STA   SpearActive
                STA   SpearColPos
                STA   Fish1Active
                STA   Fish1ColPos
                LDX   #$0000                    ;Clear score
                STX   GameScore
                STX   CurrentScore
                STX   CurrentScore+2
                STX   CurrentScore+4
                LDB   #$08
                STB   Fish1RotCnt
                LDX   #$00FA                    ;Code repeated below??
                STX   SharkTimer
                LDB   #$03                      ;Set number of lives for game
                STB   NumLives

ML_2            LDX   #$00FF
                STX   SharkTimer
                LDX   #$08A8                    ;Barrel position
                STX   BarrelPos

                ;Draw barrel at top of screen
MainLoop        LDX   BarrelPos
                LDY   #BarrelGraphic
                LDA   #$05
                LDB   #$1F
                LBSR  Draw1ByteGrp              ;Draw barrel

                LBSR  DiverControl              ;Draw \ move Scuba Diver
                LBSR  FireSpearCheck            ;Check if spear being fired
                LBSR  SpearControl              ;If spear active, move it
                LBSR  CheckSpearPos             ;If spear reached far right, reset

                LBSR  DiverControl              ;Draw \ move Scuba diver
                LBSR  FireSpearCheck            ;Check if spear being fired
                LBSR  SpearControl              ;If spear active, move it
                LBSR  CheckSpearPos             ;If spear reached far right, reset

                LBSR  ChkFish1Active            ;78C6 17FBCB
                LBSR  DrawFish1                 ;Draw bottom fish (1st)
                LBSR  MoveFish1                 ;Move Fish 1 left

                LBSR  MoveFish2                 ;Draw + move fish 2
                LBSR  MoveFish3                 ;Draw + move fish 3

                LBRA  SharkControl

                ;Start Shark moving
ControlShark    LDB   #$01
                STB   SharkActive

                ;Erase fish 1
                LDY   #BlankGraphic             ;Erase fish 1
                LDX   Fish1Pos                  ;Get screen position
                LDA   #$05                      ;Height of graphic
                LDB   #$1F                      ;Graphic offset
                LBSR  Draw1ByteGrp              ;Draw blank graphic
                LEAX  -1,X
                LBSR  Draw1ByteGrp
                LBSR  SharkBiteNoise

                ;Erase fish 3
                LDX   Fish3Pos                  ;Get screen position
                LBSR  Draw1ByteGrp              ;Draw blank graphic
                LBSR  SharkBiteNoise

                ;Erase fish 2
                LDX   Fish2Pos                  ;Get screen position
                LBSR  Draw1ByteGrp              ;Draw blank graphic
                LBSR  SharkBiteNoise

                ;Erase spear
                LDX   SpearPos                  ;Get screen position
                LDA   #$03                      ;Height of graphic
                LDB   #$20                      ;Graphic offset
                LBSR  Draw2ByteGrp              ;Draw blank graphic
                LEAX  1,X                       ;move right
                LBSR  Draw2ByteGrp              ;Draw blank graphic
                LBSR  SharkBiteNoise            ;Make noise

                ;Set initial position for shark
                LDX   ScubaPos                  ;Get screen position
                LEAX  28,X                      ;Adjust it
                STX   SharkPos                  ;Save

                ;Draw shark
                LDY   #SharkNormGrp             ;Point to shark graphic
                LDA   #$0A                      ;Height of graphic
                LDB   #$20                      ;Graphic offset
                LBSR  Draw4ByteGrp              ;draw it

                LDA   #$32
CS_1            LBSR  MakeNoise                 ;Make Noise for shark appearance
                DECA
                BNE   CS_1                      ;Make noise again

CS_2            LBSR  MoveShark

                LDB   BarrelHitMkr              ;Get barrel hit shark marker
                CMPB  #$01                      ;Has it hit
                LBEQ  BarrelHitShark            ;Yes

                LBSR  CheckBarrelRel            ;Check if barrel has been relesed
                LBSR  MoveBarrel                ;Move barrel

                LDB   NumLives                  ;Get number of lives
                CMPB  #$00                      ;Is it Zero?
                LBEQ  GameOver                  ;Yes - Game Over

                LDB   SharkColPos
                CMPB  #$1A                      ;Has shark reached left hand side?
                BEQ   CS_3                      ;Yes
                BRA   CS_2                      ;No - move it
CS_3            LDA   #$06                      ;Number of times shark to shake tail
CS_4            PSHS  A
                LDX   SharkPos                  ;Erase Shark
                LDY   #BlankGraphic
                LDA   #$0A
                LDB   #$20
                LBSR  Draw4ByteGrp
                LDY   #SharkBiteGrp             ;Draw shark bite graphic
                LDA   #$13
                LDB   #$1D
                LBSR  Draw3ByteGrp
                LBSR  SharkBiteNoise            ;Make noise
                LDY   #BlankGraphic             ;Erase it
                LBSR  Draw3ByteGrp
                LDY   #SharkNormGrp             ;Draw normal shark
                LDA   #$0A
                LDB   #$20
                LBSR  Draw4ByteGrp
                LBSR  SharkBiteNoise            ;Make noise
                PULS  A
                DECA
                BNE   CS_4                      ;Repeat

CS_5            LDX   ScubaPos                  ;Get position of scuba diver
                LDY   #ScubaBitGraphic          ;Scuba Diver bitten in half graphic   7994 108E6F14
                LDA   #$08
                LDB   #$20
                LBSR  Draw2ByteGrp              ;Draw it
                LBSR  Delay                     ;SLow things down
                LDY   #BlankGraphic             ;Erase scuba diver
                LBSR  Draw2ByteGrp
                LEAX  32,X                      ;Move diver down screen
                STX   ScubaPos                  ;Store it
                CMPX  #$1A40                    ;Reached bottom of screen?
                BCS   CS_5                      ;No

                ;Reset everything
                LDX   #$1280                    ;Reposition diver
                STX   ScubaPos                  ;Save
                LDB   NumLives                  ;Decrease number of lives by 1
                DECB
                STB   NumLives
                LBSR  FlashLivesText            ;Flash the lives= text

                LDY   #BlankGraphic             ;Erase barrel
                LDX   BarrelPos
                LDA   #$08
                LDB   #$1F
                LBSR  Draw1ByteGrp
                LDA   #$1A                      ;Reset Spear \ shark \ barrel data
                STA   SpearColPos
                LDA   #$04
                STA   SpearRotCnt
                CLRA
                STA   SpearActive
                STA   SharkColPos
                STA   SharkActive
                STA   BarrelActive
                LDB   NumLives                  ;Get number of lives
                CMPB  #$00                      ;lives left?
                BHI   CS_6                      ;Yes - erase shark \ return
                LBRA  GameOver                  ;No - game over

CS_6            LDX   SharkPos                  ;Erase shark
                LDY   #BlankGraphic
                LDA   #$0C
                LDB   #$20
                LBSR  Draw4ByteGrp
                LBRA  ML_2                      ;Carry on with game

                ;************************
                ;Check for barrel release
                ;************************
CheckBarrelRel  PSHS  A,B,X,Y
                LDX   BarrelPos                 ;Get barrel position
                CMPX  #$08A8                    ;Is it not in start position?
                BHI   CBR_Exit                  ;No - Bypass key press check
                JSR   $8006                     ;Check for key press
                CMPA  #$0D                      ;Has ENTER\FIRE been Pressed?
                BNE   CBR_Exit                  ;No
                LDB   #$01                      ;Yes
                STB   BarrelActive              ;Set barrel in motion marker
CBR_Exit        PULS  A,B,X,Y,PC                ;return

                ;***********************
                ;Move barrel down screen
                ;***********************
MoveBarrel      PSHS  A,B,X,Y
                LDB   BarrelActive              ;Get barrel active marker
                CMPB  #$00                      ;Is barrel active?
                BEQ   MB_Exit                   ;No - Exit
                LDX   BarrelPos                 ;Yes - erase barrel
                LDY   #BlankGraphic
                LDA   #$05
                LDB   #$1F
                LBSR  Draw1ByteGrp
                LEAX  32,X                      ;Reposition barrel down screen
                STX   BarrelPos                 ;Save
                LDY   #BarrelGraphic
                LBSR  Draw1ByteGrp              ;Draw
                CMPX  #$1A00                    ;Reach bottom of screen?
                BCS   MB_Exit                   ;No - Exit
                LDY   #BlankGraphic             ;Yes - erase barrel
                LDA   #$05
                LDB   #$1F
                LBSR  Draw1ByteGrp
                LEAX  -32,X
                STX   BarrelPos
                CLRA                            ;Set barrel active marker to NO
                STA   BarrelActive              ;Store
MB_Exit         PULS  A,B,X,Y,PC                ;Return

                ;*************************
                ;Check if barrel hit shark
                ;*************************
CheckBarrelHit  PSHS  A,B,X,Y
                LDX   BarrelPos                 ;Get barrel position
                LEAX  1,X                       ;Look to the right
                LDB   #$05                      ;Loop counter
CBH_1           LDA   ,X                        ;Get byte value
                CMPA  #$C8                      ;Has barrel hit shark?
                BHI   CBH_2                     ;Yes - set marker
                LEAX  32,X                      ;Move check pos down screen
                DECB                            ;Reduce count
                BNE   CBH_1                     ;Check next row

CBH_Exit        PULS  A,B,X,Y,PC                ;Return

CBH_2           LDB   #$01                      ;Set Barrel hit Marker
                STB   BarrelHitMkr              ;Save
                BRA   CBH_Exit                  ;Exit

                ;********************
                ;Barrel has hit shark
                ;********************
BarrelHitShark  LDX   SharkPos                  ;Draw SHark Explode graphic
                LDY   #SharkExplodeGrp
                LDA   #$11
                LDB   #$20
                LBSR  Draw2ByteGrp
                LBSR  ExplodeNoise              ;Make Explode noise

                LDB   #$64
                LDY   #$003F
                STY   SoundType
BHS_1           LBSR  ScoreIncrease                     ;Update Score
                LBSR  MakeNoise                ;Make Snoise
                DECB
                BNE   BHS_1

                LDX   SharkPos                  ;Erase shark graphic
                LDY   #BlankGraphic
                LDA   #$13
                LDB   #$20
                LBSR  Draw4ByteGrp
                LBSR  SharkBiteNoise
                LDY   #BlankGraphic             ;Erase barrel graphic
                LDX   BarrelPos
                LDA   #$05
                LDB   #$1F
                LBSR  Draw1ByteGrp

                LDB   NumLives                  ;Write number of lives
                LDA   #$08
                MUL
                ADDD  #NumbersText
                TFR   D,Y
                LDX   #$1C7D
                LDA   #$08
                LDB   #$1F
                LBSR  Draw1ByteGrp
                LBSR  MakeNoise

                LDA   #$1A                      ;Reset game parameters
                STA   SpearColPos
                LDA   #$04
                STA   SpearRotCnt
                CLRA
                STA   SpearActive
                STA   SharkColPos
                STA   SharkActive
                STA   BarrelActive
                STA   BarrelHitMkr
                LBRA  ML_2                      ;Go back to main game loop

                ;****************************
                ;Shark \ Barrel explode noise
                ;****************************
ExplodeNoise    PSHS  A,B,X,Y
                LDA   $FF23
                ORA   #$08
                STA   $FF23
                CLR   $0147
                LDX   #$88B8
EN_2            LDA   ,X+
                BSR   EN_1
                DEC   $0147
                BNE   EN_2
                LDA   $FF23
                PULS  A,B,X,Y,PC

EN_1            ANDA  $0147
                STA   $FF20
                LDY   #$012C
EN_3            LEAY  -1,Y
                BNE   EN_3
                RTS
                RTS