-- Skalemi Company
-- Si te surge alguna duda, contáctame.
-- michaelvinces.skalemi@gmail.com


/*Número de artículos presentados, aprobados, negados y pendientes de un periodista*/

Select
	Periodista.periodista_apellidos as Apellidos,
	Periodista.periodista_nombre as Nombre,
	Estado.estado_nombre as Estado,
	count (Estado.id_estado) as Cantidad
From Articulo
	Inner Join Periodista on Periodista.id_periodista=Articulo.id_periodista
	inner join Estado on Estado.id_estado=Articulo.id_estado
	Where Periodista.id_periodista=1
	group by Periodista.periodista_apellidos,Periodista.periodista_nombre,Estado.estado_nombre;
