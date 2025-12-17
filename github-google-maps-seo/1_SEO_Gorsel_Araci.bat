@echo off
:: ============================================================
:: YAP YAZILIM - MODERN SEO GORSEL ARACI (V5 FINAL)
:: ============================================================
title YAP YAZILIM - SEO Gorsel Asistani
color 1F
cls

echo.
echo ==========================================================
echo   YAP YAZILIM - GOOGLE HARITALAR GORSEL SEO ARACI
echo ==========================================================
echo.
echo [BILGI] Bu arac, klasordeki .jpg ve .png dosyalarini
echo Google siralamasina uygun sekilde (keyword-100.jpg) yapar.
echo.

:INPUT
set /p "Key=Anahtar Kelimeyi Girin (Bosluk yerine tire kullan): "

if "%Key%"=="" goto INPUT

echo.
echo Islem yapiliyor... Lutfen bekleyin...
echo ----------------------------------------------------------

:: --- POWERSHELL KOMUTU ---
:: Bu komut dosyalari alir, sayac ekler ve ismini degistirir.
Powershell -NoProfile -ExecutionPolicy Bypass -Command "$i=100; Get-ChildItem * -Include *.jpg,*.jpeg,*.png | ForEach-Object { $NewName = '%Key%-' + $i + $_.Extension; Write-Host 'Degistiriliyor: ' $_.Name ' -> ' $NewName; Rename-Item $_.FullName -NewName $NewName; $i++ }"

echo ----------------------------------------------------------
echo.
echo [OK] ISLEM TAMAMLANDI!
echo Pencereyi kapatabilirsiniz.
echo.
pause