/*
Rem
  Spam.bmx
  Spam Programming Language
  version: 17.09.09
  Copyright (C) 2017 Jeroen P. Broks
  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.
  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:
  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
End Rem

This is a translation from BlitzMax to C#
*/

//Strict
//Framework tricky_units.PrefixSuffix
//Import    tricky_units.StringMap

using TrickyUnits;
using System;
using System.Collections.Generic;

namespace SpamProgrammingLangauge{
class SpamProgrammingLanguage{
	
   const bool allowchat = false;

   byte[] Memory = new byte[1024];
   int Pointer=0;
   Dictionary<string,int> labels = new Dictionary<string,int>();
   int curl = 0;
   int check = 1;
   string last = "";
   string MaxString=-1;
        //List<string> Code = new List<string>();
        string[] code = null;
   string[] AAppArgs


static void Print(string a="") => Console.WriteLine(a);
static string StripAll(string a) => "LATER";
static void ChangeDir(string cd) => Console.WriteLine("CD comes later");

        static void Parse()
        {
            var src = AppArgs[1];
            if (qstr.ExtractExt(src) == "") src += ".spam";
            Chat("Parsing: " + src);
            var BT = QOpen.ReadFile(src);
            var word = "";
            var tcode = new List<string>();
            byte X = 0;
            while (!BT.EOF)
            {
                X = BT.ReadByte();
                if (X == 13 || X == 10 || X == 9 || x = 32)
                {
                    tcode.Add(word.ToUpper());
                    word = "";
                }
                else
                {
                    word += qstr.Chr(X);
                }
            }
            BT.Close();
            code = new String[tcode.Count];
            var c = 0;
            foreach (string w in tcode)
            {
                code[c] = w; c++;
                if (qstr.Prefixed(w, "HTTP://") labels[Right(w, w.Length - 7)] = c; //MapInsert labels,Right(w,(Len w)-7),"$"+Hex(c)
            }
        }



static void Chat(string A){ // debug
	if (allowchat) Print("CHAT: "+A);
}


static public void Main(string[] AAppArgs){
	AppArgs=AAppargs;
  MKL.Version("Spam Programming Language - Spam.bmx","17.09.09");
  MKL.Lic (     "Spam Programming Language - Spam.bmx","ZLib License");
  if(AppArgs.Length<2){
	   //Print("Spam Programming Language - version "+MKL.NewestVersion());
     Print("Set up by Jeroen Broks");
     Print("Try to make programming code look like spam folks!");
     Print();
     Print("Usage: "+StripAll(AppArgs[0])+" <program>[.spam]");
     return;
   }
   //ChangeDir(LaunchDir);


}   






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
	Local i:Long = Abs Input("").toint()
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
	Local s$ = Input("")
	Local tp = pointer
	For Local ak=0 Until (Len s)
		If maxstring>=0 And ak>=maxstring Exit
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
		check=MapContains(labels,cw) Or MapContains(itmap,cw)
	ElseIf MapContains(labels,cw)
		curl = labels.value(cw).toint()
	ElseIf Prefixed(cw,"$")
		 maxstring = Right(cw,(Len cw)-1).toint()
		'Print maxstring
		curl:+1
	ElseIf Prefixed(cw,"X")
		If last And last<>"CHECK"
			Local times = Right(cw,Len(cw)-1).toint()
			For Local  i=1 Until times
				itmap.execute last
			Next
		EndIf
		curl:+1
	ElseIf Suffixed(cw,"X")
		If last And last<>"CHECK"
			Local times = Left(cw,Len(cw)-1).toint()
			For Local i=1 Until times
				itmap.execute last
			Next
		EndIf
		curl:+1
	Else
		itmap.execute cw
		curl:+1
	EndIf
Wend
