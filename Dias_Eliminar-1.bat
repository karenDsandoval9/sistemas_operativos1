@echo off
set /p r="ruta del directorio: "
set /p d="dias de creacion o modificacion: "
forfiles /p "%r%" /d -%d% /c "cmd /c echo @path"           
forfiles /p "%r%" /d -%d% /c "cmd /c del @path"