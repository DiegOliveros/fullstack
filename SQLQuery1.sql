create database misegundadb

use primeradatabase  /* comentaro */ 

create table personas (
nombre varchar (255),
Apellido1 varchar (255),
Apellido2 varchar (255)
)

select * from personas 

insert into personas values ('Nombre', 'Apellido', 'apellido2')
insert into personas values ('Antonio', 'Perez', 'Gomez')
insert into personas values ('Luis', 'Lopez', 'Perez')
insert into personas values ('Antonio', 'Garecia', 'Benito')

delete from personas where personas.nombre = 'Nombre'

select nombre, apellido1, apellido2 from personas /* mejor práctica*/ 
select nombre as l1, apellido1, apellido2 from personas /* Alias*/

Select distinct nombre  from personas  /*nombres no repetidos*/

select nombre, apellido1, apellido2 from personas  where nombre ='Antonio'
select nombre, apellido1, apellido2 from personas  where nombre ='lina'

delete personas --borrar contenido mas no tabla.

create table departamentos 
 (
dep int,
departamento varchar (255),
PRIMARY KEY (dep)
)
drop table departamentos

create table personas2 (
per int,
nombre varchar (255),
Apellido1 varchar (255),
Apellido2 varchar (255),
dep int,
PRIMARY KEY (per), 
FOREIGN KEY (dep) REFERENCES departamentos(dep)
)

SELECT nombre, apellido1, departamento FROM personas2 INNER JOIN departamentos 
WHERE personas2.dep =departamentos.dep

insert into personas2 values (1,'Antonio', 'perez', 'gomez', 1)   --primero la foranea

insert into departamentos values (1,'Administración')
insert into departamentos values (2,'Informàtica')
insert into departamentos values (3,'Comercial')
insert into departamentos values (4,'IT')

insert into personas2 values (2,'Antonio', 'Garcia', 'Rodriguez', 2) 
insert into personas2 values (3,'Pedro', 'Ruiz', 'Gonzalez', 2) 
insert into personas2 values (4,'Alejanda', 'Peñaloza', null, 4) 
insert into personas2 values (5,'Antonio', 'Garcia', 'Rodriguez', 2) 
insert into personas2 values (6,'Pedro', 'Ruiz', 'Gonzalez', 2) 
insert into personas2 values (7,'Alejanda', 'Peñaloza', null, 4) 
insert into personas2 values (8,'Antonio', 'Garcia', 'Rodriguez', 2) 
insert into personas2 values (9,'Pedro', 'Ruiz', 'Gonzalez', 2) 
insert into personas2 values (10,'Alejanda', 'Peñaloza', null, 4) 
insert into personas2 values (12,'Antonio', 'Garcia', 'Rodriguez', 2) 
insert into personas2 values (13,'Pedro', 'Ruiz', 'Gonzalez', 2) 
insert into personas2 values (14,'Alejanda', 'Peñaloza', null, 4) 
insert into personas2 values (11,'Antonio', 'Garcia', 'Rodriguez', 2) 
insert into personas2 values (15,'Pedro', 'Ruiz', 'Gonzalez', 2) 
insert into personas2 values (16,'Alejanda', 'Peñaloza', null, 4) 
insert into personas2 values (17,'Antonio', 'Garcia', 'Rodriguez', 2) 
insert into personas2 values (18,'Pedro', 'Ruiz', 'Gonzalez', 2) 
insert into personas2 values (19,'Alejanda', 'Peñaloza', null, 4) 

select * from personas2
/* consultas con uniòn */

SELECT nombre, Apellido1, departamento FROM personas2 INNER JOIN departamentos 
on personas2.dep = departamentos.dep

SELECT nombre, Apellido1, departamento FROM personas2, departamentos -- opción 2
where personas2.dep = departamentos.dep
