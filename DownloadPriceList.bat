@echo off
setlocal enabledelayedexpansion

set "token=Ingresa aquí el token" 
set "url=https://api.nb.com.ar/v1/priceListExcel/%token%"
set "outputPath=%~dp0PriceList.xlsx"

powershell -command "& { Invoke-WebRequest -Uri '%url%' -OutFile '!outputPath!' }"
echo Proceso terminado.
endlocal



