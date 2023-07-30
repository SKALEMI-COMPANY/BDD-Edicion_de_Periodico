-- Skalemi Company
-- Si te surge alguna duda, contáctame.
-- michaelvinces.skalemi@gmail.com

/*Un procedimiento almacenado que devuelva la cantidad de artículos denegados de un periodista 
que se le pase como parámetro*/
create or replace function negados_total (apellidos text, nombre text, p_id int) returns bigint
as
$$
select count(Estado.id_estado) from Articulo,Periodista,Estado
where Articulo.id_periodista = Periodista.id_periodista and Articulo.id_estado=Estado.id_estado 
and Estado.id_estado=3 and Periodista.periodista_apellidos=apellidos and Periodista.periodista_nombre=nombre 
and Periodista.id_periodista=p_id
$$
language SQL;

-- Prueba 1
select negados_total('Tejena Chávez','Cristopher',2)
-- Prueba 2
select negados_total('Cobeña Cornejo','Roberto',1)
