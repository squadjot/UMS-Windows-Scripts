@echo off

rem -------------------------------------------------
rem This routine is designed to avoid multiple/duplicate calls
rem The script will stop and exit If it has been called within specified time [miliseconds] 
rem -------------------------------------------------

setlocal EnableDelayedExpansion
set minimumtime=%1
IF DEFINED minimumtime (echo>nul) ELSE (set minimumtime=3000)
set timestampfile="%~dp0cache/limit_one_call_last.txt"
rem set timestampfile=%TEMP%\limit_one_call_last.txt
set /a lasttime=1
if exist %timestampfile% (
    set /p lasttime=<%timestampfile%
) else (
    rem file doesent exist yet
)
set now=1%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%%TIME:~9,2%0
set now=!now: =0!
echo %now%>%timestampfile% 
set /a time_since_last_call=%now%-%lasttime%
rem echo %now% %lasttime% %time_since_last_call%
endlocal & (
	if %time_since_last_call% LSS %minimumtime% exit
)


rem -------------------------------------------------
rem This routine is designed to avoid multiple/duplicate calls
rem -------------------------------------------------

rem PAUSE
