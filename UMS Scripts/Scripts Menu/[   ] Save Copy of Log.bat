@echo off

rem -------------------------------------------------
rem This will set common paths and fix multiple calls
rem -------------------------------------------------

call "%~dp0..\helpers\@ums-script.bat"


rem -------------------------------------------------
rem Create new backupfolder name from timestamp
rem js_epoch.bat will set the variable %EPOCH_MS%
rem -------------------------------------------------

call "%~dp0..\helpers\@js-epoch.bat"
set newdir=%PATH_SCRIPT_HELPERS_DIR%backups\backup_%EPOCH_MS%
md "%newdir%"


rem -------------------------------------------------
rem Copy the files you need to backup
rem -------------------------------------------------

xcopy "%PATH_UMS_PROFILE_DIR%debug.log" "%newdir%"
xcopy "%PATH_UMS_PROFILE_DIR%debug.log.prev" "%newdir%"
