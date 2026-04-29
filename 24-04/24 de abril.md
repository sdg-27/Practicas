#### 1. Continuacion de reseteo de ordenador.

Cuando ya se han instalado las aplicaciones, abrimos TightVNC. Esta aplicacion sirve para permitir el acceso remoto a tu equipo. En ella, hay que agregar las direcciones IP válidas y las que no vamos a usar. Cuando ya está hecho, se instala Office para que el usuario tenga un mínimo de aplicaciones básicas. Además, instalamos aplicaciones como Adobe y Autofirma, necesarias a la hora de usar el equipo. Una vez instalado eso, añadimos una impresora mediante nombre, ya que se encuentra en el mismo dominio que el equipo, por lo que no hace falta añadir una IP. También se le añade el código de la persona que la va a usar para mantener un registro de las veces que lo utiliza.

#### 2. Configuración de reunion online.

Gracias a guacamole, una página suya que sirve para conectarse de manera remota a ordenadores de la misma red como si fuera SSH, se puede configurar todo desde el mismo ordenador. Primero se crea la sesión desde el ordenador del administrador, cuando ya está creada, se accede a los ordenadores de donde va a tener lugar la conferencia para poder configurar las pantallas y lo que se va a stremear desde esos equipos. Por último se configura la cámara instalada al fondo de la sala para poder retransmitir la reunión. Para que esto funcione, los ordenadores remotos han de tener WoL, que es un sistema que enciende el ordendador de forma remota al detectar que la otra parte del remoto quiere acceder a él.


