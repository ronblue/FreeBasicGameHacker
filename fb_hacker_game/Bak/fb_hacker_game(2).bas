#Lang"qb"
Screen 19
Randomize Timer
ReDim Shared pass(0)
Dim Shared points As Integer, level As Integer, Month2$(1 To 12), Time As Integer, money As Integer
Time = 1


'center print
Sub cp(row, s$)
	Locate row, (100 - Len(s$)) /2 : Print s$;
End Sub


'append to the string array the string item
SUB sAppend (arr() AS STRING, item AS STRING)
    REDIM Preserve arr(LBOUND(arr) TO UBOUND(arr) + 1) AS STRING
    arr(UBOUND(arr)) = item
END SUB

'append to the integer array the integer item
SUB nAppend (arr() AS INTEGER, item AS INTEGER)
    REDIM Preserve arr(LBOUND(arr) TO UBOUND(arr) + 1) AS INTEGER
    arr(UBOUND(arr)) = item
END Sub

FUNCTION GetKey$ (keysToCatch$)
    DIM k$
    DO
        k$ = INKEY$
        WHILE LEN(k$) = 0
            k$ = INKEY$
            Sleep (0.001)
        WEND
    LOOP UNTIL INSTR(keysToCatch$, k$)
    GetKey$ = k$
END Function

FUNCTION Month$ (n) 'for dates1$ function
    RESTORE 4
    FOR i = 1 TO n
        READ Month2$(i)
    NEXT
    Month$ = Month2$(n)
END FUNCTION
4 DATA "JANUARY","FEBRUARY","MARCH","APRIL","MAY","JUNE","JULY","AUGUST","SEPTEMBER","OCTOBER","NOVEMBER","DECEMBER"


FUNCTION dates1$ (months As Integer)
    M = months MOD 12
    IF M = 0 THEN M = 12
    dates1$ = Month$(M) + "," + STR$(INT((months - 1) / 12) + 1997)
END Function

'function as string arrays
Function hint$(n As Integer)
	Select Case n
		Case 1:hint$ = "the target has a cat named 'pogi'"
		Case 2:hint$ = "the birthday yaer of the target is '1964'"
		Case 3:hint$ = "the target's favorite movie is 'unforgiven'"
		Case 4:hint$ = "the target has a thing for the jazz singer 'chet backer'"
		Case 5:hint$ = "the target likes gay porn - if he/she is in the closet it is a chance for extortion"
		Case 6:hint$ = "the target is in a relasionship but he/she is also having an affair with someone - a strong opportonity for extortion"
		Case 7:hint$ = "the target is a single woman in her 30's working in a sensetive high level job in a international bank"
		Case 8:hint$ = "the target has a drinking problem"
		Case 9:hint$ = "the target uses a windoews 95 laptop at home and desktop with windoew 3.11 with antivirus and a security software in her job"
		Case 10:hint$ = "the target uses an AOL email account 'sophy1964@aol.com' and she is also active is several forums on AOL under the nickname 'pogi64'"

	End Select
End Function



Sub opening()
	cp 5, "- H A C K E R -"
	cp 6, "- G A M E -"
	cp 8, " - B Y -"
	cp 9, "- R 0 N 7 7 -"
	Color 31:cp 11, "- P R E S S  E N T E R  T O  B E G I N -"
	cp 12, "- O R  E S C  T O  E X I T -": Color 7
	k$ = GetKey$(Chr$(13) + Chr$(27))
	If k$ = Chr$(27) Then
		End
	Else
	Cls
	cp 5, "- H A C K E D ! -"
	sleep
	End If
	
End Sub

Sub start()
	Cls
	cp 2, "START POINT"
	cp 4, "YOU ARE A HACKER WORKING FOR THE CHINAESE-RUSSIAN MAFIA"
	cp 5, "YOU ARE NAMELESS AND YOU WORK FOR A STRICT ONE TIME CONTRACT"
	cp 6, "YOU HAVE ONE YAER TO HACK A TARGET SECRETS (PASSWORDS, DATA ETC.)"
	cp 7, "IF YOU SUCCEED YOU CAN RETIRE FOR LIFE WITH 450,000$"
	cp 8, "IF YOU FAILE YOU WILL BE ASSASSINATED OR"
	cp 9, "TURNED OVER TO THE LAW AUTHORITIES"
	Color 4:cp 10, "MAKE NO MISTAKE! YOU HAVE NO CHOICE!": Color 7
	cp 12, "PRESS ANY KEY..."
	Sleep
End Sub

Sub hints()
	cls
	Dim n As Integer
	cp 2, "HERE IS WHAT YOUR MAFIA BOSS IS WILLING TO TELL YOU ABOUT THE TARGET"
	cp 3, "PRESS SPACEBAR FOR INFORMATION HINTS"
	Print
	Do
		k2$ = GetKey$(Chr$(32))
		If k2$ = Chr$(32) Then
		Print hint$(n): Print
		n = n+1
		End If
	Loop Until n = 11
	Sleep
	 
End Sub

Sub escape()
	Cls
	cp 2, dates1$(Time)
	cp 4, "MONEY: " + Str$(money) + "$"
	Color 4:cp 6, "- ESCAPE PLAN -"
	cp 8, "YOU KNOW BY NOW YOU CAN'T TRUST YOUR BOSS OR YOUR JOB CONTRACT"
	cp 9, "THEY DON'T HAVE ANY INTENTION TO PAY YOU WHEN YOU FINISH"
	cp 10, "MORE LIKELY THEY WILL KILL YOU AND GET RIDE OF THE EVIDENCE"
	cp 11, "IF YOU ARE SMART YOU SHOULD MAKE AN ESCAPE PLAN"
	cp 12, "AND DISAPPEAR COVERING YOUR TRACKS"
	cp 13, "OTHERWISE WHETHER OR NOT YOU FINISH YOUR JOB YOU ARE A DEAD MAN"
	cp 15, "- 1. CREATE A FAKE IDENTITIY -"
	cp 16, "- 2. PREPARE MONEY -"
	cp 17, "- 3. BUY A RUNAWAY TICKET -"
	cp 18, "- 4. DISAPPEAR -":Color 7
	cp 19, "- 5. GO BACK -"
	Sleep
End Sub

Sub job()
	Cls
	cp 2, dates1$(Time)
	cp 4, "MONEY: " + Str$(money) + "$"
	cp 6, "- DO THE JOB -"
	cp 8, "- 1. SPY ON TARGET -"
	cp 9, "- 2. HACK TARGET -"
	cp 10, "- 3. SOCIAL ENGINEERING -"
	cp 11, "- 4. EXTORT TARGET -"
	cp 12, "- 5. GO BACK -"
	k4$ = GetKey$("12345")
	If k$ = "5" Then Exit Sub
	'Sleep
End Sub

Sub main()
	Do
		100
		If Time = 14 Then end
		cls
		cp 2, dates1$(Time)
		'Time = Time + 1
		cp 4, "MONEY: " + Str$(money) + "$"
		'money = money + 800
		cp 7, "- 1. DO THE JOB -"
		Color 4:cp 10,"- 2. ESCAPE PLAN -":Color 7
		cp 13, "- 3. NEXT MONTH -" 
		cp 16, "- PRESS ESC TO EXIT -"
		k3$ = GetKey$("123" + Chr$(27))
		If k3$ = "2" Then 
			escape()
		ElseIf k3$ = "1" Then
			job()
		ElseIf k3$ = "3" Then
			Time = Time + 1
			money = money + 800
			'GoTo 100
		'ElseIf k3$ = Chr$(27) Then
		'	End
		End If 
	Loop Until k3$ = Chr$(27)
End Sub

money = 1000
Opening()
start()
hints()
main()