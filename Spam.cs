// Lic:
// 	Spam Programming Language
// 	Esotoric Language to make code look like spam
// 	
// 	
// 	
// 	(c) Jeroen P. Broks, 2018, All rights reserved
// 	
// 		This program is free software: you can redistribute it and/or modify
// 		it under the terms of the GNU General Public License as published by
// 		the Free Software Foundation, either version 3 of the License, or
// 		(at your option) any later version.
// 		
// 		This program is distributed in the hope that it will be useful,
// 		but WITHOUT ANY WARRANTY; without even the implied warranty of
// 		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// 		GNU General Public License for more details.
// 		You should have received a copy of the GNU General Public License
// 		along with this program.  If not, see <http://www.gnu.org/licenses/>.
// 		
// 	Exceptions to the standard GNU license are available with Jeroen's written permission given prior 
// 	to the project the exceptions are needed for.
// Version: 18.09.22
// EndLic

//Strict
//Framework tricky_units.PrefixSuffix
//Import    tricky_units.StringMap

using TrickyUnits;
using System;
using System.Collections.Generic;

namespace SpamProgrammingLanguage
{
    /*
        Type tit

        Field f()
    End Type
    */
    delegate void tit();

    class itmap
    { // Extends TMap

        static public Dictionary<string, tit> map = new Dictionary<string, tit>();

        static public void execute(string af)
        {
            var f = af.ToUpper();
            if (map.ContainsKey(f))
            {
                tit t = map[f];
                t();
                SpamProgrammingLanguage.last = f;
            }
        }

        static void add(string fn, tit f)
        /*
        Local t:tit = New tit

        t.f = f
        MapInsert Self, fn.toupper() , t
    End Method
    */
        {
            map[fn.ToUpper()] = f;
        }


        //Global itmap : titmap = New titmap
        static int Pointer { get { return SpamProgrammingLanguage.Pointer; } set { SpamProgrammingLanguage.Pointer = value; } }
        static byte[] Memory { get { return SpamProgrammingLanguage.Memory; } }
        static bool check { get { return SpamProgrammingLanguage.check; } set { SpamProgrammingLanguage.check = value; } }
        static itmap()
        {
            add("BET", delegate () { Console.Write(qstr.Chr(SpamProgrammingLanguage.Memory[SpamProgrammingLanguage.Pointer])); }); //Function it_chrshow()   WriteStdout Chr(memory[Pointer]) End Function; itmap.add "BET",it_chrshow   ' Show character of current value
            add("SHOW", delegate () { Console.Write(SpamProgrammingLanguage.Memory[SpamProgrammingLanguage.Pointer]); }); //Function it_bteshow()   WriteStdout memory[pointer] End Function; itmap.add "SHOW",it_bteshow   ' Show current byte value
            add("WIN", delegate () { SpamProgrammingLanguage.Memory[SpamProgrammingLanguage.Pointer]++; }); //Function it_win()   Memory[Pointer]:+1 End Function; itmap.add "WIN",it_win     ' Increase value by 1
            add("CASINO", delegate () { Memory[Pointer]--; }); //Function it_casino()    memory[Pointer]:-1 End Function; itmap.add "CASINO",it_casino   ' Decrease value by 1
            add("CHECK", delegate () { check = Memory[Pointer] != 0; }); //Function it_check() check=Memory[pointer] End Function;     itmap.add "CHECK",it_check  ' If the current value is 0, skip the next valid command
            add("NEXT", delegate () { Console.WriteLine(); }); //Function it_next()  Print; End Function             itmap.add "NEXT",it_next
            add("VIAGRA", delegate ()
            {
                long i = Math.Abs(qstr.ToLong(Console.ReadLine()));
                var b = BitConverter.GetBytes(i);
                long e = 1;
                for (int ak = 1; ak < 7; ak++)
                {
                    if (i > (long)Math.Pow(256, ak)) e = ak + 1;
                }
                var tp = Pointer;
                for (int ak = 0; ak < e; ak++)
                {
                    Memory[tp] = b[ak];
                    tp++;
                    if (tp >= Memory.Length) tp = 0;
                }
            });
            /*
Function it_viagra()

    Local i:Long = Abs Input("").toint()

    Local tp = Pointer

    Local e:Long = 1
    For Local ak=1 Until 7
        If i>256 ^ ak e = ak + 1

    Next
    Local b:TBank = CreateBank(8)

    PokeLong b,0,i
    For Local ak = 0 Until e

        Memory[tp] = PeekByte(b, ak)

        tp:+1
        If tp>=(Len Memory) tp = 0

    Next
End Function itmap.add "VIAGRA", it_viagra    ' Asks user for (positive) number (64 bit max)
*/
            add("DIPLOMA", delegate ()
            {
                string s = Console.ReadLine();
                int tp = Pointer;
                for (int ak = 0; ak < s.Length; ak++)
                {
                    if (SpamProgrammingLanguage.MaxString >= 0 && ak >= SpamProgrammingLanguage.MaxString) break;
                    tp++;
                    if (tp >= Memory.Length) tp = 0;
                }
            });
            /*
Function it_diploma()
    Local s$ = Input("")

    Local tp = pointer

    For Local ak=0 Until(Len s)

        If maxstring>=0 And ak>=maxstring Exit

        memory[tp]=s[ak]
        tp:+1
        If tp>=(Len Memory) tp = 0

    Next
End Function itmap.add "DIPLOMA", it_diploma ' asks user for string
*/

            add("MONEY", delegate ()
            {
                Pointer++;
                if (Pointer >= Memory.Length) Pointer = 0;
            });
            /*
Function it_money()
    Pointer:+1

    If Pointer>=(Len Memory) Pointer = 0
End Function                                itmap.add "MONEY", it_money ' Increase pointer
*/
            add("CASH", delegate ()
            {
                Pointer--;
                if (Pointer < 0) Pointer = (Memory.Length - 1);
            });
            /*
Function it_cash()
    Pointer:-1

    If Pointer<0 Pointer = (Len Memory) - 1
End Function  itmap.add "CASH",it_cash ' decrease pointer
*/
        }
    }

    class SpamProgrammingLanguage
    {

        const bool allowchat = false; // True when debugging only!!

        static public byte[] Memory = new byte[1024];
        static public int Pointer = 0;
        static Dictionary<string, int> labels = new Dictionary<string, int>();
        static int curl = 0;
        static public bool check = true;
        static public string last = "";
        static public int MaxString = -1;
        //List<string> Code = new List<string>();
        static string[] code = null;
        static string[] AppArgs;



        static void Print(string a = "") => Console.WriteLine(a);
        static string StripAll(string a) => "LATER";
        static void ChangeDir(string cd) => Console.WriteLine("CD comes later");

        static void Parse()
        {
            var src = AppArgs[0];
            if (qstr.ExtractExt(src) == "") src += ".spam";
            Chat("Parsing: " + src);
            var BT = QOpen.ReadFile(src);
            var word = "";
            var tcode = new List<string>();
            byte X = 0;
            while (!BT.EOF)
            {
                X = BT.ReadByte();
                if (X == 13 || X == 10 || X == 9 || X == 32)
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
                if (qstr.Prefixed(w, "HTTP://")) labels[qstr.Right(w, w.Length - 7)] = c; //MapInsert labels,Right(w,(Len w)-7),"$"+Hex(c)
            }
        }



        static void Chat(string A)
        { // debug
            if (allowchat) Print("CHAT: " + A);
        }


        static public void Main(string[] AAppArgs)
        {
            AppArgs = AAppArgs;
            MKL.Version("Spam Programming Language - Spam.cs", "18.09.22");
            MKL.Lic("Spam Programming Language - Spam.cs", "GNU General Public License 3");
            if (AppArgs.Length < 1)
            {
                QOpen.Hello();
                qstr.Right("spam", 4); // Does nothing, I know, but MKL needs to to parse it all right :P
                Print("Spam Programming Language - version "+MKL.Newest);
                Print("Set up by Jeroen Broks");
                Print("Try to make programming code look like spam folks!");
                Print();
                Print("Usage: spam <program>[.spam]");
                return;
            }
            //ChangeDir(LaunchDir);


            Parse();
            while (curl < code.Length)
            {
                string cw = code[curl];
                Chat(curl + "> " + cw);
                if (!check)
                {
                    curl++;
                    check = labels.ContainsKey(cw) || itmap.map.ContainsKey(cw);
                }
                else if (labels.ContainsKey(cw))
                {
                    curl = labels[cw];
                }
                else if (qstr.Prefixed(cw, "$"))
                {
                    MaxString = qstr.ToInt(qstr.Right(cw, qstr.Len(cw) - 1));
                    //'Print maxstring
                    curl++;
                }
                else if (qstr.Prefixed(cw, "X"))
                {
                    if (last != "" && last != "CHECK")
                    {
                        int times = qstr.ToInt(qstr.Right(cw, qstr.Len(cw) - 1));
                        for (int i = 1; i < times; i++) itmap.execute(last);
                    }
                    curl++;
                }
                else if (qstr.Suffixed(cw, "X"))
                {
                    if (last != "" && last != "CHECK")
                    {
                        int times = qstr.ToInt(qstr.Left(cw, qstr.Len(cw) - 1));
                        for (int i = 1; i < times; i++) itmap.execute(last);
                    }
                    curl++;
                }
                else
                {
                    itmap.execute(cw);
                    curl++;
                }
            }
        }
    }
}

