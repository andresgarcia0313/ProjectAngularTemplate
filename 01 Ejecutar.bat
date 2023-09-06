docker compose up -d
@REM Borrado de pantalla
cls
@REM Mensaje en bat al usuario en letras en rojo indicando que el navegador abrira y que lo refresque hasta cargar la pagina
echo "Abriendo navegador, refresque hasta que cargue la pagina si no funciona valide el puerto que debes colocar en .env"
start http://localhost
pause