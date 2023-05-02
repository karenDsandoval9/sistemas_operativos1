@echo off
:inicio
echo seleccione una de las  opciones:
echo 1 - crear copia de directorio y sus archivos
echo 2 - eliminar directorio
echo 3 - salir del programa 
set /p opcion=
if %opcion%==1 goto :copiar directorio 
if %opcion%==2 goto :eliminar directorio 
if %opcion%==3 goto :salir
:copiar
set /p origen="ingrese la ruta del directorio en la que se encuentra: "
set /p destino="ingrese la ruta donde desea copiar el directorio: "
set /p nem_folder="ingrese el nombre de la carpeta: "
xcopy /E /I /Y "%origen%" "%destino%\%date:~5,2%-%date:~8,2%-%date:~11,4%-%time:~0,2%-%time:~3,2%-%time:~6,2%\%name_folder%"
echo el directorio ha sido copiado.
goto inicio
:eliminar
set /p ruta="ingrese la ruta del directorio que desea eliminar: "
rd /S /Q "%ruta%"
echo el directorio ha sido eliminado.
goto inicio
:salir
echo bye!.
exit