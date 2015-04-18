
@echo off

ECHO start > ip.log

SET count=0
SET subnet=192.168.1

:start
SET /a count=%count%+1


ping -n 1 -w 1000 %subnet%.%count% > nul

IF %errorlevel%==0 echo %subnet%.%count% >> ip.log
IF %errorlevel%==1 echo %subnet%.%count% DOWN 

IF %count%==254 goto :eof

GOTO start
