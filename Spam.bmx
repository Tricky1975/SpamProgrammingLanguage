Strict
Framework tricky_units.PrefixSuffix
Import    tricky_units.StringMap

MKL_Version "",""
MKL_Lic     "",""

If Len(AppArgs)<2
	Print "Spam Programming Language - version "+MKL_NewestVersion()
	Print "Set up by Jeroen Broks"
	Print "Try to make programming code look like spam folks!"
	Print
	Print "Usage: "+StripAll(AppArgs[0])+" <program>[.spam]"
	End
EndIf	

ChangeDir LaunchDir


Const allowchat = False


Global Memory:Byte[1024]
Global Pointer=0
Global labels:StringMap = New StringMap
Global curl = 0
Global check = 1
Global last$ = ""


Function Chat(A$) ' Debug
	If allowchat Print "CHAT: "+A
End	Function

Global Code:String[]

Function Parse()	
	Local src$=AppArgs[1]
	If Not ExtractExt(src) src:+".spam"
	Chat "Parsing: "+src
	Local BT:TStream = ReadFile(src)
	Local word$
	Local tcode:TList = New TList
	Local X:Byte
	While Not Eof(bt)
		x = ReadByte(BT)
		If x=13 Or x=10 Or x=9 Or x=32
			ListAddLast tcode,Upper(word)
			word=""
		Else
			word:+Chr(x)
		End If
	Wend
	CloseFile bt
	code = New String[CountList(tcode)]
	Local c = 0
	For Local w$=EachIn tcode
		code[c]=w;c:+1
		If Prefixed(w,"HTTP://") MapInsert labels,Right(w,(Len w)-7),"$"+Hex(c)		
	Next
End Function

Type tit 
	Field f()
End Type


Type titmap Extends TMap
	Method execute(f$)
		Local t:tit = tit ( MapValueForKey ( Self , f.toupper() ) )
		If t t.f;last = f		
	End Method
	
	Method add(fn$,f())
		Local t:tit = New tit
		t.f = f
		MapInsert Self, fn.toupper() , t
	End Method
End Type

Global itmap : titmap = New titmap



Function it_chrshow()	WriteStdout Chr(memory[Pointer]) End Function;	itmap.add "BET",it_chrshow	' Show character of current value
Function it_bteshow()	WriteStdout memory[pointer] End Function;	itmap.add "SHOW",it_bteshow	' Show current byte value 
Function it_win()	Memory[Pointer]:+1 End Function;		itmap.add "WIN",it_win		' Increase value by 1
Function it_casino()	memory[Pointer]:-1 End Function;		itmap.add "CASINO",it_casino	' Decrease value by 1
Function it_check()	check=Memory[pointer] End Function;		itmap.add "CHECK",it_check	' If the current value is 0, skip the next valid command
Function it_next()	Print; End Function				itmap.add "NEXT",it_next
Function it_viagra()
	Local i:Long = Abs Input().toint()
	Local tp = Pointer
	Local e:Long = 1
	For Local ak=1 Until 7
		If i>256 ^ ak e=ak+1
	Next
	Local b:TBank = CreateBank(8)
	PokeLong b,0,i
	For Local ak=0 Until e
		Memory[tp] = PeekByte(b,ak)
		tp:+1
		If tp>=(Len Memory) tp=0
	Next
End Function								itmap.add "VIAGRA",it_viagra	' Asks user for (positive) number (64 bit max)
Function it_diploma()
	Local s$ = Input()
	Local tp = pointer
	For Local ak=0 Until (Len s)
		memory[tp]=s[ak]
		tp:+1
		If tp>=(Len Memory) tp=0
	Next
End Function								itmap.add "DIPLOMA",it_diploma ' asks user for string

Function it_money()
	Pointer:+1
	If Pointer>=(Len Memory) Pointer=0
End Function								itmap.add "MONEY",it_money ' Increase pointer

Function it_cash()
	Pointer:-1
	If Pointer<0 Pointer = (Len Memory) - 1
End Function								itmap.add "CASH",it_cash ' decrease pointer

parse
While curl < (Len code)
	Local cw$ = code[curl]
	chat curl+"> "+cw
	If Not check
		curl:+1
		check=true
	ElseIf MapContains(labels,cw) 
		curl = labels.value(cw).toint()
	ElseIf Prefixed(cw,"X")
		If last And last<>"CHECK"
			Local times = Right(cw,Len(cw)-1).toint()
			For Local  i=1 Until times 
				itmap.execute last
			Next			
		EndIf
		curl:+1	
	Else
		itmap.execute cw
		curl:+1
	EndIf					
Wend				
		

