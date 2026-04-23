
#### 1. Instalación del ordenador.
Se nos asigna un equipo, el cual no trae SSD. Instalamos esa SSD y procedemos a instalar ubuntu mediante una unidad USB. Una vez instalado el sistema operativo, Ubuntu 25.10, configuramos el usuario añadiendo un nombre de usuario y al ordenador. Por último, se añade una contraseña y se reinicia el equipo para aplicar los cambios y comprobar que la configuración se ha guardado.

#### 2. Instalación de archivos.

Primero se hace un sudo apt update, para actualizar los repositorios del equipo. Cuando ya están actualizados, se hace un sudo apt install de lo que quieras instalar. En micaso, instalé LibreOffice para trabajar con documentos de texto y usar docs y pdfs.

#### 3. Reducción de tamaño de archivos.

 Mediante el comando **gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=salida.pdf entrada.pdf**, usado en la terminal, se prueba la cantidad de tamaño que se libera para ver si merece la pena cambiar el archivo original por el nuevo de menor tamaño. Esto lo realizó Javier en su equipo a modo de explicación.

#### 4.  Cambio de formato de la documentación.

El documento A4_epis.docx pasa a ser un pdf rellenable haciendo uso de LibreOffice. El documento se renombra a A4_EPIS.pdf. Se adjunta tanto la versión original como la versión final en formato pdf y la versión editada en formato .odt.

#### 5. Virtualización 

Mediante el uso de una página para compartir pantalla, Javier nos fue mostrando cómo crear una nueva partición usando **LVM** en máquinas virtuales. Con esto lo que se busca es mejorar el rendimiento del sistema al pasar de un disco en forma de fichero a uno en forma de bloque. Para esto, se paran los servicios, después se pasa la información del disco al nuevo creado haciendo uso de **Robocopy**, herramienta que copia carpetas enteras pero evitando duplicados, ya que solo copia la información que no se encuentra en lugar de destino. Cuando ya se ha copiado la información, se reinicia el ordenador y se borra el disco antiguo. Tras esto, se aprecia una mejoría en rendimiento además de el aumento de espacio en el disco establecido a la hora de hacer la partición. 
