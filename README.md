# Proyecto

## Descripción

Este proyecto se centra en la creación de un entorno de desarrollo versátil para aplicaciones Node.js independientes de cualquier framework específico. Aprovecha la eficiencia de los contenedores Docker y está diseñado para simplificar el proceso de desarrollo y despliegue. El proyecto se compone de archivos esenciales, como el Containerfile, que contiene las configuraciones necesarias para el contenedor de Node.js, y un archivo .env para gestionar variables de entorno. El archivo compose.yml facilita la orquestación de múltiples contenedores si es necesario.

### Propósito

El propósito principal de este proyecto es proporcionar a los desarrolladores un punto de partida sólido para crear aplicaciones Node.js independientes de frameworks. Esto permite una mayor flexibilidad y personalización en el desarrollo. Además, al utilizar contenedores Docker, se asegura que las aplicaciones sean portables y se ejecuten de manera coherente en diferentes entornos.

Este entorno de desarrollo minimiza la configuración inicial, lo que acelera el proceso de inicio de proyectos Node.js. Al incluir una guía clara en formato markdown en el readme.md, garantizamos que cualquier desarrollador pueda ponerse en marcha rápidamente.

## Requisitos

- Docker => Descargalo y instalalo en:
<https://www.docker.com/>
- Visual Studio Code => Descargalo y instalalo en:
<https://code.visualstudio.com/>
- Remote Development for visual studio
<https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack>

## Configuración

### .env

Asegúrate de crear un archivo `.env` en la raíz del proyecto con las siguientes variables de entorno:

``` make
NODE_ENV=production
PORT=80
```

### Recipiente o Contenedor de la Aplicación

Si deseas ejecutar la aplicación en un contenedor Docker, asegúrate de tener Docker instalado. Puedes usar el siguiente comando para construir y ejecutar el contenedor:

```bash
docker build -t nombre_del_contenedor .
docker run -d -p 3000:3000 nombre_del_contenedor
```

## Instalación

### Clona este repositorio en tu máquina local

```bash
git clone <URL_DEL_REPOSITORIO>
```

## Desarrollar

1. Abra la carpeta actual con visual studio
2. Abra terminal y ejecute:

    ```bash
    docker compose up -d --build
    ```

3. Presione ctrl+shift+p y escriba Adjuntar y eliga la unica opción y después angular
4. En un breve momento le abrira el contenedor y le aparecera en la parte inferior izquierda Contenedor angular:latest imaginese que esta conectado a un servidor con node y angular instalado.
5. Ahora abra la carpeta /program/app donde esta el proyecto de angular para ello puede hacer clic en Archivo=>Abrir carpeta o ir a explorador de archivos y dar click en abrir carpeta
6. Instale las extensiones que le recomienda el entorno
7. Haga clic en terminal ver terminal y le abrira un terminal conectada a su contenedor con linux alpine y angular ya ejecutandose

La razón de desarrollar así esta aquí:

<https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers>

Es importante destacar que se deja el proyecto Angular en su forma pura, evitando la incorporación de cualquier modificación a la plantilla original de Angular. Esto se hace con el objetivo de lograr la máxima estandarización y limpieza en el proyecto.

Se ha añadido la ubicación adecuada en el archivo 'compose.yml' y en el 'Containerfile' para evitar que 'node_modules' y otros archivos innecesarios de Angular ocupen espacio en nuestro equipo.

Esto resulta en un ahorro significativo de tiempo, ya que no necesitamos lidiar con las instalaciones de Node.js en nuestra máquina local ni con las carpetas innecesarias como 'node_modules'. Esto garantiza que nuestro proyecto siempre tenga un tamaño inferior a 100 KB 😉 y no consuma 600 MB en nuestra carpeta de proyecto. Además, podemos mantener las mismas versiones de Angular y asegurar que funcione perfectamente en cualquier entorno

## Apagar

```bash
docker compose down
```

## Apagar y quitar imagenes de recipientes de apps de node

```bash
docker compose down --rmi all
```

## Reiniciar

### En PowerShell

```powershell
docker compose down --rmi all; docker compose up -d
```

### CMD y Linux

```bash
docker compose down --rmi all && docker compose up -d
```

## Borrar código y instalar angular

Revisa en el presente documento el apartado de Descargo de Responsabilidad por Uso del Repositorio

Antes de realizar cualquier modificación en tu código, asegúrate de crear una copia de seguridad para prevenir posibles accidentes o pérdida de datos.

PowerShell

``` powershell
docker compose down --rmi all
cd program
Remove-Item -Recurse -Force -Verbose .\app
echo 'Y'|ng new app --routing=true --style=scss
cd app
Remove-Item -Recurse -Force -Verbose .\node_modules
docker compose up -d
```

Terminal De Linux

``` bash
docker compose down --rmi all
cd program
rm -vfr app
echo 'Y'|ng new app --routing=true --style=scss
cd app
rm -vfr node_modules
docker compose up -d
```

## Contribución

Puedes ayudar cuando quieras hacer solicitudes de mejora que no creo ;) pero si la hay manos a la obra.

## Licencia

Este proyecto está bajo la Licencia. Consulta el archivo LICENSE.md o al desarrollador para obtener más detalles.

## Contacto

Si tienes alguna pregunta o comentario, puedes ponerte en contacto conmigo en <andresgarcia0313@gmail.com>

---

## Descargo de Responsabilidad por Uso del Repositorio

Este repositorio y su contenido son proporcionados "tal como están" y "según disponibilidad". Al acceder y utilizar este repositorio, aceptas y comprendes que:

1. **Uso Bajo Tu Propio Riesgo**: Tú eres completamente responsable del uso que hagas de los archivos, código fuente, documentación y recursos disponibles en este repositorio. No asumimos ninguna responsabilidad por cualquier pérdida, daño, o problemas que puedas experimentar como resultado de su uso.

2. **No Garantía de Exactitud**: Aunque hemos hecho esfuerzos razonables para proporcionar información precisa y actualizada, no garantizamos la exactitud o integridad de ningún contenido en este repositorio. La información puede estar desactualizada o contener errores.

3. **Cambios en el Contenido**: Nos reservamos el derecho de modificar, actualizar o eliminar cualquier contenido de este repositorio en cualquier momento sin previo aviso.

4. **No Responsabilidad Legal**: Este repositorio no pretende proporcionar asesoramiento legal, financiero, médico u otro tipo de asesoramiento profesional. Cualquier decisión basada en la información proporcionada aquí es responsabilidad tuya.

5. **Enlaces Externos**: Este repositorio puede contener enlaces a recursos externos o sitios web de terceros. No tenemos control sobre el contenido o la disponibilidad de estos enlaces, y no asumimos ninguna responsabilidad por ellos.

6. **Licencia de Uso**: Algunos archivos y recursos en este repositorio pueden estar sujetos a licencias específicas. Asegúrate de cumplir con los términos de uso y licencia de cualquier recurso que descargues o utilices desde aquí.

7. **Limitación de Responsabilidad**: En ningún caso seremos responsables ante ti o cualquier tercero por daños directos, indirectos, incidentales, especiales, consecuentes o ejemplares, incluidos, entre otros, daños por pérdida de beneficios, pérdida de datos o interrupción del negocio, que resulten de tu uso o incapacidad para usar este repositorio o su contenido.

8. **Derechos de Autor y Propiedad Intelectual**: Todos los derechos de autor y otros derechos de propiedad intelectual sobre el contenido de este repositorio pertenecen a sus respectivos propietarios. No tienes derecho a utilizar este contenido de una manera que viole estos derechos.

Al utilizar este repositorio, aceptas y reconoces estos términos y condiciones. Si no estás de acuerdo con ellos, te recomendamos que no utilices este repositorio ni su contenido.

Este descargo de responsabilidad está sujeto a cambios sin previo aviso. Te recomendamos revisarlo periódicamente para estar al tanto de cualquier actualización.

