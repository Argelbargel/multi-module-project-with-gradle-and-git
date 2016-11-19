@if "%DEBUG%" == "" @echo off
set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.

echo Initializing/updating modules...
%DIRNAME%/gradlew.bat --init-script gradle/init-scripts/update-modules.gradle -Pmodules="%*" -q --no-daemon