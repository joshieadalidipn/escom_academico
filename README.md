# ESCOM Académico

Este sistema es una herramienta de gestión académica para la Escuela Superior de Cómputo (ESCOM). Permite a los profesores seleccionar las materias que desean impartir, así como las actividades que realizarán durante el semestre.
## Características
*    Los profesores pueden seleccionar de 1 a 4 materias para impartir durante el semestre.
*    Los profesores deben seleccionar dos actividades de descarga obligatorias: 'Preparación de clases' y 'Atención a alumnos'.
*    Los profesores pueden seleccionar hasta tres actividades de descarga adicionales y definir las horas dedicadas a cada una (no puede exceder un total de 22 horas).
*    Se incluye una gestión de acceso individual para cada profesor, garantizando la seguridad y la privacidad de la información.
*    Los administradores pueden gestionar los datos de los profesores, consultar listados de profesores, obtener comprobantes y resetear las encuestas de los profesores.

## Tecnologías utilizadas

*    MySQL
*    PHP
*    HTML, CSS, JS

## Instalación
*    Clona este repositorio en tu servidor local.
*    Configura el archivo de conexión a la base de datos con tus detalles del servidor MySQL.
*    Importa el script de la base de datos escom_academico.sql a tu servidor MySQL.
*    Accede a index.php en tu servidor local para comenzar a utilizar el sistema.

# Para el equipo de desarrollo
Esta es una sugerencia sobre la estructura de los archivos.

├── README.md: Este archivo, contiene información sobre el proyecto y cómo utilizarlo.

├── .gitignore: Lista los archivos y carpetas que Git debería ignorar.

├── assets/: Contiene archivos estáticos como CSS, JavaScript y imágenes.

│ ├── css/: Contiene archivos de hojas de estilo.

│ ├── js/: Contiene archivos de scripts de JavaScript.

│ └── img/: Contiene imágenes.

├── includes/: Contiene scripts PHP que se incluyen en otros archivos.

│ ├── config.php: Maneja la configuración del proyecto.

│ ├── database.php: Maneja la conexión a la base de datos.

│ └── functions.php: Contiene funciones útiles que se utilizan en todo el proyecto.

├── modules/: Contiene diferentes módulos de la aplicación.

│ ├── profesor/: Módulo para manejar operaciones relacionadas con profesores.

│ │ ├── index.php: Muestra una lista de profesores.

│ │ ├── create.php: Permite crear un nuevo profesor.

│ │ ├── update.php: Permite modificar la información de un profesor.

│ │ └── delete.php: Permite eliminar un profesor.

│ └── materia/: Módulo para manejar operaciones relacionadas con las materias.

│ ├── index.php: Muestra una lista de materias.

│ ├── create.php: Permite crear una nueva materia.

│ ├── update.php: Permite modificar la información de una materia.

│ └── delete.php: Permite eliminar una materia.

├── dashboard.php: La página principal del dashboard después de iniciar sesión.

└── index.php: La página principal de la aplicación, podría contener el formulario de inicio de sesión o una página de bienvenida.

# Contribución

Las contribuciones son bienvenidas. Siéntete libre de abrir un issue o hacer un pull request.
Licencia

Este proyecto está bajo la licencia MIT.
