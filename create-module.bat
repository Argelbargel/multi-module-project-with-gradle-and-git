@if "%DEBUG%" == "" @echo off
set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.

echo Creating new module...
%DIRNAME%/gradlew.bat --init-script create-module.gradle -Pmodule.name=%1 -Pmodule.repository=%2 -q --no-daemon
