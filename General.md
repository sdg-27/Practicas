
#### Instalación del ordenador.
Se nos asigna un equipo, el cual no trae SSD. Instalamos esa SSD y procedemos a instalar ubuntu mediante una unidad USB. Una vez instalado el sistema operativo, Ubuntu 25.10, configuramos el usuario añadiendo un nombre de usuario y al ordenador. Por último, se añade una contraseña y se reinicia el equipo para aplicar los cambios y comprobar que la configuración se ha guardado.

#### Instalación de archivos.

Primero se hace un sudo apt update, para actualizar los repositorios del equipo. Cuando ya están actualizados, se hace un sudo apt install de lo que quieras instalar. En micaso, instalé LibreOffice para trabajar con documentos de texto y usar docs y pdfs.

#### Reducción de tamaño de archivos.

 Mediante el comando **gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=salida.pdf entrada.pdf**, usado en la terminal, se prueba la cantidad de tamaño que se libera para ver si merece la pena cambiar el archivo original por el nuevo de menor tamaño. Esto lo realizó Javier en su equipo a modo de explicación.

#### Cambio de formato de la documentación.

El documento A4_epis.docx pasa a ser un pdf rellenable haciendo uso de LibreOffice. El documento se renombra a A4_EPIS.pdf. Se adjunta tanto la versión original como la versión final en formato pdf y la versión editada en formato .odt.

#### Virtualización 

Mediante el uso de una página para compartir pantalla, Javier nos fue mostrando cómo crear una nueva partición usando **LVM** en máquinas virtuales. Con esto lo que se busca es mejorar el rendimiento del sistema al pasar de un disco en forma de fichero a uno en forma de bloque. Para esto, se paran los servicios, después se pasa la información del disco al nuevo creado haciendo uso de **Robocopy**, herramienta que copia carpetas enteras pero evitando duplicados, ya que solo copia la información que no se encuentra en lugar de destino. Cuando ya se ha copiado la información, se reinicia el ordenador y se borra el disco antiguo. Tras esto, se aprecia una mejoría en rendimiento además de el aumento de espacio en el disco establecido a la hora de hacer la partición. 

#### Página web + Bases de Datos.

Miguel nos enseña como conectan una página con una base de datos. Se usa para crear eventos en los que se añaden datos como el nombre de quien hace el evento o el lugar en el que tienen lugar. Además, se muestra cómo insertar esos datos dentro de la página desde la terminal o desde una versión de SQL. 

#### Revisión de estructurado y etiquetado del CPD.

Javier nos muestra como se debe de etiquetar el cableado de un CPD, apuntando la fecha, la interfaz que usa, y la potencia de la velocidad de conexión. También nos muestra la instalación de nuevos cables que permiten tener más ancho de banda, ajustando su rendimiento al del resto del CPD.

#### Reseteo de PC.

Junto a Luis, desmonto un PC y le quito la SSD para poder pasar la información a un disco externo. En el PC, se resetea y inicia con una unidad USB, la cual contiene el sistema operativo de Windows. Usamos f12 para entrar en la BIOS y seleccionar esa unidad de arranque. Cuando ya estamos dentro de la configuración, borramos todos las particiones y dejamos solo el disco duro original. Se añade el usuario y la contraseña para continuar. No se añade clave porque se añadirá más tarde, se dice que no a todo lo que nos pregunta Windows y proseguimos con la instalación. Una vez ha finalizado la instalación, se termina de configurar el ordenador mediante un USB que contiene un antivirus específico del organismo del CSIC. Por último, se instalan las aplicaciones necesarias como Firefox o VLC.

#### Continuacion de reseteo de ordenador.

Cuando ya se han instalado las aplicaciones, abrimos TightVNC. Esta aplicacion sirve para permitir el acceso remoto a tu equipo. En ella, hay que agregar las direcciones IP válidas y las que no vamos a usar. Cuando ya está hecho, se instala Office para que el usuario tenga un mínimo de aplicaciones básicas. Además, instalamos aplicaciones como Adobe y Autofirma, necesarias a la hora de usar el equipo. Una vez instalado eso, añadimos una impresora mediante nombre, ya que se encuentra en el mismo dominio que el equipo, por lo que no hace falta añadir una IP. También se le añade el código de la persona que la va a usar para mantener un registro de las veces que lo utiliza.

#### Configuración de reunion online.

Gracias a guacamole, una página suya que sirve para conectarse de manera remota a ordenadores de la misma red como si fuera SSH, se puede configurar todo desde el mismo ordenador. Primero se crea la sesión desde el ordenador del administrador, cuando ya está creada, se accede a los ordenadores de donde va a tener lugar la conferencia para poder configurar las pantallas y lo que se va a stremear desde esos equipos. Por último se configura la cámara instalada al fondo de la sala para poder retransmitir la reunión. Para que esto funcione, los ordenadores remotos han de tener WoL, que es un sistema que enciende el ordendador de forma remota al detectar que la otra parte del remoto quiere acceder a él.


#### Continuacion de reseteo de ordenador.

Cuando ya se han instalado las aplicaciones, abrimos TightVNC. Esta aplicacion sirve para permitir el acceso remoto a tu equipo. En ella, hay que agregar las direcciones IP válidas y las que no vamos a usar. Cuando ya está hecho, se instala Office para que el usuario tenga un mínimo de aplicaciones básicas. Además, instalamos aplicaciones como Adobe y Autofirma, necesarias a la hora de usar el equipo. Una vez instalado eso, añadimos una impresora mediante nombre, ya que se encuentra en el mismo dominio que el equipo, por lo que no hace falta añadir una IP. También se le añade el código de la persona que la va a usar para mantener un registro de las veces que lo utiliza.

#### Configuración de reunion online.

Gracias a guacamole, una página suya que sirve para conectarse de manera remota a ordenadores de la misma red como si fuera SSH, se puede configurar todo desde el mismo ordenador. Primero se crea la sesión desde el ordenador del administrador, cuando ya está creada, se accede a los ordenadores de donde va a tener lugar la conferencia para poder configurar las pantallas y lo que se va a stremear desde esos equipos. Por último se configura la cámara instalada al fondo de la sala para poder retransmitir la reunión. Para que esto funcione, los ordenadores remotos han de tener WoL, que es un sistema que enciende el ordendador de forma remota al detectar que la otra parte del remoto quiere acceder a él.

### Problema con PC

El equipo no enciende o se queda mucho tiempo cargando. Mediante remoto no conseguimos nada por lo que vamos al lugar donde se encuentra el equipo para poder usar el modo seguro. Cuando se inicia el equipo en modo seguro, entra sin ningún tipo de problema, después se prueba de manera normal y también entra, por lo que no se llega a ninguna conclusión firme de que puede ser la causa pero ya funciona con normalidad.

### Recuperacion de datos

Se usa imap, apartado de la página backuppc, donde se guardan copias de seguridad incrementales diarias. En la página se guarda toda la informacion de cada usuario, en este caso se busca recuperar el correo, por lo que se accede al perfil del usuario para recuperar su correo. Se selecciona lo que se quiere devolver y se aplica. Por último, solo falta activar de nuevo las carpetas en la parte del usuario.

### Configuración de PC Mac

Primero se desempaqueta el equipo y se monta. A continuación, se configura el perfil de administrador, y después el del usuario pero con permisos de administrador, ya que Mac da muchos problemas con eso. Después, se da de alta al equipo en la red para poder tener conexión a internet y se guardan los datos del equipo. Después se instalan las aplicaciones que quiere el usuario. En el proceso, aparece un error con java, el cual se soluciona instalando bash mediante un comando en la terminal del dispositivo. Usamos bash ya que nos permite instalar otro instalador apto para descargar java. 

### Continuación configuración de PC Mac

Cuando ya hemos instalado java, probamos a instalar las aplicaciones que dieron error. Ambas se instalan pero una de ellas no se abre. Se prueba otra versión disponible y es ahí cuando se instala. Después, se busca una opción para instalar iweb, la cual no va en este equipo ya que es nuevo y no es compatible. Se escoge Silex ya que es opensource. Se busca su forma de instalar y se lleva a cabo la misma. Se comprueba que funciona y abre bien para dejarlo listo. Por último se instala CorelDRAW ya que es lo que requiere el usuario. Para finalizar, se comprueba que todas las aplicaciones abren sin problema.

### Configuración de PC Mac #2

Para este ordenador se hace lo mismo que para el anterior, salvo que a este se instala lo primero de todo el java por terminal para que no de ningún error después. A este equipo, se le añade una aplicación extra a petición del usuario.

### Entrega de los equipos MAC.

Se llevan los equipos a sus usuarios y se montan. Además, se explican las aplicaciones nuevas instaladas y las funcionalidades del sistema.

### Página de gestión de personas, proyectos y demás.

Se usa para tener almacenados los datos de todos los usuarios del centro, desde los años que llevan hasta la cantidad y el tipo de los contratos y duración de los mismos. También se usa para ver todos los proyectos y en qué laboratorio se lleva a cabo. Además, se hace uso de una página que intercontecta la base de datos para pode realizar cambios puntuales en la información de un equipo.

### Incidencia actualización Windows.

Se acude al laboratorio donde se solicita la ayuda del técnico. Una vez allí, nos explican que su W10 requiere una actualización pero no se lleva a cabo la misma. Tras ver que puede suceder, se llega a la conclusión de que el equipo ya es viejo y no acepta más actualizaciones.

### Configuración de acceso remoto.

Primero se sigue la página donde explica cómo proceder. Al ir siguiendo los pasos da error ya que en mi caso, no me abre el puerto que sale en la página y los comandos fallan ya que están hechos para un puerto específico, por lo que se cambian los comandos para adaptarlos a mi caso. Cuando ya funicona vncserver, se configura desde la parte del administrador para poder dar acceso a mi MAC e IP desde cualquier otro dispositivo en el que yo esté autorizado. Se prueba que funciona correctamente, para lo que hace falta irse a la página de guacamole y autenticarse. Cuando ya funciona, se da por terminado.

### Resolución de incidencia de usuario.

Al usuario no le funciona el permiso de administrador, por lo que se va a su oficina y se comprueba que puede pasar. El problema es que el usuario no estaba puesto como administrador, lo que se soluciona estableciéndole como administrador usando la cuenta de informática.

### Publicaciones científicas.

Primero se accede al apartado donde se muestran los artículos nuevos de investigaciones. Después, se accede a cada uno de ellos para ver si alguno de los participantes es miembro del centro o no. En el caso que haya alguno, se etiqueta como publicación del centro, sino simplemente se publica sin marcar nada.

### Conexión al servidor

Siguiendo el vídeo de Javi, surge un error ya que la versión que él usa es más antigua, por lo que en la interfaz no me sale lo mismo que a él. Para solucionar, instalo nautilus para poder buscar mejor dentro de la carpeta. Al no salir en carpeta, se busca con la ruta para acceder directamente aunque no salga que esté en el sistema. Cuando le doy a enter, me pide usuario y contraseña, y al ponerlo ya estoy dentro.
