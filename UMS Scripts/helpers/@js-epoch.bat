@echo off

rem -------------------------------------------------
rem This routine is designed to expose a global variable 'EPOCH_MS'
rem which is the value of javascripts Date.getTime method.
rem -------------------------------------------------

setlocal

set temp_js=%TEMP%\js_epoch_%RANDOM%.js
set temp_res=%TEMP%\js_epoch_%RANDOM%.txt
echo WScript.echo( new Date().getTime() )> %temp_js%
cscript /Nologo %temp_js% > %temp_res%
set /p temp_val=<%temp_res%

rem -------------------------------------------------
rem Delete temp files
rem -------------------------------------------------
del %temp_js%
del %temp_res%

rem -------------------------------------------------
rem End routine and set global variable 'EPOCH_MS'
rem -------------------------------------------------

endlocal & (
	set EPOCH_MS=%temp_val%
)

goto :EOF

rem -------------------------------------------------
rem DEBUG
rem -------------------------------------------------

rem echo %EPOCH_MS%
rem pause