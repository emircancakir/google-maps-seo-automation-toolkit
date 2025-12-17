@echo off
title YAP YAZILIM - Rank Checker
color 0C
cls

echo ========================================================
echo   YAP YAZILIM - GIZLI SIRALAMA AJANI
echo ========================================================
echo.
echo [ONEMLI] Kendi bilgisayarinizdan arama yaptiginizda
echo Google sizi tanir ve siralamanizi yuksek gosterir.
echo.
echo Bu arac tarayiciyi GIZLI MODDA acarak gercek siralamayi
echo gosterir.
echo.
echo --------------------------------------------------------

:INPUT
set /p "kelime=Hangi Kelimede Siralamaya Bakilacak? (Orn: berber): "

if "%kelime%"=="" goto INPUT

echo.
echo Gizli Ajan modu aciliyor...

:: Bosluklari + isaretine cevirme
set "kelime=%kelime: =+%"

:: Edge tarayicisini GIZLI MODDA baslat
start msedge.exe -inprivate "https://www.google.com/search?q=%kelime%"

echo.
echo [OK] Tarayici Gizli Modda acildi.
echo.
pause