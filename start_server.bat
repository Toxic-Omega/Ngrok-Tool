echo off
cd Server
color 6
mode con: cols=75 lines=27
title Web - Server
cls
python server.py
exit