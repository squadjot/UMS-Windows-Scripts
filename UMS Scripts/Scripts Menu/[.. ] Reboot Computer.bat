@echo off

rem -------------------------------------------------
rem This will set common paths and fix multiple calls
rem -------------------------------------------------

call "%~dp0..\helpers\@ums-script.bat"


rem -------------------------------------------------
rem Reboot computer
rem -------------------------------------------------

rem Rebooting down Computer
shutdown -f -r -t 0