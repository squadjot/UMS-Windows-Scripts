@echo off

rem -------------------------------------------------
rem This will set common paths and fix multiple calls
rem -------------------------------------------------

call "%~dp0..\helpers\@ums-script.bat"



rem -------------------------------------------------
rem Running bat file as separate process 
rem -------------------------------------------------

start "UMS Script" "%~dp0..\helpers\RestartUMS.bat"