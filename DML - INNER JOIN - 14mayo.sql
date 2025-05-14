/*Union de tablas
INNER JOIN

Un INNER JOIN en SQL combina registros de dos tablas basándose 
en una condición de igualdad entre sus columnas. 
Solo devuelve las filas que tienen coincidencias en ambas 
tablas, es decir, donde los valores en las columnas de 
comparación son iguales. 

SELECT
	nombreTabla.nombre_campo,
	nombreTabla.nombre_campo
	...
	nombreTabla.nombre_campo
FROM
	nombreaTabla1 INNER JOINT nombreTabla2
	on nombreTabla1.llavePrimaria = nombreTabla2.llaveForanea
	INNER JOIN nombreTabla3
	on nombreTabla2.llavePrimaria = nombreTabla3.llaveForanea
WHERE
	Condicion(es);
*/

/*listar los datos de los ciudadanos del departamento de guatemal*/
SELECT 
	ciudadanos.dpi,
	ciudadanos.apellido,
	ciudadanos.nombre,
	departamentos.nombre_depto,
	municipios.nombre_municipio
FROM
	departamentos INNER JOIN municipios
	ON departamentos.cod_depto = municipios.cod_depto
	INNER JOIN ciudadanos
	ON municipios.cod_muni = ciudadanos.cod_muni
WHERE
	departamentos.nombre_depto="Guatemala";
	
/*SOLUCIÓN 2: INICIANDO CON LA TABLA CIUDADANOS*/
SELECT 
	ciudadanos.dpi,
	ciudadanos.apellido,
	ciudadanos.nombre,
	departamentos.nombre_depto,
	municipios.nombre_municipio
FROM
	ciudadanos INNER JOIN municipios
	ON municipios.cod_muni = ciudadanos.cod_muni
	INNER JOIN departamentos
	ON municipios.cod_depto = departamentos.cod_depto
WHERE
	departamentos.nombre_depto="Guatemala"
ORDER BY municipios.nombre_municipio, ciudadanos.apellido;
	
/*ERROR PORQUE NO CUENTA CON ON LO QUE GENERA UNA MULTIPLICACION O 
PRODUCTO CARTESIANO (MULTIPLICA CANTIDAD CIUDADANOS * CANT MUNICIPIOS * 1 DEPTO)*/	
SELECT 
	ciudadanos.dpi,
	ciudadanos.apellido,
	ciudadanos.nombre,
	departamentos.nombre_depto,
	municipios.nombre_municipio
FROM
	departamentos INNER JOIN municipios
	INNER JOIN ciudadanos
	
WHERE
	departamentos.nombre_depto="Guatemala";


/*mostrar todos los municipios con el nombre del departamento al que pertenecen*/
SELECT 
	municipios.*,
	departamentos.nombre_depto
FROM
	departamentos INNER JOIN municipios
	on departamentos.cod_depto = municipios.cod_depto;
	
	
SELECT * FROM municipios;
SELECT * FROM departamentos;


