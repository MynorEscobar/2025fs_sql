/*1) Mostrar todos los datos de los ciudadanos que nacieron en el mes de mayo*/
SELECT 
	* 
FROM 
	ciudadanos 
WHERE 
	month(fechanac)=5;


/*2) mostrar dpi, nombre, apellido y email de las personas con nombre Hamilton sin importar
si es primer o segundo nombre
*/
SELECT
	dpi,
	nombre,
	apellido,
	email
FROM 
	ciudadanos
WHERE
	nombre LIKE "%hamilton%";
	
/*3) Mostrar dpi, nombre completo (apellido, nombre) y telefono movil
de los ciudadanos que tiene el codigo de municipio 101
*/
SELECT 
	dpi,
	CONCAT(apellido,", ", nombre) AS nombre_completo,
	tel_movil
FROM 
	ciudadanos
WHERE 
	cod_muni=101;

/*4) obtener todos los ciudadanos que nacieron antes del año 2000 
en el mes de octubre cuyo apellido inicia h*/
SELECT *
FROM 
	ciudadanos
WHERE
	YEAR(fechanac)<2000
and
	MONTH(fechanac)=10
AND
	apellido LIKE "h%";	
	

/*
	ver todas las regiones existentes
*/
SELECT *
FROM 
	regiones;

/* Agregar una nueva región, los datos son los sigiente:
	* codigo = 10
	* nombre = Región X
	* descripcion = región de prueba*/
INSERT INTO regiones(
	cod_region,
	nombre,
	descripcion)
VALUES (
	11,
	"Región XI",
	"Región de prueba");
/*cambiar la descripción de la región 13 la cual debe ser
	Región XIII
 */
UPDATE regiones
SET
 	descripcion ="Región XIII"
WHERE
	cod_region=9;
	
/*cambiar el telefono movil y telefono de casa 
del ciudadano con dpi 1007928191909
telefono movil = 44556677
telefono casa  = 22334455
*/
UPDATE 
	ciudadanos
SET 
	tel_movil=44556677,
	tel_casa=22334455
WHERE
	dpi=1007928191909;

/*mostrar los datos del ciudadano con DPI 1007928191909*/
SELECT *
FROM ciudadanos
WHERE dpi=1007928191909;

/*mostrar todos los departamentos*/
SELECT * FROM departamentos;

/*AGREGAR UN NUEVO DEPARTAMENTO
	Codigo = 25
	nombre = Departamento 25
	cod_region =15
*/
INSERT INTO departamentos(
	cod_depto,
	nombre_depto,
	cod_region)
VALUES(
	25,
	"Departamento 25",
	9
);
/*listar todas las regiones*/
SELECT * FROM regiones;

/*agregar un nuevo ciudadano invente los datos*/
INSERT INTO ciudadanos(
	dpi,apellido,nombre,direccion,
	tel_casa,tel_movil,email,fechanac,
	cod_nivel_acad,cod_muni,contra)
VALUES(
	1234123450102,"Inventado","Soyel","Zona 5",
	22223333,66776677,"inventado@mail.com","2000/05/13",
	4,101,MD5("123456"));
);
/*MD5 ES UN ALGORITMO PARA CIFRAR DATOS -HOY EN DIA YA NO ES
TAN RECOMENDABLE PERO PEOR ES NADA-*/

/*mostrar todos los ciudadanos*/
SELECT * FROM CIUDADANOS;
/*DELETE*/

/*seleccionar todos los ciudadanos con x email*/
SELECT * FROM ciudadanos WHERE EMAIL="inventado@mail.com";

/*modificar nombre, apellido y fecha de nacimiento de un ciudadano*/
UPDATE ciudadanos
SET
	nombre="Fulanito",
	apellido="de Tal",
	fechanac="2003/01/01"
WHERE
	dpi=1234123450102;

/*mostrar los dato de los ciudadanos con dpi=1234123450102 , 
dpi=1234123450101 */
SELECT * 
FROM 
	ciudadanos 
WHERE 
	dpi=1234123450102 
	OR 
	dpi=1234123450101;

/*
	DELETE: consultas de eliminación
*/
/*Eliminar los ciudadanos con dpi 1007928191909 o 1234123450102 */
DELETE 
FROM ciudadanos
WHERE dpi=1007928191909 or dpi=1234123450102;

/*mostrar todos los ciudadanos*/
SELECT * FROM ciudadanos;

/*eliminar ciudadanos*/
DELETE 
FROM ciudadanos
WHERE 
	(dpi=1007928191909 OR dpi=1008136551007) 
AND 
	fechanac="1984/04/11";
	
/*eliminar todas las regiones*/	
DELETE FROM regiones;


/*eliminar el telefono movil del ciudadano con dpi 1008136551007*/
UPDATE ciudadanos
SET 
	tel_movil=null
WHERE
	dpi=1008136551007;


/*eliminar base de datos*/
DROP DATABASE fs2025_ciudadanos;












