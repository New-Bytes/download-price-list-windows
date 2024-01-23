@echo off
setlocal enabledelayedexpansion

rem Token para validar la identidad del usuario
set "token=" 

rem Ruta del directorio donde deseas guardar el archivo a descargar
set "downloadPath=%~dp0"

rem Nombre del archivo a descargar
set "fileName=priceList"

powershell -command "& { Invoke-WebRequest -Uri 'https://webapi.nb.com.ar/v1/priceListCsv/!token!' -OutFile '!downloadPath!!fileName!.csv' }"
echo Proceso terminado.
endlocal