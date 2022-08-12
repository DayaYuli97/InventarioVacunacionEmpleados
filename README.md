# DemokrugerWeb
## Inventario Vacunacion Empleados
El proyecto se desarrollo en el leguaje Java en su version 8 y con el framework Springo boot en su version 2.5.0, se contruyo el proyecto con Gradle
## Persistencia de Datos
En este caso se utilizó el gestor de base de datos PostgreSQL, el archivo de base de datos esta en este directorio /database/dbvaccine.sql
Para configurar la conexión a la base de datos se debe modificar el archivo aplication.properties dentro de los recursos del aplicativo, se debera verificar el nombre de la base de datos con la que se establece la conexión.
## Descripciones del Proyecto
* El proyecto se levantara en el puerto 8080
* No tiene seguridades para poder acceder a los webs services.
* La estrucutura consta de entidades, interfaces(Servicio, Repositorio), Repositorios, Servicios, Controladores y entidades VO.
* Dentro de entidades constan las clases para la relación con las tablas de la base de datos.
* Dentro de Interfaces se encuentra la definción de los métodos que se utiliza dentro del aplicativo.
* Los Repositorios se encargan de gestionar las operaciones persistentes dentro de la base de datos.
* Los Servicios se encargan de la conexión con los repositorios del manejo de datos.
* Los controladores exponene los web service.
* Las entidades VO, con las que interactua los web service.
##Documentación
Para la documentación de apis se uso swagger2 al cual se puede acceder de manera local mediante el url http://localhost:8081/pkServices/swagger-ui.html


