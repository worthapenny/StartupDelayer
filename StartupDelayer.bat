REM auther: Akshaya Niraula
REM 
REM This file can be synced to multiple machine
REM and you can define what application to start and when

ECHO OFF

IF %COMPUTERNAME% == ABCD123XYZ GOTO WorkLaptop

GOTO END


:WorkLaptop
ECHO Current machine is ABCD123XYZ
ECHO 

CALL :OpenApplication Skype 30 lync
CALL :OpenApplication Outlook 20 a out
CALL :OpenApplication Notepad++ 20 a npp
CALL :OpenApplication Teams 20 a teams
CALL :OpenApplication GoogleDrive 30 "C:\pf\Google\Drive\googledrivesync.exe"
GOTO END

:HomeLaptop
REM Let's not start anything by default
GOTO END

REM "Application Name" "Delay in seconds" "Path to executable" "Arguments to executatble"
:OpenApplication
ECHO %1 will open in %2 seconds
TIMEOUT %2 /nobreak
START "" %3 %4 %5
EXIT /B REM aka return

:END
ECHO Exiting...
GOTO:eof
