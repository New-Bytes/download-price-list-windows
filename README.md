# Descargador Automatizado de Listas de Precios

Conjunto de instrucciones para la descarga automatizada del catálogo de precios de New Bytes, con la opción adicional de programar descargas periódicas de manera eficiente.

## Requisitos

- CMD
- Token

## Scripts en el Repositorio

- `downloadPriceList_xlsx.bat`    : Descarga el listado de precios en formato Excel.
- `downloadPriceList_csv.bat`     : Descarga el listado de precios en formato de valores separados por comas.
- `downloadPriceList_schedule.bat`: Programa descargas automatizadas del listado de precios.

## Configuración de los Scripts de Descarga 
`downloadPriceList_xlsx.bat`
`downloadPriceList_csv.bat`

- **token:**         Credencial para validar la identidad del usuario.
- **downloadPath:**  Ruta donde se guarda el listado de precios. 
                      La ruta predeterminada es la misma que donde guardaste tu archivo .bat pero puedes especificar una ruta diferente si lo deseas.
- **fileName:**      El nombre del archivo a descargar. 
                      El nombre predeterminado es priceList pero puedes especificar un nombre diferente si lo deseas.

**Obtener token**
1. Inicia sesión en la plataforma de https://nb.com.ar/
2. En la sección de mi cuenta, dirigete al apartado de mis credenciales https://nb.com.ar/miCuenta/credenciales
3. Te aparecerá una dirección como esta https://webapi.nb.com.ar/v1/priceListExcel/a0123456789 el token es el último número de la ruta (a0123456789)

## Configuración del Script de Programación 
`downloadPriceList_schedule.bat`

- **scriptsPath:** Ruta donde se encuentran los scripts de descarga.

1. Asegúrate de que los scripts de descarga estén en el mismo directorio que el script de programación, o en su defecto, ajusta la variable scriptsPath según sea necesario.
2. No olvides que para que la tarea se ejecute automáticamente se debe cumplir la **condición de energía** la cual consiste en que el equipo esté conectado a una corriente alterna o también puedes cambiar esta configuración desde el Programador de tareas.

**Cambiar condición de energía**
> Abrir el Programador de tareas de Windows >
> Seleccionar biblioteca del programador de tareas >
> Seleccionar scheduledDownloadPriceList > Abrir sus Propiedades > Abrir pestaña Condiciones >
> Deshabilitar todas las casillas de condiciones

## Ejecutar

**Para ejecutar este proyecto en un entorno Windows**

```cmd
  call ruta\de\tu\archivo.bat
```

**Para ejecutar este proyecto en un entorno Linux**

https://github.com/New-Bytes/download-price-list-linux.git

## Soporte
Para obtener ayuda o informar problemas, por favor abre un 'issue' en el repositorio de GitHub donde se aloja este script.
