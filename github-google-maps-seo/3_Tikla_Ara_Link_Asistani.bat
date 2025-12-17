@echo off
title YAP YAZILIM - Link Asistani
color 0E
cls

echo ========================================================
echo   YAP YAZILIM - INSTAGRAM VE WHATSAPP ASISTANI
echo ========================================================
echo.
echo Web siteniz yok mu? Sorun degil.
echo Bu arac, musterinin tikladigi an sizi aramasini
echo saglayan ozel linkler uretir.
echo.
echo --------------------------------------------------------

:SORU
echo Lutfen telefon numaranizi basinda 90 olacak sekilde,
echo bosluk birakmadan yazin. (Ornek: 905551234567)
echo.
set /p "tel=Telefon Numaraniz: "

if "%tel%"=="" goto SORU

cls
echo ========================================================
echo   LINKLERINIZ HAZIR (KOPYALAYIN):
echo ========================================================
echo.
echo 1. WHATSAPP DIREKT MESAJ LINKI:
echo -------------------------------
echo https://wa.me/%tel%
echo.
echo [Tavsiye] Bunu Instagram profilinize yapistirin.
echo.
echo.
echo 2. WEB SITESI ICIN "TIKLA ARA" KODU:
echo ------------------------------------
echo tel:+%tel%
echo.
echo ========================================================
pause