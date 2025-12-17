@echo off
title YAP YAZILIM - Yorum Yonetimi
color 1F
cls

echo ========================================================
echo   YAP YAZILIM - AKILLI YORUM CEVAPLAYICI
echo ========================================================
echo.
echo Musteriden gelen yildiz sayisina gore
echo en profesyonel cevabi hazirlar.
echo.
echo --------------------------------------------------------

:SECIM
echo [5] 5 Yildiz (Mukemmel)
echo [3] 3-4 Yildiz (Ortalama)
echo [1] 1-2 Yildiz (Kotu/Kriz)
echo.
set /p "yildiz=Musteri kac yildiz verdi? (1, 3 veya 5 yazin): "

if "%yildiz%"=="5" goto BES
if "%yildiz%"=="3" goto ORTA
if "%yildiz%"=="4" goto ORTA
if "%yildiz%"=="1" goto BIR
if "%yildiz%"=="2" goto BIR
goto SECIM

:BES
cls
echo ========================================================
echo  5 YILDIZ ICIN TESEKKUR MESAJI:
echo ========================================================
echo.
echo "Harika geri bildiriminiz icin cok tesekkur ederiz!
echo Sizi memnun edebildigimize cok sevindik.
echo Bir sonraki ziyaretinizde gorusmek uzere."
echo.
goto SON

:ORTA
cls
echo ========================================================
echo  3-4 YILDIZ ICIN MESAJ:
echo ========================================================
echo.
echo "Degerli yorumunuz icin tesekkurler. Hizmetimizi
echo gelistirmek icin her gun calisiyoruz.
echo Gorusmek uzere!"
echo.
goto SON

:BIR
cls
echo ========================================================
echo  1-2 YILDIZ ICIN TELAFI MESAJI:
echo ========================================================
echo.
echo "Yasadiginiz olumsuz deneyim icin cok uzgunuz.
echo Hatamizi telafi etmek icin lutfen bizimle
echo iletisime gecin."
echo.
goto SON

:SON
echo ========================================================
pause