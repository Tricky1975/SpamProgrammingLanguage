# Compiling Spam from source

Of course you can load SpamProgrammingLanguage.sln into Visual Studio and compile it from there, or you can use the msbuild tool to do it from the command line interface
~~~shell
msbuild /p:Configuration=Release SpamProgrammingLanguage.sln
~~~
All too easy. ;)
Ignore warnings about unreachable code. That warning is caused by some code I "dummied" as it was only used for debug purposes.


Best way to go is to create a folder called "Visual Studio Projects" or something like that and go to that directory. For users of Unix based systems it's very important not to use FAT/FAT32/ExFAT formatted devices for this, as Visual Studio has a bug making it unable to work with these devices. I do not know if the command line compiler has any trouble with this though (as I never tried).

In this folder type the following commands:
~~~shell
git clone https://github.com/tricky1975/SpamProgrammingLanguage.git
git clone https://github.com/tricky1975/trickyunits_csharp.git TrickyUnits
cd SpamProgrammingLanguage
msbuild /p:Configuration=Release SpamProgrammingLanguage.sln
cd bin/Release
mv SpamProgrammingLanguage.exe Spam.exe
~~~
(Windows users should replace "mv" in the last line with either "ren" or "move".
Windows users should also make sure that git.exe and msbuild.exe are reachable through the PATH environment variable (technically Unix users should do the same, but the way Unix is organised mostly works out in this matter).




