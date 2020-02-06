echo off
title Ngrok - Tool
color 6
:menu
mode con: cols=75 lines=27
cls
SETLOCAL ENABLEDELAYEDEXPANSION
echo.
echo   /mMMMMMMMMMMMMMMMMMMMMMMMMMm+              Ngrok - Tool         
echo   NM-```````````````````````-MN         Created By Toxic-Omega
echo   NM. sd. +m-               .MN   
echo   mM-`..``..```.````````````-MN  
echo   +mmdddddddddddddddddddddddmm+  
echo   `/syyyyyyyyyyyyyyyyyyyyyyys/`  
echo   hMyooooooooooooooooooooooosMd  
echo   NM. :+` -o.               .MN  
echo   NM. :o` -o.               .MN  
echo   hMsooooooooooooooooooooooosMd  
echo   `/syyyyyyyyyyyyyyyyyyyyyyys+`  
echo   +dmdddddddddddddddddddddddmm+  
echo   mM:.......`........`...`..-MN  
echo   NM. sd. +m-               .MN  
echo   NM-```````````````````````-MN  
echo   +mMMMMMMMMMMMMMMMMMMMMMMMMMm+  
echo.
echo [ 1 ] Start Ngrok
echo [ 2 ] Setup Ngrok
echo.
echo [ x ] Exit
echo.
set /p "op=>> "
IF "%op%" == "1" GOTO start
IF "%op%" == "2" GOTO setup
IF not "%op%"  == "x" IF not "%op%"  == "1" IF not "%op%"  == "2" GOTO menu
:start
start start_server.bat
ngrok http 8080
goto menu
:setup
cls
echo.
echo   /mMMMMMMMMMMMMMMMMMMMMMMMMMm+              Ngrok - Tool         
echo   NM-```````````````````````-MN         Created By Toxic-Omega
echo   NM. sd. +m-               .MN   
echo   mM-`..``..```.````````````-MN  
echo   +mmdddddddddddddddddddddddmm+  
echo   `/syyyyyyyyyyyyyyyyyyyyyyys/`  
echo   hMyooooooooooooooooooooooosMd  
echo   NM. :+` -o.               .MN  
echo   NM. :o` -o.               .MN  
echo   hMsooooooooooooooooooooooosMd  
echo   `/syyyyyyyyyyyyyyyyyyyyyyys+`  
echo   +dmdddddddddddddddddddddddmm+  
echo   mM:.......`........`...`..-MN  
echo   NM. sd. +m-               .MN  
echo   NM-```````````````````````-MN  
echo   +mMMMMMMMMMMMMMMMMMMMMMMMMMm+  
echo.
set /p "authtoken=Enter Your AuthToken >> "
ngrok authtoken %authtoken%
goto menu
:exit
exit