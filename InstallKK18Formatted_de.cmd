@echo off
goto main

:main
echo Installations-Skript fuer "KK18Formatted" Word Stylesheet Datei.
echo.

set stylesheetpath=%~dp0\KK18formatted.xsl
set installpath=%appdata%\Microsoft\Bibliography\Styles

set /p confirm=Sind Sie sicher, dass sie KK18Formatted (%stylesheetpath%) in %installpath% installieren moechten? [J/N]? 

if /i "%confirm%" NEQ "J" goto end

echo.
echo Installiere KK18Formatted...

copy "%stylesheetpath%" "%installpath%" /Y/N

echo.
echo ------------------------
echo INSTALLATION ERFOLGREICH
echo ------------------------
echo.
pause
goto end

:end
endlocal