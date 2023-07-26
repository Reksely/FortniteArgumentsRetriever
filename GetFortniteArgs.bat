@echo off
setlocal enabledelayedexpansion

:: Getting Fortnite process ids
for /f "tokens=2 delims=," %%a in ('tasklist /nh /fi "imagename eq FortniteClient-Win64-Shipping.exe" /fo csv') do set "FortniteClient-Win64-Shipping=%%~a"

for /f "tokens=2 delims=," %%a in ('tasklist /nh /fi "imagename eq FortniteClient-Win64-Shipping_EAC.exe" /fo csv') do set "FortniteClient-Win64-Shipping_EAC=%%~a"

:: Print FortniteClient-Win64-Shipping args
echo.
echo [34m1. FortniteClient-Win64-Shipping args:[0m
wmic.exe path Win32_Process where handle^='%FortniteClient-Win64-Shipping%' get Commandline /format:list | findstr /v /r "^$" | findstr "="
:: Add two lines of distance
echo.
echo.
:: Print FortniteClient-Win64-Shipping_EAC args
echo.
echo [33m2. FortniteClient-Win64-Shipping_EAC args:[0m
wmic.exe path Win32_Process where handle^='%FortniteClient-Win64-Shipping_EAC%' get Commandline /format:list | findstr /v /r "^$" | findstr "="

:: Reset color
@ECHO OFF

:: we dont want it to close lol
pause