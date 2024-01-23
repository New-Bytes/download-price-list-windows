@echo off
setlocal enabledelayedexpansion

REM Ruta al directorio de los scripts de descarga
set "scriptsPath=%~dp0"

REM Preguntar el formato deseado
set /p "format=¿Que formato deseas descargar? (csv/xlsx): "

REM Comando de descarga según el formato elegido
if /i "!format!"=="csv" (
    set "download_command=!scriptsPath!downloadPriceList_csv.bat"
) else (
    if /i "!format!"=="xlsx" (
        set "download_command=!scriptsPath!downloadPriceList_xlsx.bat"
    ) else (
        echo Formato no valido. Por favor, elige 'csv' o 'xlsx'.
        exit /b 1
    )
)

REM Preguntar la frecuencia en minutos
set /p "frequency_in_minutes=Ingresa la frecuencia de la tarea (en minutos): "

REM Validar la entrada
echo !frequency_in_minutes!| findstr /r "^[1-9][0-9]*$" >nul
if errorlevel 1 (
    echo Frecuencia no valida. Debe ser un numero entero positivo.
    exit /b 1
)

REM Calcular la frecuencia de la tarea programada
set "cron_frequency=*/!frequency_in_minutes! * * * *"

REM Registrar la tarea programada
schtasks /create /tn "scheduledDownloadPriceList" /tr "!download_command!" /sc minute /mo !frequency_in_minutes!

echo No olvides la condicion de energia para que se ejecute la tarea.
echo Tarea programada para ejecutarse cada !frequency_in_minutes! minutos en formato !format!