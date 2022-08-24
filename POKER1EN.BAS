'Program POKER1
'============================================================================
'INTRE RANDURILE DUBLE DE EGALURI SE GASESTE AFISAREA CELOR CINCI CARTI !
'============================================================================
'Alegerea de a juca sau nu jocul
CLS
amban = 1000

LOCATE 1, 5
COLOR 2
INPUT " Do you want to play the game POKER1  ( Y / N ) "; RASPUNS$

WHILE RASPUNS$ = "Y" OR RASPUNS$ = "y"
'PLAY "O3T80MNL16DBAGL6D"
LOCATE 1, 5
PRINT "                                                                  "

s:
'Desenarea cartilor cu spatele?
SCREEN 12, 0, 0, 0
VIEW (30, 20)-(600, 210), 2, 6
LINE (110, 0)-(110, 210), 6
LINE (220, 0)-(220, 210), 6
LINE (340, 0)-(340, 210), 6
LINE (460, 0)-(460, 210), 6


'**************************TINUTE ( PASTRATE )******************************
VIEW (40, 230)-(130, 260), 3, 5
VIEW (150, 230)-(240, 260), 3, 5
VIEW (265, 230)-(355, 260), 3, 5
VIEW (380, 230)-(475, 260), 3, 5
VIEW (500, 230)-(590, 260), 3, 5
'***************************************************************************


'********************************RECOMPENSE*********************************

 LOCATE 19, 49
COLOR 4
PRINT " R  E  W  A  R  D  S "
COLOR 14
LOCATE 20, 49
PRINT " =+=+=+=+=+=+=+=+=+= "
LOCATE 21, 42
COLOR 2
PRINT "ROYAL FLUSH      !!!!!!!!...10.000 $"
LOCATE 22, 42
COLOR 3
PRINT "FOUR OF A KIND   !!!!!!!.....5.000 $"
LOCATE 23, 42
COLOR 5
PRINT "FLUSH            !!!!!!......3.000 $"
LOCATE 24, 42
COLOR 6
PRINT "FULL HOUSE       !!!!!.......2.000 $"
LOCATE 25, 42
COLOR 7
PRINT "STRAIGHT         !!!!........1.000 $"
LOCATE 26, 42
COLOR 8
PRINT "THREE OF A KIND  !!!...........500 $"
LOCATE 27, 42
COLOR 9
PRINT "TWO PAIRS        !!............200 $"
LOCATE 28, 42
COLOR 10
PRINT "ONE PAIR:J,Q,K,A !.............100 $"'

'****************************************************************************

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''mizare

LOCATE 20, 5
PRINT "CREDIT :"

LOCATE 21, 5
COLOR 4 'ROSU
PRINT "BET AT LEAST 100$...:"

COLOR 14 'afisare situatie curenta

LOCATE 20, 14: PRINT "You have : "; amban
LOCATE 20, 33: PRINT " $ "

DO
  LOCATE 22, 5: INPUT "BET  "; bani     'SUMA  pe care se mizeaza

  amban = amban - bani
LOCATE 20, 14: PRINT "You have : "; amban
LOCATE 20, 33: PRINT " $ "
 
 
  '   BEEP                                 '   DACA VREAU ZGOMOT
'PLAY "O3T80MNL16DBAGL6D"
  LOOP UNTIL bani <= amban



RANDOMIZE TIMER   'GENERARE NR. ALEATOARE
LOCATE 1, 1
PRINT "                                                               "
LOCATE 1, 38
COLOR 1
PRINT "POKER1"

'=========== PRIMA CARTE==================
                                        'RANDO CIFRE COLT I-A CARTE !
A:

FOR i = 1 TO 5
                                        'CULOAREA  DIN MIJLOC A CARTII 1
MIJLOC = INT(RND * 4 + 1)
IF MIJLOC = 1 THEN
    LET mij1$ = CHR$(3)
END IF
IF MIJLOC = 2 THEN
    LET mij1$ = CHR$(4)
END IF
IF MIJLOC = 3 THEN
    LET mij1$ = CHR$(5)
END IF
IF MIJLOC = 4 THEN
    LET mij1$ = CHR$(6)
END IF
                                ' LOCALIZAREA CULORII

IF MIJLOC = 1 OR MIJLOC = 2 THEN
        COLOR 4
        END IF
IF MIJLOC = 3 OR MIJLOC = 4 THEN
        COLOR 8
END IF

LOCATE 7, 11
PRINT mij1$
LOCATE 7, 14
PRINT mij1$
LOCATE 7, 8
PRINT mij1$
LOCATE 5, 11
PRINT mij1$
LOCATE 9, 11
PRINT mij1$
'''''''''''''''''''''''''''''''''''''''''''''''COLTURI I-A CARTE
COLT1 = INT(RND * 13 + 2)
SELECT CASE COLT1
CASE 2
LET COLT1$ = CHR$(50)
CASE 3
LET COLT1$ = CHR$(51)
CASE 4
LET COLT1$ = CHR$(52)
CASE 5
LET COLT1$ = CHR$(53)
CASE 6
LET COLT1$ = CHR$(54)
CASE 7
LET COLT1$ = CHR$(55)
CASE 8
LET COLT1$ = CHR$(56)
CASE 9
LET COLT1$ = CHR$(57)
CASE 10
LET COLT1$ = LTRIM$(STR$(10))
CASE 11
     LET COLT1$ = "A"
CASE 12
     LET COLT1$ = "J"
CASE 13
     LET COLT1$ = "Q"
CASE 14
     LET COLT1$ = "K"
     
END SELECT


 

                               '    POZITIONARE NR. COLTURI
LOCATE 3, 6
PRINT "  "
LOCATE 3, 6
PRINT COLT1$

LOCATE 3, 16
PRINT "  "
LOCATE 3, 16
PRINT COLT1$

LOCATE 12, 6
PRINT "  "
LOCATE 12, 6
PRINT COLT1$

LOCATE 12, 16
PRINT "  "
LOCATE 12, 16
PRINT COLT1$

NEXT
'======================A DOUA CARTE =====================================
                'RANDO CIFRE COLT A II-A CARTE !
b:
FOR i = 1 TO 10
                                        'CULOAREA  DIN MIJLOC A CARTII 2
MIJLOC = INT(RND * 4 + 1)
IF MIJLOC = 1 THEN
    LET mij2$ = CHR$(3)
END IF
IF MIJLOC = 2 THEN
    LET mij2$ = CHR$(4)
END IF
IF MIJLOC = 3 THEN
    LET mij2$ = CHR$(5)
END IF
IF MIJLOC = 4 THEN
    LET mij2$ = CHR$(6)
END IF
                                ' LOCALIZAREA CULORII

IF MIJLOC = 1 OR MIJLOC = 2 THEN
        COLOR 4
END IF
IF MIJLOC = 3 OR MIJLOC = 4 THEN
        COLOR 8
END IF

LOCATE 7, 25
PRINT mij2$
LOCATE 7, 28
PRINT mij2$
LOCATE 7, 22
PRINT mij2$
LOCATE 5, 25
PRINT mij2$
LOCATE 9, 25
PRINT mij2$

'''''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI A II-A CARTE
COLT2 = INT(RND * 13 + 2)
SELECT CASE COLT2
CASE 2
LET COLT2$ = CHR$(50)
CASE 3
LET COLT2$ = CHR$(51)
CASE 4
LET COLT2$ = CHR$(52)
CASE 5
LET COLT2$ = CHR$(53)
CASE 6
LET COLT2$ = CHR$(54)
CASE 7
LET COLT2$ = CHR$(55)
CASE 8
LET COLT2$ = CHR$(56)
CASE 9
LET COLT2$ = CHR$(57)
CASE 10
LET COLT2$ = LTRIM$(STR$(10))
CASE 11
     LET COLT2$ = "A"
CASE 12
     LET COLT2$ = "J"
CASE 13
     LET COLT2$ = "Q"
CASE 14
     LET COLT2$ = "K"
     
END SELECT

                                        '    POZITIONARE NR. COLTURI
LOCATE 3, 20
PRINT "  "
LOCATE 3, 20
PRINT COLT2$

LOCATE 3, 30
PRINT "  "
LOCATE 3, 30
PRINT COLT2$

LOCATE 12, 20
PRINT "  "
LOCATE 12, 20
PRINT COLT2$

LOCATE 12, 30
PRINT "  "
LOCATE 12, 30
PRINT COLT2$

NEXT

'======================A TREIA CARTE =====================================
                                        'RANDO CIFRE COLT A III-A CARTE !
c:
FOR i = 1 TO 15
                                        'CULOAREA  DIN MIJLOC A CARTII 3

MIJLOC = INT(RND * 4 + 1)
IF MIJLOC = 1 THEN
    LET mij3$ = CHR$(3)
END IF
IF MIJLOC = 2 THEN
    LET mij3$ = CHR$(4)
END IF
IF MIJLOC = 3 THEN
    LET mij3$ = CHR$(5)
END IF
IF MIJLOC = 4 THEN
    LET mij3$ = CHR$(6)
END IF
                                ' LOCALIZAREA CULORII

IF MIJLOC = 1 OR MIJLOC = 2 THEN
        COLOR 4
END IF
IF MIJLOC = 3 OR MIJLOC = 4 THEN
        COLOR 8
END IF

LOCATE 7, 39
PRINT mij3$
LOCATE 7, 42
PRINT mij3$
LOCATE 7, 36
PRINT mij3$
LOCATE 5, 39
PRINT mij3$
LOCATE 9, 39
PRINT mij3$
''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI A TREIA CARTE
COLT3 = INT(RND * 13 + 2)
SELECT CASE COLT3
CASE 2
LET COLT3$ = CHR$(50)
CASE 3
LET COLT3$ = CHR$(51)
CASE 4
LET COLT3$ = CHR$(52)
CASE 5
LET COLT3$ = CHR$(53)
CASE 6
LET COLT3$ = CHR$(54)
CASE 7
LET COLT3$ = CHR$(55)
CASE 8
LET COLT3$ = CHR$(56)
CASE 9
LET COLT3$ = CHR$(57)
CASE 10
LET COLT3$ = LTRIM$(STR$(10))
CASE 11
     LET COLT3$ = "A"
CASE 12
     LET COLT3$ = "J"
CASE 13
     LET COLT3$ = "Q"
CASE 14
     LET COLT3$ = "K"
     
END SELECT
                                        '    POZITIONARE NR. COLTURI
LOCATE 3, 34
PRINT "  "
LOCATE 3, 34
PRINT COLT3$

LOCATE 3, 45
PRINT "  "
LOCATE 3, 45
PRINT COLT3$

LOCATE 12, 34
PRINT "  "
LOCATE 12, 34
PRINT COLT3$

LOCATE 12, 45
PRINT "  "
LOCATE 12, 45
PRINT COLT3$
                       
NEXT

'======================A PATRA CARTE =====================================
                                        'RANDO CIFRE COLT A IV-A CARTE !
D:
FOR i = 1 TO 20
                                        'CULOAREA  DIN MIJLOC A CARTII 4
MIJLOC = INT(RND * 4 + 1)
IF MIJLOC = 1 THEN
    LET mij4$ = CHR$(3)
END IF
IF MIJLOC = 2 THEN
    LET mij4$ = CHR$(4)
END IF
IF MIJLOC = 3 THEN
    LET mij4$ = CHR$(5)
END IF
IF MIJLOC = 4 THEN
    LET mij4$ = CHR$(6)
END IF
                                ' LOCALIZAREA CULORII

IF MIJLOC = 1 OR MIJLOC = 2 THEN
        COLOR 4
END IF
IF MIJLOC = 3 OR MIJLOC = 4 THEN
        COLOR 8
END IF

LOCATE 7, 54
PRINT mij4$
LOCATE 7, 57
PRINT mij4$
LOCATE 7, 51
PRINT mij4$
LOCATE 5, 54
PRINT mij4$
LOCATE 9, 54
PRINT mij4$
'''''''''''''''''''''''''''''''''''''''''''''''COLTURI LA A PATRA CARTE
COLT4 = INT(RND * 13 + 2)
SELECT CASE COLT4
CASE 2
LET COLT4$ = CHR$(50)
CASE 3
LET COLT4$ = CHR$(51)
CASE 4
LET COLT4$ = CHR$(52)
CASE 5
LET COLT4$ = CHR$(53)
CASE 6
LET COLT4$ = CHR$(54)
CASE 7
LET COLT4$ = CHR$(55)
CASE 8
LET COLT4$ = CHR$(56)
CASE 9
LET COLT4$ = CHR$(57)
CASE 10
LET COLT4$ = LTRIM$(STR$(10))
CASE 11
     LET COLT4$ = "A"
CASE 12
     LET COLT4$ = "J"
CASE 13
     LET COLT4$ = "Q"
CASE 14
     LET COLT4$ = "K"
     
END SELECT

                                        '    POZITIONARE NR. COLTURI
LOCATE 3, 48
PRINT "  "
LOCATE 3, 48
PRINT COLT4$

LOCATE 3, 60
PRINT "  "
LOCATE 3, 60
PRINT COLT4$

LOCATE 12, 48
PRINT "  "
LOCATE 12, 48
PRINT COLT4$

LOCATE 12, 60
PRINT "  "
LOCATE 12, 60
PRINT COLT4$

NEXT
'======================A CINCEA CARTE =====================================
                'RANDO CIFRE COLT A V-A CARTE !

e:
'PLAY "O3T80MNL16DBAGL6D"

FOR i = 1 TO 25

                          'CULOAREA  DIN MIJLOC A CARTII 5

MIJLOC = INT(RND * 4 + 1)
IF MIJLOC = 1 THEN
    LET mij5$ = CHR$(3)
END IF
IF MIJLOC = 2 THEN
    LET mij5$ = CHR$(4)
END IF
IF MIJLOC = 3 THEN
    LET mij5$ = CHR$(5)
END IF
IF MIJLOC = 4 THEN
    LET mij5$ = CHR$(6)
END IF
                                ' LOCALIZAREA CULORII

IF MIJLOC = 1 OR MIJLOC = 2 THEN
        COLOR 4
END IF
IF MIJLOC = 3 OR MIJLOC = 4 THEN
        COLOR 8
END IF

LOCATE 7, 69
PRINT mij5$
LOCATE 7, 72
PRINT mij5$
LOCATE 7, 66
PRINT mij5$
LOCATE 5, 69
PRINT mij5$
LOCATE 9, 69
PRINT mij5$

''''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI CARTEA A CINCEA
COLT5 = INT(RND * 13 + 2)
SELECT CASE COLT5
CASE 2
LET COLT5$ = CHR$(50)
CASE 3
LET COLT5$ = CHR$(51)
CASE 4
LET COLT5$ = CHR$(52)
CASE 5
LET COLT5$ = CHR$(53)
CASE 6
LET COLT5$ = CHR$(54)
CASE 7
LET COLT5$ = CHR$(55)
CASE 8
LET COLT5$ = CHR$(56)
CASE 9
LET COLT5$ = CHR$(57)
CASE 10
LET COLT$ = LTRIM$(STR$(10))
CASE 11
     LET COLT5$ = "A"
CASE 12
     LET COLT5$ = "J"
CASE 13
     LET COLT5$ = "Q"
CASE 14
     LET COLT5$ = "K"
     
END SELECT





                               '    POZITIONARE NR. COLTURI
LOCATE 3, 63
PRINT "  "
LOCATE 3, 63
PRINT COLT5$

LOCATE 3, 74
PRINT "  "
LOCATE 3, 74
PRINT COLT5$

LOCATE 12, 63
PRINT "  "
LOCATE 12, 63
PRINT COLT5$

LOCATE 12, 74
PRINT "  "
LOCATE 12, 74
PRINT COLT5$

NEXT

'============================================================================
'INTRE RANDURILE DUBLE DE EGALURI SE GASESTE AFISAREA CELOR CINCI CARTI !
'============================================================================

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''ALEGERI
p:
COLOR 4
LOCATE 24, 2
INPUT " Served?(S) Or you ask cards ? (Y) !", ALEG$
IF ALEG$ = "S" OR ALEG$ = "s" THEN
GOSUB castig
GOTO r
END IF
IF ALEG$ = "Y" OR ALEG$ = "y" THEN
GOTO t
END IF
GOTO r


''''''''''''''''''''''''''''''''''''''''''''''''''''''ALEG DE A PASTRA
t:
COLOR 3
LOCATE 25, 4
PRINT "Do push under the card to change:D"
LOCATE 26, 4
PRINT "Under the card keeped press     :N"
'**************************TINUTE ( PASTRATE )******************************
VIEW (40, 230)-(130, 260), 3, 5
VIEW (150, 230)-(240, 260), 3, 5
VIEW (265, 230)-(355, 260), 3, 5
VIEW (380, 230)-(475, 260), 3, 5
VIEW (500, 230)-(590, 260), 3, 5
'***************************************************************************
'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
''''''''''''''''''''''''''TIN I-A CARTE ?
LOCATE 16, 7
COLOR 14
INPUT "D or N ?", TINDANU1$
LOCATE 16, 21
COLOR 14
INPUT "D or N ?", TINDANU2$
LOCATE 16, 35
COLOR 14
INPUT "D or N ?", TINDANU3$
LOCATE 16, 49
COLOR 14
INPUT "D or N ?", TINDANU4$
LOCATE 16, 64
COLOR 14
INPUT "D or N ?", TINDANU5$






IF TINDANU1$ = "D" OR TINDANU1$ = "d" THEN

'=========== PRIMA CARTE==================
                                        'RANDO CIFRE COLT I-A CARTE !

FOR i = 1 TO 50
                                        'CULOAREA  DIN MIJLOC A CARTII 1
MIJLOC = INT(RND * 4 + 1)
IF MIJLOC = 1 THEN
    LET mij1$ = CHR$(3)
END IF
IF MIJLOC = 2 THEN
    LET mij1$ = CHR$(4)
END IF
IF MIJLOC = 3 THEN
    LET mij1$ = CHR$(5)
END IF
IF MIJLOC = 4 THEN
    LET mij1$ = CHR$(6)
END IF
                                ' LOCALIZAREA CULORII

IF MIJLOC = 1 OR MIJLOC = 2 THEN
        COLOR 4
        END IF
IF MIJLOC = 3 OR MIJLOC = 4 THEN
        COLOR 8
END IF

LOCATE 7, 11
PRINT mij1$
LOCATE 7, 14
PRINT mij1$
LOCATE 7, 8
PRINT mij1$
LOCATE 5, 11
PRINT mij1$
LOCATE 9, 11
PRINT mij1$
'''''''''''''''''''''''''''''''''''''''''''''''COLTURI I-A CARTE
COLT1 = INT(RND * 13 + 2)
SELECT CASE COLT1
CASE 2
LET COLT1$ = CHR$(50)
CASE 3
LET COLT1$ = CHR$(51)
CASE 4
LET COLT1$ = CHR$(52)
CASE 5
LET COLT1$ = CHR$(53)
CASE 6
LET COLT1$ = CHR$(54)
CASE 7
LET COLT1$ = CHR$(55)
CASE 8
LET COLT1$ = CHR$(56)
CASE 9
LET COLT1$ = CHR$(57)
CASE 10
LET COLT1$ = LTRIM$(STR$(10))
CASE 11
     LET COLT1$ = "A"
CASE 12
     LET COLT1$ = "J"
CASE 13
     LET COLT1$ = "Q"
CASE 14
     LET COLT1$ = "K"
   
END SELECT




                               '    POZITIONARE NR. COLTURI
LOCATE 3, 6
PRINT "  "
LOCATE 3, 6
PRINT COLT1$

LOCATE 3, 16
PRINT "  "
LOCATE 3, 16
PRINT COLT1$

LOCATE 12, 6
PRINT "  "
LOCATE 12, 6
PRINT COLT1$

LOCATE 12, 16
PRINT "  "
LOCATE 12, 16
PRINT COLT1$

NEXT

END IF
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

IF TINDANU1$ = "N" OR TINDANU1$ = "n" THEN
END IF
'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
''''''''''''''''''''''''''''''''''''''''''''''''''''''TIN A II-A CARTE ?
'LOCATE 16, 21
'COLOR 14
'INPUT "D or N ?", TINDANU2$
IF TINDANU2$ = "D" OR TINDANU2$ = "d" THEN

'======================A DOUA CARTE =====================================
                'RANDO CIFRE COLT A II-A CARTE !

FOR i = 1 TO 40
                                        'CULOAREA  DIN MIJLOC A CARTII 2
MIJLOC = INT(RND * 4 + 1)
IF MIJLOC = 1 THEN
    LET mij2$ = CHR$(3)
END IF
IF MIJLOC = 2 THEN
    LET mij2$ = CHR$(4)
END IF
IF MIJLOC = 3 THEN
    LET mij2$ = CHR$(5)
END IF
IF MIJLOC = 4 THEN
    LET mij2$ = CHR$(6)
END IF
                                ' LOCALIZAREA CULORII

IF MIJLOC = 1 OR MIJLOC = 2 THEN
        COLOR 4
END IF
IF MIJLOC = 3 OR MIJLOC = 4 THEN
        COLOR 8
END IF

LOCATE 7, 25
PRINT mij2$
LOCATE 7, 28
PRINT mij2$
LOCATE 7, 22
PRINT mij2$
LOCATE 5, 25
PRINT mij2$
LOCATE 9, 25
PRINT mij2$

'''''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI A II-A CARTE
COLT2 = INT(RND * 13 + 2)
SELECT CASE COLT2
CASE 2
LET COLT2$ = CHR$(50)
CASE 3
LET COLT2$ = CHR$(51)
CASE 4
LET COLT2$ = CHR$(52)
CASE 5
LET COLT2$ = CHR$(53)
CASE 6
LET COLT2$ = CHR$(54)
CASE 7
LET COLT2$ = CHR$(55)
CASE 8
LET COLT2$ = CHR$(56)
CASE 9
LET COLT2$ = CHR$(57)
CASE 10
LET COLT2$ = LTRIM$(STR$(10))
CASE 11
     LET COLT2$ = "A"
CASE 12
     LET COLT2$ = "J"
CASE 13
     LET COLT2$ = "Q"
CASE 14
     LET COLT2$ = "K"
    
END SELECT

                                        '    POZITIONARE NR. COLTURI
LOCATE 3, 20
PRINT "  "
LOCATE 3, 20
PRINT COLT2$

LOCATE 3, 30
PRINT "  "
LOCATE 3, 30
PRINT COLT2$

LOCATE 12, 20
PRINT "  "
LOCATE 12, 20
PRINT COLT2$

LOCATE 12, 30
PRINT "  "
LOCATE 12, 30
PRINT COLT2$

NEXT

END IF
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

IF TINDANU2$ = "N" OR TINDANU2$ = "n" THEN
END IF
'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

''''''''''''''''''''''''''TIN A III-A CARTE ?
'LOCATE 16, 35
'COLOR 14
'INPUT "D or N?", TINDANU3$
IF TINDANU3$ = "D" OR TINDANU3$ = "d" THEN

'======================A TREIA CARTE =====================================
                                        'RANDO CIFRE COLT A III-A CARTE !

FOR i = 1 TO 40
                                        'CULOAREA  DIN MIJLOC A CARTII 3

MIJLOC = INT(RND * 4 + 1)
IF MIJLOC = 1 THEN
    LET mij3$ = CHR$(3)
END IF
IF MIJLOC = 2 THEN
    LET mij3$ = CHR$(4)
END IF
IF MIJLOC = 3 THEN
    LET mij3$ = CHR$(5)
END IF
IF MIJLOC = 4 THEN
    LET mij3$ = CHR$(6)
END IF
                                ' LOCALIZAREA CULORII

IF MIJLOC = 1 OR MIJLOC = 2 THEN
        COLOR 4
END IF
IF MIJLOC = 3 OR MIJLOC = 4 THEN
        COLOR 8
END IF

LOCATE 7, 39
PRINT mij3$
LOCATE 7, 42
PRINT mij3$
LOCATE 7, 36
PRINT mij3$
LOCATE 5, 39
PRINT mij3$
LOCATE 9, 39
PRINT mij3$
''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI A TREIA CARTE
COLT3 = INT(RND * 13 + 2)
SELECT CASE COLT3
CASE 2
LET COLT3$ = CHR$(50)
CASE 3
LET COLT3$ = CHR$(51)
CASE 4
LET COLT3$ = CHR$(52)
CASE 5
LET COLT3$ = CHR$(53)
CASE 6
LET COLT3$ = CHR$(54)
CASE 7
LET COLT3$ = CHR$(55)
CASE 8
LET COLT3$ = CHR$(56)
CASE 9
LET COLT3$ = CHR$(57)
CASE 10
LET COLT3$ = LTRIM$(STR$(10))
CASE 11
     LET COLT3$ = "A"
CASE 12
     LET COLT3$ = "J"
CASE 13
     LET COLT3$ = "Q"
CASE 14
     LET COLT3$ = "K"
    
END SELECT
                                        '    POZITIONARE NR. COLTURI
LOCATE 3, 34
PRINT "  "
LOCATE 3, 34
PRINT COLT3$

LOCATE 3, 45
PRINT "  "
LOCATE 3, 45
PRINT COLT3$

LOCATE 12, 34
PRINT "  "
LOCATE 12, 34
PRINT COLT3$

LOCATE 12, 45
PRINT "  "
LOCATE 12, 45
PRINT COLT3$
                      
NEXT

END IF
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

IF TINDANU3$ = "N" OR TINDANU3$ = "n" THEN
END IF
'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

''''''''''''''''''''''''''TIN A IV-A CARTE ?
'LOCATE 16, 49
'COLOR 14
'INPUT "D sau N?", TINDANU4$
IF TINDANU4$ = "D" OR TINDANU4$ = "d" THEN

'======================A PATRA CARTE =====================================
                                        'RANDO CIFRE COLT A IV-A CARTE !

FOR i = 1 TO 40
                                        'CULOAREA  DIN MIJLOC A CARTII 4
MIJLOC = INT(RND * 4 + 1)
IF MIJLOC = 1 THEN
    LET mij4$ = CHR$(3)
END IF
IF MIJLOC = 2 THEN
    LET mij4$ = CHR$(4)
END IF
IF MIJLOC = 3 THEN
    LET mij4$ = CHR$(5)
END IF
IF MIJLOC = 4 THEN
    LET mij4$ = CHR$(6)
END IF
                                ' LOCALIZAREA CULORII

IF MIJLOC = 1 OR MIJLOC = 2 THEN
        COLOR 4
END IF
IF MIJLOC = 3 OR MIJLOC = 4 THEN
        COLOR 8
END IF

LOCATE 7, 54
PRINT mij4$
LOCATE 7, 57
PRINT mij4$
LOCATE 7, 51
PRINT mij4$
LOCATE 5, 54
PRINT mij4$
LOCATE 9, 54
PRINT mij4$
'''''''''''''''''''''''''''''''''''''''''''''''COLTURI LA A PATRA CARTE
COLT4 = INT(RND * 13 + 2)
SELECT CASE COLT4
CASE 2
LET COLT4$ = CHR$(50)
CASE 3
LET COLT4$ = CHR$(51)
CASE 4
LET COLT4$ = CHR$(52)
CASE 5
LET COLT4$ = CHR$(53)
CASE 6
LET COLT4$ = CHR$(54)
CASE 7
LET COLT4$ = CHR$(55)
CASE 8
LET COLT4$ = CHR$(56)
CASE 9
LET COLT4$ = CHR$(57)
CASE 10
LET COLT4$ = LTRIM$(STR$(10))
CASE 11
     LET COLT4$ = "A"
CASE 12
     LET COLT4$ = "J"
CASE 13
     LET COLT4$ = "Q"
CASE 14
     LET COLT4$ = "K"
    
END SELECT

                                        '    POZITIONARE NR. COLTURI
LOCATE 3, 48
PRINT "  "
LOCATE 3, 48
PRINT COLT4$

LOCATE 3, 60
PRINT "  "
LOCATE 3, 60
PRINT COLT4$

LOCATE 12, 48
PRINT "  "
LOCATE 12, 48
PRINT COLT4$

LOCATE 12, 60
PRINT "  "
LOCATE 12, 60
PRINT COLT4$

NEXT

END IF
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

IF TINDANU4$ = "N" OR TINDANU4$ = "n" THEN
END IF
'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

''''''''''''''''''''''''''TIN A V-A CARTE ?
'LOCATE 16, 64
'COLOR 14
'INPUT "D sau N?", TINDANU5$
IF TINDANU5$ = "D" OR TINDANU5$ = "d" THEN

'======================A CINCEA CARTE =====================================
                'RANDO CIFRE COLT A V-A CARTE !


'PLAY "O3T80MNL16DBAGL6D"

FOR i = 1 TO 30

                          'CULOAREA  DIN MIJLOC A CARTII 5

MIJLOC = INT(RND * 4 + 1)
IF MIJLOC = 1 THEN
    LET mij5$ = CHR$(3)
END IF
IF MIJLOC = 2 THEN
    LET mij5$ = CHR$(4)
END IF
IF MIJLOC = 3 THEN
    LET mij5$ = CHR$(5)
END IF
IF MIJLOC = 4 THEN
    LET mij5$ = CHR$(6)
END IF
                                ' LOCALIZAREA CULORII

IF MIJLOC = 1 OR MIJLOC = 2 THEN
        COLOR 4
END IF
IF MIJLOC = 3 OR MIJLOC = 4 THEN
        COLOR 8
END IF

LOCATE 7, 69
PRINT mij5$
LOCATE 7, 72
PRINT mij5$
LOCATE 7, 66
PRINT mij5$
LOCATE 5, 69
PRINT mij5$
LOCATE 9, 69
PRINT mij5$

''''''''''''''''''''''''''''''''''''''''''''''''''''COLTURI CARTEA A CINCEA
COLT5 = INT(RND * 13 + 2)
SELECT CASE COLT5
CASE 2
LET COLT5$ = CHR$(50)
CASE 3
LET COLT5$ = CHR$(51)
CASE 4
LET COLT5$ = CHR$(52)
CASE 5
LET COLT5$ = CHR$(53)
CASE 6
LET COLT5$ = CHR$(54)
CASE 7
LET COLT5$ = CHR$(55)
CASE 8
LET COLT5$ = CHR$(56)
CASE 9
LET COLT5$ = CHR$(57)
CASE 10
LET COLT$ = LTRIM$(STR$(10))
CASE 11
     LET COLT5$ = "A"
CASE 12
     LET COLT5$ = "J"
CASE 13
     LET COLT5$ = "Q"
CASE 14
     LET COLT5$ = "K"
    
END SELECT





                               '    POZITIONARE NR. COLTURI
LOCATE 3, 63
PRINT "  "
LOCATE 3, 63
PRINT COLT5$

LOCATE 3, 74
PRINT "  "
LOCATE 3, 74
PRINT COLT5$

LOCATE 12, 63
PRINT "  "
LOCATE 12, 63
PRINT COLT5$

LOCATE 12, 74
PRINT "  "
LOCATE 12, 74
PRINT COLT5$

NEXT

END IF
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

IF TINDANU5$ = "N" OR TINDANU5$ = "n" THEN
END IF

GOSUB castig

GOTO r
'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

r:
COLOR 14 'afisare situatie curenta
LOCATE 20, 14: PRINT "You have : "; amban
LOCATE 20, 33: PRINT " $ "
GOTO i

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


WEND


castig:
'============================================================================
'INTRE RANDURILE DUBLE DE EGALURI SE GASESTE AFISAREA CELOR CINCI CARTI !
'============================================================================

'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'                            CASTIGURILE
'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

'+++++++++++++++++++++++++++++ premieri++++++++++++++++++++++++
'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''QUINTA ROYALA
IF COLT1 <> COLT2 <> COLT3 <> COLT4 <> COLT5 THEN


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''QUINTA ROYALA
  IF (COLT1 < COLT2 AND COLT1 < COLT3 AND COLT1 < COLT4 AND COLT1 < COLT5) AND (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT1 + 10) AND (VAL(mij1$) = VAL(mij2$) = VAL(mij3$) = VAL(mij4$) = VAL(mij5$)) THEN
     premiu = 10000
     PLAY "O3T80MNL16DBAGL6D"
     amban = amban + premiu
     GOTO r
  END IF
  IF (COLT2 < COLT1 AND COLT2 < COLT3 AND COLT2 < COLT4 AND COLT2 < COLT5) AND (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT2 + 10) AND (VAL(mij1$) = VAL(mij2$) = VAL(mij3$) = VAL(mij4$) = VAL(mij5$)) THEN
     premiu = 10000
     PLAY "O3T80MNL16DBAGL6D"
     amban = amban + premiu
     GOTO r
  END IF
  IF (COLT3 < COLT2 AND COLT3 < COLT1 AND COLT3 < COLT4 AND COLT3 < COLT5) AND (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT3 + 10) AND (VAL(mij1$) = VAL(mij2$) = VAL(mij3$) = VAL(mij4$) = VAL(mij5$)) THEN
     premiu = 10000
     PLAY "O3T80MNL16DBAGL6D"
     amban = amban + premiu
     GOTO r
  END IF
  IF (COLT4 < COLT2 AND COLT4 < COLT3 AND COLT4 < COLT1 AND COLT4 < COLT5) AND (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT4 + 10) AND (VAL(mij1$) = VAL(mij2$) = VAL(mij3$) = VAL(mij4$) = VAL(mij5$)) THEN
     premiu = 10000
     PLAY "O3T80MNL16DBAGL6D"
     amban = amban + premiu
     GOTO r
  END IF
  IF (COLT5 < COLT2 AND COLT5 < COLT3 AND COLT5 < COLT4 AND COLT5 < COLT1) AND (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT5 + 10) AND (VAL(mij1$) = VAL(mij2$) = VAL(mij3$) = VAL(mij4$) = VAL(mij5$)) THEN
     premiu = 10000
     PLAY "O3T80MNL16DBAGL6D"
     amban = amban + premiu
     GOTO r
  END IF


END IF
'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''careu
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
IF COLT1 = COLT2 = COLT3 = COLT4 OR COLT1 = COLT2 = COLT3 = COLT5 OR COLT1 = COLT2 = COLT4 = COLT5 OR COLT1 = COLT3 = COLT4 = COLT5 OR COLT2 = COLT3 = COLT4 = COLT5 THEN
premiu = 5000
PLAY "O3T80MNL16DBAGL6D"
amban = amban + premiu
GOTO r
END IF

'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''culoare
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

IF VAL(mij1$) = VAL(mij2$) = VAL(mij3$) = VAL(mij4$) = VAL(mij5$) THEN
premiu = 3000
PLAY "O3T80MNL16DBAGL6D"
amban = amban + premiu
GOTO r
END IF


'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''FULL
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

IF ((COLT1 = COLT2 = COLT3) AND (COLT4 = COLT5)) OR ((COLT1 = COLT2 = COLT5) AND (COLT3 = COLT4)) OR ((COLT1 = COLT2 = COLT4) AND (COLT3 = COLT5)) OR ((COLT2 = COLT3 = COLT4) AND (COLT1 = COLT5)) OR ((COLT2 = COLT3 = COLT5) AND (COLT1 = COLT4)) OR ((COLT1 = COLT3 = COLT4) AND (COLT5 = COLT2)) OR ((COLT1 = COLT3 = COLT5) AND (COLT2 = COLT4)) OR ((COLT5 = COLT2 = COLT4) AND (COLT1 = COLT3)) OR ((COLT1 = COLT4 = COLT5) AND (COLT3 = COLT2)) OR ((COLT4 = COLT3 = COLT5) AND (COLT1 = COLT2)) THEN
premiu = 2000
PLAY "O3T80MNL16DBAGL6D"
amban = amban + premiu
GOTO r
END IF


'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''QUINTA
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

IF COLT1 <> COLT2 <> COLT3 <> COLT4 <> COLT5 THEN

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''QUINTA
  IF (COLT1 < COLT2 AND COLT1 < COLT3 AND COLT1 < COLT4 AND COLT1 < COLT5) AND (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT1 + 10) THEN
     premiu = 1000
     PLAY "O3T80MNL16DBAGL6D"
     amban = amban + premiu
     GOTO r
  END IF
  IF (COLT2 < COLT1 AND COLT2 < COLT3 AND COLT2 < COLT4 AND COLT2 < COLT5) AND (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT2 + 10) THEN
     premiu = 1000
     PLAY "O3T80MNL16DBAGL6D"
     amban = amban + premiu
     GOTO r
  END IF
  IF (COLT3 < COLT2 AND COLT3 < COLT1 AND COLT3 < COLT4 AND COLT3 < COLT5) AND (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT3 + 10) THEN
     premiu = 1000
     PLAY "O3T80MNL16DBAGL6D"
     amban = amban + premiu
     GOTO r
  END IF
  IF (COLT4 < COLT2 AND COLT4 < COLT3 AND COLT4 < COLT1 AND COLT4 < COLT5) AND (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT4 + 10) THEN
     premiu = 1000
     PLAY "O3T80MNL16DBAGL6D"
     amban = amban + premiu
     GOTO r
  END IF
  IF ((COLT5 < COLT2 AND COLT5 < COLT3 AND COLT5 < COLT4 AND COLT5 < COLT1) AND (COLT1 + COLT2 + COLT3 + COLT4 + COLT5 = 5 * COLT5 + 10)) THEN
     premiu = 1000
     PLAY "O3T80MNL16DBAGL6D"
     amban = amban + premiu
     GOTO r
  END IF
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''INCHEIERE QUINTE
END IF

'**************************************************************************


'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''TREI BUCATI
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''TREI BUCATI
IF (COLT1 = COLT2 AND COLT2 = COLT3) OR (COLT1 = COLT2 AND COLT2 = COLT5) OR (COLT1 = COLT2 AND COLT2 = COLT4) OR (COLT2 = COLT3 AND COLT3 = COLT4) OR (COLT2 = COLT3 AND COLT3 = COLT5) OR (COLT1 = COLT3 AND COLT3 = COLT4) OR (COLT1 = COLT3 AND COLT3 = COLT5) OR (COLT5 = COLT2 AND COLT2 = COLT4) OR (COLT1 = COLT4 AND COLT4 = COLT5) OR (COLT4 = COLT3 AND COLT3 = COLT5) THEN
premiu = 500
PLAY "O3T80MNL16DBAGL6D"
amban = amban + premiu
GOTO r
END IF

'**************************************************************************

'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''DOUA PERECHI
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''DOUA PERECHI

IF (COLT1 = COLT2 AND COLT3 = COLT4 AND COLT2 <> COLT3) OR (COLT1 = COLT2 AND COLT3 = COLT5 AND COLT2 <> COLT3) OR (COLT1 = COLT2 AND COLT4 = COLT5 AND COLT2 <> COLT4) OR (COLT1 = COLT3 AND COLT2 = COLT4 AND COLT2 <> COLT3) OR (COLT1 = COLT3 AND COLT2 = COLT5 AND COLT2 <> COLT3) OR (COLT1 = COLT3 AND COLT4 = COLT5 AND COLT3 <> COLT4) OR (COLT1 = COLT4 AND COLT2 = COLT3 AND COLT2 <> COLT4) OR (COLT1 = COLT4 AND COLT2 = COLT5 AND COLT2 <> COLT4) OR (COLT1 = COLT4 AND COLT3 = COLT5 AND COLT4 <> COLT3) OR (COLT1 = COLT5 AND COLT2 = COLT3 AND COLT2 <> COLT5) OR (COLT1 = COLT5 AND COLT2 = COLT4 AND COLT2 <> COLT5) OR (COLT1 = COLT5 AND COLT3 = COLT4 AND COLT5 <> COLT3) OR (COLT2 = COLT3 AND COLT4 = COLT5 AND COLT4 <> COLT3) OR (COLT5 = COLT3 AND COLT2 = COLT4 AND COLT2 <> COLT3) OR (COLT4 = COLT3 AND COLT2 = COLT5 AND COLT2 <> COLT3) THEN
premiu = 200
PLAY "O3T80MNL16DBAGL6D"
amban = amban + premiu
GOTO r
END IF

'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''O PERECHE
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''O PERECHE
IF (COLT1 = COLT2 AND COLT2 > 10) OR (COLT1 = COLT3 AND COLT3 > 10) OR (COLT1 = COLT4 AND COLT4 > 10) OR (COLT1 = COLT5 AND COLT5 > 10) OR (COLT2 = COLT3 AND COLT2 > 10) OR (COLT2 = COLT4 AND COLT2 > 10) OR (COLT2 = COLT5 AND COLT2 > 10) OR (COLT3 = COLT4 AND COLT3 > 10) OR (COLT3 = COLT5 AND COLT3 > 10) OR (COLT4 = COLT5 AND COLT4 > 10) THEN
premiu = 100
PLAY "O3T80MNL16DBAGL6D"
amban = amban + premiu
GOTO r
END IF

RETURN









'Alegerea de a MAI juca sau nu jocul
i:
LOCATE 1, 5
COLOR 2
INPUT "Do you want to continue playing? (Y/N) "; RASPUN$
WHILE RASPUN$ = "Y" OR RASPUN$ = "y"
LOCATE 1, 5
PRINT "                                                                   "
GOTO s
WEND