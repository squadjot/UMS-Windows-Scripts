@echo off

rem -------------------------------------------------
rem This will set common paths and fix multiple calls
rem -------------------------------------------------

call "%~dp0@ums-script.bat" allowcall


rem -------------------------------------------------
rem Shutdown UMS (shuts down all jawav.exe, so this can be finetuned)
rem -------------------------------------------------

echo :: Shutting down UMS
taskkill /f /im javaw.exe > nul
timeout 3 > nul



rem -------------------------------------------------
rem Restarting UMS with correct profile dir
rem -------------------------------------------------

echo :: Restarting UMS
cd /D "%PATH_UMS_APP_DIR%"
CMD /c "UMS.exe profile=%PATH_UMS_PROFILE_DIR%"
timeout 10 > nul

exit