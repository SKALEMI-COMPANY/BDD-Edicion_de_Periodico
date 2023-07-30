-- Skalemi Company
-- Si te surge alguna duda, contáctame.
-- michaelvinces.skalemi@gmail.com

/*Cuál es la sucursal con más demandas o quejas y cuantas ha recibido.*/

Select
	Sucursal.sucursal_nombre as Sucursal,
	Count(Demandas) as Demandas,
	Region.region_nombre as Region,
	Provincia.provincia_nombre as Provincia,
	Ciudad.ciudad_nombre as Ciudad,
	Ubicacion_Sucursal.calle as Calle,
	Ubicacion_Sucursal.avenida as Avenida,
	Ubicacion_Sucursal.referencia as Referencia
From Demandas
	inner join Sucursal on Sucursal.id_sucursal = Demandas.id_sucursal
	inner join Ubicacion_Sucursal on Ubicacion_Sucursal.id_ubicacion =Sucursal.id_ubicacion
	inner join Ciudad on Ciudad.id_ciudad=Ubicacion_Sucursal.id_ciudad
	inner join Provincia on Provincia.id_provincia=Ciudad.id_provincia
	inner join Region on Region.id_region =Provincia.id_region
	group by Sucursal.sucursal_nombre,Region.region_nombre,Provincia.provincia_nombre,Ciudad.ciudad_nombre,
	Ubicacion_Sucursal.calle,Ubicacion_Sucursal.avenida,Ubicacion_Sucursal.referencia
	order by Demandas desc limit 1;
