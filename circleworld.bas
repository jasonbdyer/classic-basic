1 REM CIRCLE WORLD
4 PRINTCHR$(147)
6 DIMD$(44),O$(63),L%(57),P%(44,6):L=4:T=250:K1=248-INT(RND(10))
7 GOTO 50
8 PRINT"O.K."
9 GOTO500
50 FORX=1TO 44:READD$(X):NEXTX
55 DATARIMWALL,OPEN PLAIN,DARK FOREST,FIELD,MOUNTAIN,MOUNTAIN TOP,LAKESHORE
56 DATASECRET TUNNEL,STEPPING DISC,SANDY BEACH,MARS ISLAND
57 DATALAKE BOTTOM,SCRITH CAVERN,OBSERVATION DECK,CONTROL ROOM,MACHINE CITY,LIBRARY
58 DATAVOLCANO PIT,RIMWALL
59 DATATOOL SHED,GREAT CHASM(EAST),CELLER,GREAT CHASM(WEST),ROCKY CLIFF,ANCIENT TEMPLE
60 DATAALCOVE,RIMWALL,KZIM'S DEN,PATH
61 DATADRY RIVER BED,CAVE,LABORATORY,SMALL ROOM,SUNFLOWER PATCH
63 DATAJUNGLE,STAIRCASE,TP,ROUND ROOM,FRAIL BRIDGE,TP
64 DATATP,VERTICAL SHAFT,TP,JUNGLE
100 FOR X=1TO63:READO$(X):Q$=Q$+LEFT$(O$(X),2):IFX>6 THENREADL%(X-6)
102 NEXTX
110 DATAEAST,WEST,NORTH,SOUTH,UP,DOWN,LASER/FLASHLIGHT,5,KEY,26,GOLD WIRE,19,SWITCH,90
111 DATA NIPWEED,1,PARACHUTE,90,BUCKET,10,MOTOR,32,YELLOW BOOK,17,BLUE BOOK,25,OIL,16
112 DATAWRENCH,90,DY,90,SAND,90,SCUBA GEAR,90,RADAR/SONAR UNIT,8,CLOTH MASK,32
113 DATA ROPE,5,MATCHES,17,ID CARD,90
114 DATAGENERATOR,22,SILVERBOX,22,GREEN BOOK,25,SHOVEL,5,PLAQUE,18,CHAIR,17,NYLON CORD
115 DATA32,CANDLES,25,#2 RAMJET,1,#3 RAMJET,19,HOLES,6,WOOD POST,6,HATCH,13
116 DATAJAMMED HATCH,15,MIRROR,25,LEVER,15,CONTROL PANEL,15,SUPERGRID CONNECTIONS,15
117 DATAVIEWSCREEN(FLOOR),14,CRT READOUT,25,PRAYER WALL,25,AIRLOCK,90,FROZEN WATERFALL
118 DATA30,TAG,15
119 DATAKZIN(ASLEEP),90,IRON DOOR,32,PIT,38,STEEL BEAM,38,TREE OF LIFE,13,#1RAMJET,27
120 DATALOCKED DOOR,20,ALTAR,25,BOLTS,32,IVORY STATUE OF A HELMETEDBIPED,17
121 DATAELECTRONIC ALARM-ON MOTOR,32,BRIDGE OFF,23,POWER SOURCE AND SWITCH,90
150 FORX=1TO44:FORY=1TO6:READP%(X,Y):NEXTY:NEXTX
155 DATA1,1,2,,,,10,4,3,1,,,,,,,,,2,5,3,,,,4,,5,28,6,,,,25,,,5
156 DATA16,12,7,7,,,,24,,,,18,,,,,,,12,2,10,10,,,12,12,29,,,12,7,10
158 DATA12,12,11,,,,,,42,,,,,,15,,,,,,,14,35,7,19,20,,,34,23,0
159 DATA27,,22,5,,,,,,19,19,,16,,,,,16,,,,,44,21,21,,,,,,,17,0
160 DATA17,,23,23,,,,34,24,24,,,,,,6,,5,,25,,,,,27,27,17,,,0
161 DATA,,5,,,,,,30,11,,,,,,29,,,32,33,,,,,,31,,,,,31,,,,36,0
162 DATA,17,,,,,35,16,44,35,,,38,,,,,33,37,,40,36,,,,36,,,,0
164 DATA23,21,,,,,41,,40,37,,,40,,43,41,,,,,,,12,13,41,,43,38,,,21,44,44,35,,0
180 PRINTCHR$(147):W$="GOLOREUNPUOPBLLITUTIDRTHTO":GOTO710
200 IFL%(22)<>0THENPRINT"DON'T HAVE IT"J:GOTO500
205 PRINT:INPUT"WHICH ONE";C$:IFLEN(C$)>1THENC$=LEFT$(C$,2)
210 IFC$="BL"ANDL=21ORC$="BL"ANDL=23THEN230
215 IFC$="GR"ANDL=24THEN240
217 IFC$="RE"THENPRINT"YOU DIE":END
220 PRINT"NO EFFECT HERE":GOTO9
230 IFP%(21,1)=0THENPRINT"A FRAIL MAGNETIC BRIDGE APPEARS":P%(21,1)=39:P%(23,2)=39
235 IFP%(21,1)=0THENO$(62)="SIGN-BRIDGE-ON":GOTO500
238 GOTO9
240 IFD2=0THENP%(24,1)=8:D2=1:PRINT"DOOR OPENS":GOTO500
300 IFP%(25,1)=26THEN500
305 IFL=25THENPRINT"MIRROR SWINGS OPEN":P%(25,1)=26:GOTO9
310 PRINT"NO EFFECT HERE":GOTO500
480 PRINT"THE BRIDGE COLLAPSES  UNDER THE WEIGHT"
481 PRINT"YOU DIE":END
485 L%(4)=90:L%(3)=90:O$(9)="POWER SOURCE-WITH SWITCH"
486 RETURN
487 IFB$="HO" ANDL=6 THEN IFA$="LO"THEN PRINT"VOLCANO PIT":GOTO 9
488 B$="DO":GOTO512
490 P%(3,1)=0:PRINT"LIGHT OFF":IF L%(6)=3THENL%(6)=90
500 INPUT"YOUR COMMAND";A$:PRINT:B$="":FORX=1TOLEN(A$)
501 IFMID$(A$,X,1)=" "ANDLEN(A$)>1THENB$=MID$(A$,X+1,2)
502 NEXTX:IFA$="LUWEEWU"THEN300
505 F=0:S=0:T=T-.5:IFT<K1 THEN2500
506 IFD1-1>T THEN 1520PRINTT
507 IFL%(8)=L ANDL%(21)=L ANDL%(3)=L ANDL%(4)=LTHEN L%(8)=90:L%(21)=90:L%(57)=L:GOSUB485
508 IFLEN(A$)>1THENA$=LEFT$(A$,2)
509 IFA$="LO" ANDB$="" THEN710
510 IFA$="TU"ANDB$="KN" THEN200
511 IFB$="HO" AND L=6 THENIFA$="LO"THENPRINT"VOLCANO PIT":GOTO9
512 IFB$="WI" THENB$="GO"
513 IFA$="PU"ANDB$="SW"AND L%(57)<>90THEN2050
515 IFA$="RE"ANDB$="CR"ORA$="LO" ANDB$="CR"THEN1005
516 IFA$="DI"GOTO1200
517 IFA$="LO"ANDB$="HE"ORA$="RE"ANDB$="HE" THEN530
518 IFL=32ANDA$="LO"ANDB$="HO" THEN PRINT"A ROOM":GOTO 9
519 IFL=38ANDA$="LO" ANDB$="PI"THENPRINT"LAB":GOTO9
520 IFA$="PR" THEN3200
522 IFA$="BL"ANDL=34ANDB$="SC"THEN3300
525 GOTO555
555 IFT<0THENPRINT"CIRCLEWORLD COLLIDED WITH THE SUN":END
560 IFT<10THENPRINTCHR$(147):PRINT"COLLISION IMMINENT!"
600 FORX=1 TOLEN(W$)STEP2:IFMID$(W$,X,2)=A$THENF=(X+1)/2
601 NEXTX:FORX=1TO126STEP2:IFMID$(Q$,X,2)=B$ THENS=(X+1)/2
603 NEXT
604 Z=S-6:IFA$="TA"ORA$="GE"THEN900
605 IFA$="IN"GOTO1000
608 IFA$="FL" ANDL(1)<>0THENPRINT"DON'T HAVE IT!":GOTO9
609 IFA$="FL"ANDB$="ON" THENL3=3:P%(3,1)=4:PRINT"LIGHT ON":IFL%(6)<>0THENL%(6)=3:GOTO9
610 IF A$="FL"ANDB$="ON" THEN GOTO 9
611 IFA$="FL"ANDB$="OF"THEN490
613 IFL<15 OR L>18THEN615
614 IFF=1ANDB$="DI"THEN625
615 IFL<>9THEN GOTO648
616 IFA$="EX"ANDB$="DI"THENL=A:GOTO710
617 IFA$="EN"ANDB$="DI"ANDL%(20)=0THEN619
618 GOTO649
619 Z=INT(RND(1)*4)+14:IFZ=ATHEN GOTO619
621 PRINTCHR$(147):FORX=0TO7:PRINTTAB(X);"ZZZAAAPPP-P!!!"
622 NEXTX:PRINTD$(Z):A=Z:GOTO710
625 IFL%(21)=0ORL%(3)=0THENPRINT"YOU CAN'T TRANSPORT WITH THAT":GOTO500
626 A=L:L=9:GOTO710
648 IFB$="DI"THENIFL<15ORL>18 THENPRINT"THAT'S NOT HERE"
649 IFF=0ORS=0THENPRINT"CAN'T DO THAT":GOTO9
650 IFF>9THENGOTO664
652 IFS<760THENGOTO660
655 IFL%(Z)<>L ANDL(Z)<>0 THENPRINT"THAT'S NOT HERE":GOTO9
660 ONF-1GOTO695,1028,1230,2000,2100,3300,1500,3500
662 C7=0:IFS=32THENIFL%(26)=LTHENIFL<>15THENPRINT"YOU LOOK SILLY UP THERE":GOTO9
663 IFS=32THENIFL%(26)=15THENC7=1:GOTO8
664 IFS<7THEN670
665 IFL%(Z)<>0THENPRINT"YOU DON'T HAVE THAT":GOTO9
670 IFF-9<1THEN680
675 ONF-9GOTO1350,1110,3000,3000
680 IFS>6 THENPRINT"CAN'T":GOTO9
684 IFL<>3ORP%(3,1)=4THEN688
685 IFP%(3,1)=0 THENX=INT(RND(1)*3):P%(3,4)=X+2
688 IFP%(L,S)=0THENPRINT"CAN'T GO THAT WAY":GOTO9
689 IFP%(L,S)=13THENIFL%(15)=0THENPRINT"GEAR WON'T FIT":GOTO9
690 IFP%(L,S)>0THENL=P%(L,S):GOTO710
695 IF S>6THEN 702
697 IF P%(L,S)=12 THENPRINT"LAKE AND A DISTANT ISLAND":GOTO9
698 IFP%(L,S)=12THENPRINT"LAKE AND A DISTANT ISLAND":GOTO9
701 IFP%(L,S)<>0THENPRINTD$(P%(L,S)):GOTO500
702 IFL=14ANDS=45THEN709
703 IFL=25ANDS=41THEN706
704 IFS=28THENPRINT"RED,GREEN,AND BLUE KNOBS"
705 GOTO1031
706 PRINT"CREATURE WEARING A HELMET IS LOOKING AT YOU":GOTO9
709 PRINT"SPACE AND A LOT OF STARS"
710 PRINT"YOU ARE AT:";D$(L)
715 IFL=24ANDD2=0THENPRINT"OUTLINE OF A DOOR IN THE ROCK"
716 IF L=32THENPRINT"HOLE IN THE CEILING"
721 IF L=42ANDL%(17)<>0ANDL%(15)<>0THENPRINT"YOU DETECT AN ODOR"
725 IFL=34ANDK3=0THEN6010
730 IFL%(16)=0THENL%(42)=12:P%(12,6)=42
731 IFL%(16)<>0THENL%(42)=90:P%(12,6)=0
760 IFL=39ANDL%(21)=0THEN480
850 Y=0:PRINT"YOU SEE":FORX=1TO57:IFL%(X)=LTHENPRINTO$(X+6):Y=Y+1
851 NEXTX:IFL>14ANDL<19 THENGOSUB6000
852 IFY=0THENPRINT"NOTHING"
855 IFL=39ANDL%(21)=0THEN480
857 IFL=18ANDL%(6)<>0THENPRINT"YOU FALL TO YOUR DEATH":END
858 IFL=13ANDL%(17)<>0THENPRINT"THE VAPORS FROM THE TREE DO YOU IN":END
859 IFL=12ANDL%(15)<>0THENPRINT"YOU DROWN":END
860 PRINT"OBVIOUS EXITS ARE-":PRINT:FORX=1TO6:IFP%(L,X)<>0THENPRINTO$(X)
861 NEXTX:GOTO9
900 IFS<6THENPRINT"WHAT?":GOTO9
902 IFL%(Z)=0THENPRINT"YOU ALREADY HAVE THAT.":GOTO9
910 IFL%(Z)<>LTHENPRINT"THAT'S NOT HERE":GOTO9
911 IFS=61THEN935
913 IFP%(32,5)=38ANDS=33THENPRINT"CAN'T-IT'S TIED":GOTO9
914 IFS=51THENPRINT"YOU'RE KIDDING!!":GOTO9
915 IFS>34THENPRINT"YOU CAN'T TAKE THAT":GOTO9
920 IFC>12THEN:PRINT"YOUR ARMS ARE FULL!!":GOTO9
921 IFS=24THENP%(6,6)=5
922 IFS=17ORS=20THENPRINT:INPUT"IN WHAT?";C$:GOTO945
925 IFF7=0ANDS=14THENPRINT"IT'S BOLTED DOWN":GOTO9
930 L%(Z)=0:C=C+1:IFL%(45)=28ANDL%(5)=0THENGOTO2525
931 IFS=51THEN2525
932 IFS=14THENIFP%(32,2)=31THEN935
933 GOTO940
935 IFP%(32,2)=31THENP%(32,2)=0:P%(31,1)=0:PRINTCHR$(147):PRINT"DOOR SLAMS SHUT!!!"
940 GOTO1000
945 IFLEFT$(C$,2)="BU"ANDL%(7)=0THEN930
950 IFL%(7)<>0THENPRINT"DON'T HAVE IT":GOTO9
957 PRINT"CAN'T":GOTO9
1000 PRINT"YOU ARE CARRYING-":FORX=1TO57:IFL%(X)=0THENPRINTO$(X+6)
1002 NEXTX:IFC=0THENPRINT"NOTHING"
1003 GOTO9
1005 IFL=25ORL>14ANDL<19THEN1014
1010 PRINT"NOT HERE":GOTO9
1014 IFQ=0ORR=0THEN1022
1016 PRINTCHR$(147):FORX=1TO6:PRINT:NEXT
1020 PRINT"CONGRATULATIONS!":PRINT"CIRCLEWORLD IS SAVED!":END
1022 PRINT"ORBIT DECAYING-";.01*T;"FALANS     UNTIL IMPACT WITH THE SUN!!"
1023 IFQ=0THENPRINT"SUPERGRID IS OFF"
1024 IFR=0THENPRINT"STABILIZING RAMJETS OFF"
1025 IFQ=1THENPRINT"SUPERGRID IS ON"
1026 IFR=1THENPRINT"RAMJETS ON"
1027 GOTO9
1028 IFL%(S-6)<>L THENPRINT"DON'T SEE THAT HERE":GOTO9
1030 IFS<7THENPRINT"CAN'T"
1031 IFS=29THENPRINT"THE LIGHT IN THE FOREST"
1032 IFS=47THENPRINT"YOUR PRAYER WILL BE ANSWERED"
1033 IFS=31THEN1070
1034 IFS=15THEN1080
1035 IFS=16THEN1097
1036 IFS=7THENPRINT"FLASHLIGHT ON/OFF OR BLAST"
1038 IFS=60THENPRINT"$LUWEEWU$"
1040 IFS=25THENPRINT"PAK FUEL OIL CO."
1041 IFS=50THENPRINT"CONNECT POWER HERE"
1042 IFS=23THENPRINT"PROTECTIVE MASK"
1045 IFS=38THENPRINT"ROPE MARKS"
1050 PRINT:PRINT:GOTO9
1070 PRINT"STEPPING DISC COMMANDS:":PRINT"GO DISC":PRINT"EXIT DISC"
1075 PRINT"ENREGIZE DISC(ID REQUIRED)":GOTO9
1080 PRINT"POWER SOURCE=MOTOR+GENERATOR+WIRE+SWITCH+FUEL":GOTO9
1097 PRINT:PRINT"A HERO'S NAME IS THE KEY"
1098 PRINT"SPEAK IT OUT, I TO ME":GOTO9
1100 IFP%(21,1)=26THEN GOTO1107
1105 IFS=41ANDL=25THENPRINT"MIRROR SWINGS OPEN":P%(25,1)=26
1107 GOTO9
1110 IFS<7THENPRINT"WHAT?":GOTO9
1115 IFS=13ANDL%(11)=0THENL%(11)=L:C=C-1
1120 L%(Z)=L:C=C-1:GOTO8
1200 IFL%(24)<>0THENPRINT"CAN'T":GOTO9
1201 IFL<>10THENPRINT"YOU CAN'T DIG HERE":GOTO9
1202 PRINT"YOU ARE DIGGING A HOLE":H=H+1:L%(14)=10
1203 IFH=2THENPRINT"YOU ARE GETTING DEEPER"
1204 IFH=3THENPRINT"YOU ARE WAIST DEEP"
1205 IFL%(20)=90ANDH=4THENPRINT"AHA!":L%(20)=10
1220 IFH>4THENPRINT"YOU DUG THROUGH AND DIED":END
1225 GOTO9
1230 IFS(2)<>0THENPRINT"NO KEY":GOTO9
1240 IFS<>57THENPRINT"CAN'T UNLOCK THAT":GOTO9
1245 IFQ7=0THENPRINT"CLICK":Q7=1:L%(15)=20:L%(4)=20:L%(12)=20:O$(57)="OPEN DOOR"
1250 GOTO9
1350 IFS<>24THENIFS<>33THENPRINT"CAN'T":GOTO9
1360 PRINT:INPUT"TO WHAT?";C$:C$=LEFT$(C$,2)
1365 IFL=6THENIFC$="WO"ORC$="PO"THEN1390
1366 IFL=30THENIFC$="ST"ORC$="BE"THEN1392
1367 IFL=38ANDC$="ST"THEN1392
1370 PRINT"CAN'T":GOTO9
1390 L%(18)=6:PRINT"THE ROPE UNCOILS AND IS 30 FEET FROM FLOOR OF THE PIT"
1391 P%(6,6)=18:C=C-1:GOTO9
1392 PRINT"THE CORD UNCOILS & GOES DOWN INTO THE PIT":P%(32,5)=38:L%(27)=32:C=C-1
1393 P%(38,6)=32:GOTO9
1500 IFL%(19)<>0THENPRINT"NO MATCHES":GOTO9
1504 IFC1=0THENIFS=34THENC1=1:O$(34)="CANDLES(LIT)":GOTO8
1505 IFS=34THENPRINT"ALREADY LIT":GOTO9
1507 IFS=17THENL%(11)=90:PRINT"OIL BURNS UP":IFL=30 THENPRINT"NO EFFECT":GOTO9
1508 IFS=17THENIFL<>30 THEN 9
1510 PRINT"CAN'T LIGHT THAT":GOTO9
2000 IF S=1ANDL=15THEN2050
2001 IFS<>42THENPRINT"NO EFFECT":GOTO9
2005 IFL%(26)=15ANDC7=1THEN2010
2007 PRINT"YOU CAN'T QUITE REACH IT":GOTO9
2010 IFR=0THENR=1:T=T+200:PRINT"RAMJETS ON!":GOTO9
2020 GOTO9
2050 IFL%(57)=15THEN2060
2055 PRINT"WRONG PLACE!":GOTO
2060 IFL%(11)=15THENPRINT"SUPERGRID IS ON":Q=1:GOTO9
2065 PRINT"NO FUEL HERE":GOTO9
2100 IFL=13ANDS=39THEN2105
2101 PRINT"CAN'T":GOTO9
2105 P%(13,6)=15:P%(15,5)=13:O$(39)="HATCH-OPEN":O$(40)="OPEN HATCH":GOTO8
2500 C=0:IFL%(5)=0 THEN2510
2502 FORX=1TO41:IFL%(X)=0THENL%(X)=INT(RND(1)*6)
2506 NEXTX
2507 PRINT"A CAT-LIKE KZIN HAS WANDERED THROUGH-TOOK ALL YOUR POSSESIONS AND SCATTERED";
2508 PRINT" THEM":GOSUB6005:GOTO507
2510 FORX=1TO41:IFL%(X)=0THENL%(X)=28
2513 NEXT:PRINT"THE KZIN TAKES YOUR THINGS AND RETIRES TO HIS DEN"
2515 L%(45)=28:K1=-5:IFL%(21)=28 THENL%(21)=22
2520 GOTO710
2525 PRINT"THE KZIN WAKES UP AND CLAWS YOU TO DEATH":END
2587 PRINT"A CAT-LIKE KZIN HAS WANDERED THROUGH-TOOK ALL YOUR POSSESIONS AND SCATTERED";
3000 IFS<7THENPRINT"WHAT?":GOTO9
3001 IFS<>9ANDS<>28THENGOTO3010
3005 IFL=34ANDK3=0THENK3=1:GOTO3015
3010 L%(Z)=L:C=C-1:PRINT"NO EFFECT":GOTO9
3015 PRINT"THE SCAVENGER TAKES YOUR GIFT AND DISSAPEARS"
3020 C=C-1:L%(Z)=90:P%(34,1)=24:GOTO9
3200 IFL<>25THENPRINT"WHY PRAY HERE?":GOTO9
3205 INPUT"FOR WHAT?";C$:C$=LEFT$(C$,2):IFC$="HE"THENPRINT"SOMETHING OF VALUE":GOTO9
3206 IFC$="GO"THEN3215
3210 PRINT"NO EFFECT":GOTO9
3215 IFC1=1THENIFL%(28)=0ORL%(28)=25THENIFL%(3)<>90THENPRINT"TRY LATER":GOTO9
3216 IFC1=1THENIFL%(28)=0ORL%(28)=25THENIFL%(3)=90THENPRINT"GRANTED":L%(3)=25:GOTO9
3220 PRINT"YES-BUT":GOTO3210
3300 IFL%(1)<>0THENPRINT"CAN'T":GOTO9
3302 PRINTCHR$(147):IF S=51THEN2525
3303 IFS=41GOTO3320
3304 IFS=45THEN2525
3305 IFP%(34,1)=0ANDB$="SC"THENPRINT"HE DODGED":GOTO9
3306 IFS=61ANDP%(32,2)=31THENGOTO935
3309 IFL<>30THENPRINT"NO EFFECT":GOTO9
3310 PRINT"WATERFALL MELTS":P%(30,3)=31:P%(31,4)=30:L%(43)=90:K6=1:D$(30)="STREAM":GOTO9
3320 PRINT"LASER BEAM REFLECTS BACK-YOU BLASTED YOURSELF":END
3500 IFL%(12)<>0THENPRINT"CAN'T":GOTO9
3510 IFF7=0THENPRINT"OK":F7=1:GOTO9
3520 GOTO9
6000 RETURN
6005 K1=T-10-INT(RND(1)*10):RETURN
6010 PRINT"A NIGHT SCAVENGER IS BLOCKING YOUR WAY":PRINT"HE WANTS YOU TO TOSS HIM"
6015 PRINT"SOMETHING OF VALUE":GOTO850
