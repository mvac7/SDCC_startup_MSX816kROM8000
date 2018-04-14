# SDCC C MSX 8/16K 8000h ROM startup file (CRT)

Version: 1.1

Author: mvac7/303bcn

Architecture: MSX

Format: C Object (SDCC .rel)

Programming language: C

WEB:
 
mail: mvac7303b@gmail.com



History of versions:
- v1.1 (12/04/2018) Current version
- v1.0 (25/04/2010) Initial version



## 1. Introduction

This project is an opensource library (object type).

Startup file (CRT) for developing MSX 8 or 16K ROM applications using Small Device C Compiler (SDCC).

This CRT includes the header of the MSX ROM, initializes the stack and executes 
the main function. The ROM is allocated in the third bank (8000h).
  
It includes winOS scripts (.BAT) for compiling a 8K or 16K projects.
These scripts compile and generate the binary with the appropriate size.
  
                          
Compilation and 16K ROM binary creation example:  
`sdcc -mz80 --code-loc 0x8020 --data-loc 0xC000 --use-stdout --no-std-crt0 crt_MSX816kROM4000.rel CFILENAME.c`                           
`hex2bin -e ROM -l 4000 CFILENAME.ihx`   <--- generate a binary file and fill to 16384 Bytes size (4000h) 


In the test\ folder you will find an example (HelloWorld), which you can compile for 8K or 16K.
 


## 2. Acknowledgments
  
Thanks for Info & help, to:

* Avelino Herrera > http://msx.atlantes.org/index_es.html
* Nerlaska > http://albertodehoyonebot.blogspot.com.es
* Fubu > http://www.gamerachan.org/fubu/
* Marq/Lieves!Tuore > http://www.kameli.net/lt/
* Sapphire/Z80ST > http://z80st.auic.es/
* Pentacour > http://pentacour.com/
* JamQue/TPM > http://www.thepetsmode.com/
* Andrear > http://andrear.altervista.org/home/msxsoftware.php
* Konamiman > https://www.konamiman.com
* MSX Assembly Page > http://map.grauw.nl/resources/msxbios.php
* Portar MSX Tech Doc > http://nocash.emubase.de/portar.htm
* MSX Resource Center > http://www.msx.org/
* Karoshi MSX Community > http://karoshi.auic.es/
* BlueMSX >> http://www.bluemsx.com/
* OpenMSX >> http://openmsx.sourceforge.net/
* Meisei



## 3. Requirements

* Small Device C Compiler (SDCC) v3.6 http://sdcc.sourceforge.net/
* Hex2bin v2.2 http://hex2bin.sourceforge.net/ 



## 4. How to use the winOS scripts

In this project, I have included two winOS script files: for 8K or 16K ROMs.
The script is the same but with the size parameter `ROMSIZE` modified for each case.

There are also two scripts for linux which work in the same way as the winOS.

To adapt the script to your project, you must follow the following steps:

1. Copy the **Makefile** into the root path of your project.
2. Edit the Makefile with your favourite editor.
3. Put the sourcecode file name without extension at `CFILENAME` field.
4. Put the output ROM file name without extension at `ROMFILENAME` field.
5. Place the file paths of the objects in the `LIBn` fields.

I recommend using this structure:

- src\      <--- sources
- include\  <--- headers (.h) files
- libs\     <--- libraries or object (.rel) files.
- build\    <--- output files from compilator
- bin\      <--- result ROM file

The script will create the \build and \bin directories, when they do not exist.
