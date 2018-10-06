@echo off

rem -------------------------------------------------
rem Create needed folders ( in case they don't already exist )
rem -------------------------------------------------

IF NOT EXIST "%~dp0backups" ( MD "%~dp0backups" )
IF NOT EXIST "%~dp0cache" ( MD "%~dp0cache" )


rem -------------------------------------------------
rem Duplicate calls fix
rem -------------------------------------------------

if [%1] NEQ [allowcall] (
 call "%~dp0@run-once.bat"
)


rem -------------------------------------------------
rem Paths setup ( Edit if needed ) 
rem -------------------------------------------------

set PATH_UMS_PROFILE_DIR=C:\ProgramData\UMS\
set PATH_UMS_APP_DIR=C:\Program Files (x86)\Universal Media Server\
set PATH_SCRIPT_HELPERS_DIR=%~dp0

