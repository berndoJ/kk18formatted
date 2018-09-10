@echo off
goto main

:main
echo Installation script for "KK18Formatted" Word stylesheet.
echo.

set stylesheetpath=%~dp0\KK18formatted.xsl
set installpath=%appdata%\Microsoft\Bibliography\Styles

set /p confirm=Are you sure to install KK18Formatted (%stylesheetpath%) to %installpath%? [Y/N]? 

if /i "%confirm%" NEQ "Y" goto end

echo.
echo Installing KK18Formatted...

copy "%stylesheetpath%" "%installpath%" /Y/N

echo.
echo --------------
echo INSTALL SUCESS
echo --------------
echo.
pause
goto end

:end
endlocal