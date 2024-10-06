10 CLS:PRINTCHR$(23):PRINT@470,"Raspion"
20 PRINT@532,"Adventure":CLEAR500:RANDOM:DEFINTA-Z
30 GOTO1470
40 DR$="NSEWUD":R=1:TR=2
50 CLS:PRINTR$(R):PRINT:IFN(R)=0THEN100
60 PRINT"Around me I see:  ";:FORO=1TONO
70 IFO(O)<>RNEXT:GOTO90ELSEIFLEN(O$(O))+POS(0)>63PRINT
80 PRINTO$(O)".  ";:NEXT
90 PRINT:PRINT
100 PRINT"Directions I can go:  ";:FORD=1TO6
110 IFE(R,D)>0PRINTD$(D)"  ";
120 NEXT:PRINT:PRINTSTRING$(64,"=");
130 IFSKTHENSK=0:GOTO140ELSEGOSUB1410
140 F1$="":C$="":F$="":S$="":INPUT"What should I do";C$
150 IFLEN(C$)=0THEN140ELSEFORX=1TOLEN(C$):M$=MID$(C$,X,1)
160 IFM$=" "THEN170ELSEF1$=F1$+M$:NEXT
170 IFLEN(F1$)=LEN(C$)THEN190
180 S$=RIGHT$(C$,LEN(C$)-LEN(F1$)-1)
190 F$=LEFT$(F1$,3):S1$=S$:S$=LEFT$(S$,3):FORF=1TONF
200 IFF$(F)<>F$NEXTELSE230
210 FORD=1TO6:IFF$=MID$(DR$,D,1)THENS$=X$(D):GOTO240ELSENEXT
220 PRINT"I don't know how to do that.":GOTO140
230 ONFGOTO240,270,360,400,410,450,470,490,510,640,750,1340,880,940,990,1040,1080,270,1140,1170,1190,1220,1250,1280
240 FORD=1TO6:IFX$(D)<>S$NEXT:GOTO510
250 IFE(R,D)=0PRINT"I can't go that way.":GOTO140ELSER=E(R,D)
260 GOTO1310
270 GOSUB1320:IFO(O)=0THENPRINT"I already have it!":GOTO140
280 IFC=6PRINT"I can't carry anything else.":GOTO140
290 ONQ(O)+1GOTO350,300,320,330,340
300 PRINT"Sorry, I can't do that.  I'm not Superman!"
310 GOTO140
320 PRINT"That's impossible!":GOTO140
330 PRINT"I don't want to destroy the scenery!":GOTO140
340 PRINT"I try to lift it but it's too heavy.":GOTO130
350 O(O)=0:C=C+1:N(R)=N(R)-1:GOTO1400
360 PRINT"I am carrying:  ";:IFC=0PRINT"nothing.":GOTO130
370 FORO=1TONO:IFO(O)<>0NEXT:PRINT:GOTO130
380 IFLEN(O$(O))+POS(0)>63PRINT
390 PRINTO$(O)".  ";:NEXT:PRINT:GOTO130
400 IFS$<>""THENPRINT"Try examining it.":GOTO140ELSE1340
410 YS=0:FORO=1TONO:IFO(O)=TRTHENYS=YS+T(O)
420 NEXT:PRINT"You have"YS"out of a possible"HS"points."
430 IFYS=HSPRINT"You have discovered all the secrets of Raspion!":GOTO490
440 GOTO130
450 GOSUB1370:IFO(O)<>0THEN1390ELSEO(O)=R:C=C-1:N(R)=N(R)+1
460 GOTO1400
470 IFH$(R)=""PRINT"I don't know what to do.":GOTO140
480 PRINTH$(R):GOTO130
490 INPUT"This game is over.  Do you want to play again";P$
500 IFLEFT$(P$,1)="Y"THENRUNELSECLS:END
510 GOSUB1320
520 IFO<>1ANDO<>3ANDO<>8ANDO<>13ANDO<>14ANDO<>15ANDO<>17ANDO<>22ANDO<>25ANDO<>26THEN1360
530 IFO<>3THEN540ELSER=1:GOTO1310
540 IFO<>8THEN550ELSER=5:GOTO1310
550 IFO<>1THEN560ELSER=4:GOTO1310
560 IFO<>15THEN570ELSER=18:GOTO1310
570 IFO<>13THEN580ELSER=21:GOTO1310
580 IFO<>17THEN600ELSEIFR=23THENR=24:GOTO1310
590 IFR=26THENR=25:GOTO1310
600 IFO<>22THEN610ELSER=48:GOTO1310
610 IFO<>25THEN620ELSER=12:GOTO1310
620 IFO<>26THEN630ELSER=49:GOTO1310
630 R=15:GOTO1310
640 GOSUB1320
650 IFO<>4ANDO<>6ANDO<>7ANDO<>19PRINT"It looks ordinary to me.":GOTO130
660 IFO<>4THEN680ELSEPRINT"There's an inscription on it."
670 O(5)=R:N(R)=N(R)+1:GOTO130
680 IFO<>6THEN710
690 IFO(9)<>-1PRINT"I see nothing in them.":GOTO130ELSEO(9)=R
700 GOSUB2530:PRINT"I found a book!":GOTO130
710 IFO<>7THEN740
720 IFO(10)<>-1PRINT"I see nothing in it.":GOTO130ELSEO(10)=R
730 GOSUB2530:PRINT"I found a key!":GOTO130
740 PRINT"It has a rusty lock on it.":GOTO130
750 GOSUB1320:IFO<>5ANDO<>9THEN1360ELSEIFO<>5THEN780
760 PRINT"Inscription says:

There is a better way.  Give my regards to the keeper of the

records."
770 PRINTTAB(40)"Ranon of Lymbar":GOTO130
780 IFO(9)<>0THEN1390ELSEIFBK<2PRINT"It's closed!":GOTO140
790 ONPGGOTO800,820,840,860
800 PRINT"Page 1:  Code Book

Page 2:  AAEA - an aardvark eats ants"
810 GOTO130
820 PRINT"Page 3:  GSAE - go suck an egg

Page 4:  IITYWYBMAB - if I tell you will you buy me a beer"
830 GOTO130
840 PRINT"Page 5:  SOYM - spit on your mother

Page 6:  SLIT - say Lymbar in tomb"
850 GOTO130
860 PRINT"Page 7:  SRB - stop reading books

Page 8:  TBFYH - they're bad for your health"
870 GOTO130
880 GOSUB1320:IFO<>2ANDO<>9ANDO<>19THEN1360ELSEIFO<>2THEN900
890 O(8)=R:GOTO1310
900 IFO<>9THEN920ELSEIFBK=0PRINT"It's locked!":GOTO130ELSEBK=2
910 PG=1:GOTO1400
920 IFLS=1THENO(21)=R:N(R)=N(R)+1:GOTO1340
930 PRINT"It's locked!":GOTO130
940 GOSUB1320:IFO<>2ANDO<>9THEN1360ELSEIFO=9THEN960
950 PRINT"It's already unlocked.":GOTO140
960 IFO(10)<>0PRINT"I don't have the key!":GOTO140
970 IFBK>0PRINT"It's already unlocked.":GOTO140ELSEBK=1
980 GOTO1400
990 IFS$<>"PAG"THEN1360
1000 IFO(9)<>0PRINT"I don't have a book!":GOTO140
1010 IFBK<2PRINT"The book's not open.":GOTO140ELSEPG=PG+1
1020 IFPG=5PRINT"Kablooey!

The book blew up in my face!  Next time heed good advice.":GOTO490
1030 GOTO1400
1040 GOSUB1320:IFO<>2ANDO<>9THEN1360ELSEIFO<>2THEN1060ELSEO(8)=-1
1050 GOSUB2530:GOTO1310
1060 IFO(9)<>0THEN1390
1070 IFBK<2PRINT"It's already closed.":GOTO140ELSEBK=1:GOTO1400
1080 IFS$<>"REG"THEN1360
1090 IFR<>8ORRG=1THENPRINT"Nothing happens.":GOTO130
1100 PRINT"Computer keyboard/screen simulation:"
1110 FORT=1TO1000:NEXT:FORX=1TO8:CLS:FORT=1TO150:NEXT
1120 PRINTCHR$(23):PRINT@474,"SLIT":FORT=1TO100:NEXTT,X:RG=1
1130 GOTO50
1140 PRINT"OK":PRINTS1$
1150 IFS$="LYM"ANDR=11ANDO(13)<>RPRINT"Tile in floor slides back, revealing a hole.":O(13)=R:GOSUB2530:GOTO130
1160 GOTO130
1170 OPEN"O",1,S1$:FORO=1TONO:PRINT#1,O(O):NEXT
1180 PRINT#1,R,DS,UW,BK,PG,RG,DZ,LS,SH:CLOSE:GOTO140
1190 OPEN"I",1,S1$:FORO=1TONO:INPUT#1,O(O):NEXT
1200 INPUT#1,R,DS,UW,BK,PG,RG,DZ,LS,SH:CLOSE:GOSUB2530
1210 GOTO1340
1220 IFR<44ORR>46PRINT"You've got to be kidding!":GOTO140
1230 IFR=45THENR=47:GOTO1310ELSEPRINT"It's too shallow here."
1240 GOTO140
1250 IFS$<>"LOC"THEN1360
1260 IFO(20)<>0PRINT"I hit it, but nothing happens.":GOTO130
1270 LS=1:GOTO1400
1280 IFO(24)<>0PRINT"With my hands?  Are you kidding?":GOTO140
1290 IFR<>49PRINT"I find nothing.":GOTO130ELSEO(25)=R:O(26)=12
1300 GOSUB2530:GOTO1340
1310 GOSUB1420:GOTO1350
1320 GOSUB1370:GOSUB1330:RETURN
1330 IFO(O)<>RANDO(O)<>0THEN1380ELSERETURN
1340 GOSUB1410
1350 SK=-1:GOTO50
1360 PRINT"I can't do that.":GOTO140
1370 FORO=1TONO:IFN$(O)<>S$NEXT:PRINT"What?":GOTO140ELSERETURN
1380 PRINT"I don't see it here.":GOTO140
1390 PRINT"I don't have it.":GOTO140
1400 PRINT"OK":GOTO130
1410 IFR=6THENR=7ELSEIFR=7THENR=9ELSEIFR=24THENR=25:O(17)=26:GOSUB2530ELSEIFR=25THENR=24:O(17)=23:GOSUB2530
1420 IFR>35ANDR<44THENDS=DS+1:IFDS=5PRINT"I have died of thirst!":GOTO490
1430 IFR=47THENUW=UW+1:IFUW=5PRINT"I've drowned!  (I'm not a very good swimmer.)":GOTO490
1440 IFR=15THENDZ=DZ+1:IFDZ=3PRINT"I faint from dizziness and a huge mirror falls and crushes me.":GOTO490
1450 IFR=48THENSH=SH+1:IFSH=4THENO(23)=R:N(R)=N(R)+1
1460 RETURN
1470 NR=49:DIMR$(NR),N(NR),E(NR,6),H$(NR)
1480 R$(1)="I'm in my living room.":DATA2,3,0,0,0,0
1490 R$(2)="I'm in a storage room."
1500 H$(2)="Find *treasures* and store them here."
1510 DATA0,1,0,0,0,0:R$(3)="I am in my sleeping quarters."
1520 DATA1,0,0,0,0,0:R$(4)="This is the closet."
1530 DATA0,0,0,2,0,0
1540 R$(5)="I'm outside in a very modern city.  Towers surround the city.

There seems to be no escape."
1550 H$(5)="There's got to be some way!":DATA0,14,6,0,0,0
1560 R$(6)="I'm in a corridor on an eastwardly moving pathway."
1570 DATA0,0,0,5,0,0:R$(7)=R$(6):DATA8,0,0,0,0,0
1580 R$(8)="I'm in a computer archive."
1590 H$(8)="Computers like to help people (if they're programmed to)."
1600 DATA0,7,0,0,0,0:R$(9)=R$(6):DATA0,10,0,0,0,0
1610 R$(10)="I am in a very large expanse of land known as Raspion Park."
1620 DATA0,0,11,12,0,0
1630 R$(11)="I'm in the Tomb of Marzon Kly, a monument built millions of

centuries ago honoring the city engineer."
1640 DATA0,0,0,10,0,0:R$(12)=R$(10):DATA0,0,10,13,0,0
1650 R$(13)="I'm in the city.":DATA0,0,12,14,0,0
1660 R$(14)="I'm walking on a narrow metallic pathway."
1670 DATA5,0,13,0,0,0
1680 R$(15)="I am in the Hall of Mirrors.  Rotating mirrors surround me.  I

feel very dizzy."
1690 H$(15)="I wouldn't stay here too long."
1700 DATA13,0,0,0,16,0
1710 R$(16)="I'm climbing a winding stairway."
1720 DATA0,0,0,0,17,15
1730 R$(17)="I'm at the tower's summit.  I feel warm air coming from the

bottom of the wall."
1740 DATA0,0,0,0,0,16
1750 R$(18)="I am crawling through a very narrow vent."
1760 DATA17,19,0,0,0,0
1770 R$(19)="I'm outside of the tower.  There is a mile-long stairway

leading down."
1780 DATA18,0,0,0,0,20
1790 R$(20)="Whew!  I climbed about a hundred yards down."
1800 H$(20)="Take things seriously.":DATA0,0,0,0,19,0
1810 R$(21)="I'm on a dimly lit stairway.":DATA0,0,0,0,11,22
1820 R$(22)="I am in a control room.":DATA0,0,23,0,21,0
1830 R$(23)="I'm on a transparent zirconium platform."
1840 DATA23,0,0,22,0,0:R$(24)="I'm in the yttrium capsule."
1850 DATA0,0,0,23,0,0:R$(25)=R$(24)
1860 H$(25)="Waiting sometimes pays off.":DATA0,26,0,0,0,0
1870 R$(26)="I'm on a translucent hafnium platform."
1880 DATA0,27,0,0,0,0:R$(27)=R$(21):DATA26,28,0,0,36,0
1890 R$(28)="Carved into the wall here are the words, "+CHR$(34)+"Caverns of Syl --

Do not enter."+CHR$(34)
1900 H$(28)="Remember the ad?":DATA27,0,29,0,0,0
1910 R$(29)="I am in a cavern.":DATA29,30,29,29,0,0
1920 R$(30)=R$(29):DATA29,29,31,32,0,0:R$(31)=R$(29)
1930 DATA29,32,31,33,0,0:R$(32)=R$(29):DATA32,32,30,32,0,0
1940 R$(33)=R$(29):DATA32,33,33,34,0,0:R$(34)=R$(29)
1950 DATA35,34,34,34,0,0:R$(35)=R$(29):DATA35,35,28,35,0,0
1960 R$(36)="I'm in the desert.":DATA41,36,37,36,0,27
1970 R$(37)=R$(36):DATA40,37,38,36,0,0:R$(38)=R$(36)
1980 DATA39,38,38,37,0,0:R$(39)=R$(36):DATA44,38,39,40,0,0
1990 R$(40)=R$(36):DATA43,37,39,41,0,0:R$(41)=R$(36)
2000 DATA42,36,40,41,0,0:R$(42)=R$(36):DATA42,41,43,42,0,0
2010 R$(43)=R$(36):DATA43,40,44,42,0,0
2020 R$(44)="Splash!  I fell through a hidden well into an underground

river."
2030 DATA46,45,0,0,0,0
2040 R$(45)="The current is strong as I try to swim upstream."
2050 DATA46,0,0,0,0,0
2060 R$(46)="A very strong current is carrying me downstream."
2070 DATA46,46,0,0,0,0
2080 R$(47)="I'm beneath the surface and the strong current.  It's very

peaceful down here."
2090 H$(47)="Maybe I can't take the whole thing."
2100 DATA0,0,0,0,45,0
2110 R$(48)="I'm in a cavern on the shore of the river.  The water keeps

washing up junk."
2120 DATA0,0,45,49,0,0
2130 R$(49)="The narrow passageway ends here."
2140 DATA0,0,48,0,0,0:NF=24:DIMF$(NF):F$(1)="GO":F$(2)="TAK"
2150 F$(3)="INV":F$(4)="LOO":F$(5)="SCO":F$(6)="DRO"
2160 F$(7)="HEL":F$(8)="QUI":F$(9)="ENT":F$(10)="EXA"
2170 F$(11)="REA":F$(12)="WAI":F$(13)="OPE":F$(14)="UNL"
2180 F$(15)="TUR":F$(16)="CLO":F$(17)="GIV":F$(18)="GET"
2190 F$(19)="SAY":F$(20)="SAV":F$(21)="LOA":F$(22)="DIV"
2200 F$(23)="SMA":F$(24)="DIG":NO=26
2210 DIMO$(NO),O(NO),N$(NO),T(NO),Q(NO):O$(1)="Closet"
2220 N$(1)="CLO":DATA2,0,1:O$(2)="Huge walnut door"
2230 N$(2)="DOO":DATA1,0,1:O$(3)="House":N$(3)="HOU"
2240 DATA5,0,1:O$(4)="Large impassible stone":N$(4)="STO"
2250 DATA20,0,1:O$(5)="Inscription on the stone":N$(5)="INS"
2260 DATA-1,0,2:O$(6)="Bushes":N$(6)="BUS":DATA10,0,3
2270 O$(7)="Scrubbrush":N$(7)="SCR":DATA12,0,3
2280 O$(8)="City outside":N$(8)="CIT":DATA-1,0,2
2290 O$(9)="Book":N$(9)="BOO":DATA-1,0,0:O$(10)="Keys"
2300 N$(10)="KEY":DATA-1,0,0
2310 O$(11)="Computer keyboard/screen":N$(11)="COM"
2320 DATA8,0,2:O$(12)="Bed":N$(12)="BED":DATA3,0,1
2330 O$(13)="Hole":N$(13)="HOL":DATA-1,0,2
2340 O$(14)="Tower of Lorgon":N$(14)="TOW":DATA13,0,1
2350 O$(15)="Vent":N$(15)="VEN":DATA17,0,2
2360 O$(16)="A sign saying "+CHR$(34)+"SubTrans"+CHR$(34)
2370 N$(16)="SIG":DATA21,0,0:O$(17)="Yttrium capsule"
2380 N$(17)="CAP":DATA23,0,1:O$(18)="*Synthetic ruby*"
2390 N$(18)="RUB":DATA35,100,0
2400 O$(19)="Barnacle-covered chest":N$(19)="CHE":DATA47,0,4
2410 O$(20)="Hammer":N$(20)="HAM":DATA20,0,0
2420 O$(21)="*Gold & silver coins*":N$(21)="COI"
2430 DATA-1,150,0:O$(22)="Shore":N$(22)="SHO":DATA45,0,2
2440 O$(23)="*Platinum nugget*":N$(23)="PLA":DATA-1,200,0
2450 O$(24)="Spade":N$(24)="SPA":DATA2,0,0
2460 O$(25)="Light from above":N$(25)="LIG":DATA-1,0,2
2470 O$(26)="Small crater":N$(26)="CRA":DATA-1,0,2
2480 D$(1)="north":D$(2)="south":D$(3)="east":D$(4)="west"
2490 D$(5)="up":D$(6)="down":X$(1)="NOR":X$(2)="SOU"
2500 X$(3)="EAS":X$(4)="WES":X$(5)="UP":X$(6)="DOW"
2510 FORR=1TONR:FORD=1TO6:READE(R,D):NEXTD,R:FORO=1TONO
2520 READO(O),T(O),Q(O):HS=HS+T(O):NEXT:GOSUB2530:GOTO40
2530 C=0:FORP=1TONR:N(P)=0:NEXT:FORO=1TONO:J=O(O)
2540 IFJ<0THEN2550ELSEIFJ=0THENC=C+1ELSEN(J)=N(J)+1
2550 NEXT:RETURN
