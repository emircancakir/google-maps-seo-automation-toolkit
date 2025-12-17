@echo off
title YAP YAZILIM - QR Kod Sihirbazi
color 0B
cls

echo ========================================================
echo   YAP YAZILIM - QR KOD OLUSTURMA ARACI
echo ========================================================
echo.
echo [BILGI] Musterilerinizin kamerayla tarayip direkt
echo Google Haritalar profilinize gitmesini saglayan
echo QR Kodu saniyeler icinde olusturur.
echo.
echo --------------------------------------------------------

:INPUT
set /p "link=QR Kodu Yapilacak Linki Yapistir (Ctrl+V): "

if "%link%"=="" goto INPUT

echo.
echo QR Kod hazirlaniyor... Tarayiciniz acilacak...
echo --------------------------------------------------------

:: Linki Google API'sine gonderip acar
start "" "https://api.qrserver.com/v1/create-qr-code/?size=500x500&data=%link%"

echo.
echo [OK] QR Kodunuz tarayicida acildi!
echo Sag tiklayip "Resmi Farkli Kaydet" diyerek indirebilirsiniz.
echo.
pause