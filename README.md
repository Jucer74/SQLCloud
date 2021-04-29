# SQLCloud
El objetivo de este repositorio es mostrar como crear y usar una base de datos de tipo SQL Server en Azure

# Requisitos
Tener una cuenta en Azure e ingresar al portal

# Pasos
Inicialmente vamos a crear  configurar la base de datos en el portal de Azure

## Paso 1 - Grupo de recursos
* Escoja la opción grupo de recursos (**Resource Group**)  y seleccione la opción de crear (**Create**)

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-Resource-01.png)

* Asigne el nombre y seleccione la region

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-Resource-02.png)

> - **Resource group**: sqlcloud-rg
> - **Region**:	(US) Central US

* Asigne las etiquetas (TAGs) que quiera adicionar al recurso

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-Resource-03.png)

> - **Name**	:	Project
> - **Value**	:	SQLCloud

*  Seleccione la opción de crear (**Create**)

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-Resource-04.png)

## Paso 2 - SQL Server
* Realice la busqueda del tipo de recursos **SQL Servers** y seleccione esta opción

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-02-Create-SQL-Server-01.png)

* Seleccione la crear un nuevo servidor (**+ New**)

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-02-Create-SQL-Server-02.png)

* Seleccione el grupo de recursos creado anteriormente (**sqlcloud-rg**)

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-02-Create-SQL-Server-03.png)

* Asigne el nombre del servidor y seleccion su región o localización

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-02-Create-SQL-Server-04.png)

* Asigne el nombre del usuario administrador y su clave

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-02-Create-SQL-Server-05.png)

> - **Server admin Login**	:	sqlclouduser
> - **Password**				:	SQLCl0udUs3r
> - **Confirm pasword**		:	SQLCl0udUs3r

* En la sección de Networking active la reglas de firewall

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-02-Create-SQL-Server-06.png)

* En la sección de cnfiguración adicional deje los valores por defecto

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-02-Create-SQL-Server-07.png)

* Asigne las etiquetas (TAGs) que quiera asignar al recurso

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-02-Create-SQL-Server-08.png)

> - **Name**	:	Project 
> - **Value**	:	SQLCloud

* Seleccione la opción de crear y al final vaya al recurso creado

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-02-Create-SQL-Server-09.png)

## Paso 3 - SQL Database
* Realice la busqueda del tipo de recursos **SQL Servers** y seleccione esta opción

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-01.png)

* Seleccione crear una nueva SQL database (**+ New**) 
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-02.png)

* Confirme el resource group (**sqlcloud-rg**)
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-03.png)

* Asigne el nombre y seleccione el servidor de SQL creado anteriormente
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-04.png)

> - **Database name** :	sqlclouddatabase
> - **Server** 		:	sqlcloud-sqlserver

* Seleccione la opción para configurar la base de datos
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-05.png)

* Cambie el Tipo a la opcion **Basic** con la configuración por defecto y aplique los cambios
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-06.png)

* Verifique que la configuración fue efectiva
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-07.png)

* En la sección de networking deje los valores por defecto
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-08.png)

* Para la sección de security deje los valores por defecto
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-09.png)

* Para la sección de configuración adicional deje los valores por defecto
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-10.png)

* Adicione las etiquetas que quiera al recurso
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-11.png)

* En la Opción final verifique la configuración y cree el recurso
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-12.png)

* En la configuración de la base de datos copie el nombre de la base de datos y luego Seleccione la opción de ver la cadena de conexión
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-13.png)

> - **Server name**: sqlcloud-sqlserver.database.windows.net

* Copie el contenido de la cadena de conexión para poder adicionar la clave del usuario administrador
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-14.png)

> - Connection String:

```
Server=tcp:sqlcloud-sqlserver.database.windows.net,1433;Initial Catalog=sqlclouddatabase;Persist Security Info=False;User ID=sqlclouduser;Password={your_password};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;
```
* Modifique la cadena de conexión y reemplace el password por el asignado al usuario administrador.
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-03-Create-SQL-Database-15.png)

```
Server=tcp:sqlcloud-sqlserver.database.windows.net,1433;Initial Catalog=sqlclouddatabase;Persist Security Info=False;User ID=sqlclouduser;Password=SQLCl0udUs3r;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;
```

## Paso 4 - Conectar la base de datos
* Seleccione el servidor de SQL
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-04-Connect-Database-01.png)

* Seleccione la opción de activar administrador de Directorio y escoja la opción de asignar el administrador
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-04-Connect-Database-02.png)

* Seleccione el usuario administrador administrador del dominio
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-04-Connect-Database-03.png)

* Guarde los datos
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-04-Connect-Database-04.png)

* en una session de SQL Server Management Studio, use los valores de nombre de servidor, tipo de autenticacion y el usuario administrador de dominio para conectarse a la base de datos.
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-04-Connect-Database-05.png)

> - **Server name**: tcp:sqlcloud-sqlserver.database.windows.net
> - **Authentication** : Azure Active Directory- Universal With MFA
> - **User name** : <Usuarioadministrador de dominio>

* Ingrese a Azure usando del Administrador de dominio y acepte los valores por defecto para la regla del Firewall
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-04-Connect-Database-06.png)

* Verifique que la conexión fue efectiva desplegando el contenido del servidor y de la base de datos
![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-04-Connect-Database-07.png)

## Paso 5 - Code First Project
En este punto vamos utilizar el projecto SQLCloud que es encuentra como version Inicial para realizar los pasos necesarios para incluir este llamado en el proyecto.

### Contexto
La solución tiene tres (3) pojectos:

1. **WebAPI**: Web Api y projecto principal de la solucion
2. **Domain**: Dominio de la solucion y donde se encuantran los Modelos
3. **Infrastructure**: Proyecto que define el Contexto de base de atos y donde se configura el uso del EF (Entity Framework) para consumir los datos de la base de datos.
4. 