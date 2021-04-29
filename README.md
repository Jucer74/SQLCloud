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

	* **Resource group**	: 	sqlcloud-rg
	* **Region**			:	(US) Central US


* Asigne las etiquetas (TAGs) que quiera adicionar al recurso

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-Resource-03.png)

	* **Name**	:	Project 
	* **Value**	:	SQLCloud

*  Seleccione la opción de crear (**Create**)

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-Resource-04.png)

## Paso 2 - SQL Server
* Realice la busqueda del tipo de recursos **SQL Servers** y seleccione esta opción

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-SQL-Server-01.png)

* Seleccione la crear un nuevo servidor (**+ New**)

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-SQL-Server-02.png)

* Seleccione el grupo de recursos creado anteriormente (**sqlcloud-rg**)

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-SQL-Server-03.png)

* Asigne el nombre del servidor y seleccion su región o localización

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-SQL-Server-04.png)

* Asigne el nombre del usuario administrador y su clave

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-SQL-Server-05.png)

	* **Server admin Login**	:	sqlclouduser
	* **Password**				:	SQLCl0udUs3r
	* **Confirm pasword**		:	SQLCl0udUs3r

* En la sección de Networking active la reglas de firewall

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-SQL-Server-06.png)

* En la sección de cnfiguración adicional deje los valores por defecto

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-SQL-Server-07.png)

* Asigne las etiquetas (TAGs) que quiera asignar al recurso

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-SQL-Server-08.png)

	* **Name**	:	Project 
	* **Value**	:	SQLCloud

* Seleccione la opción de crear y al final vaya al recurso creado

![](https://github.com/Jucer74/SQLCloud/blob/main/Images/Step-01-Create-SQL-Server-09.png)

