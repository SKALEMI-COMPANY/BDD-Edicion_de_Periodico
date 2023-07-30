-- Skalemi Company
-- Si te surge alguna duda, contáctame.
-- michaelvinces.skalemi@gmail.com

/*Cursor que muestre el número de publicaciones realizadas por una sucursal pasada como parámetro.*/

do $$
declare
	cantidad int=0;
	registro record;
	num int;

Sucursal_Publicaciones cursor for select * from Publicacion, Periodista, Articulo, Sucursal, Ubicacion_Sucursal, Ciudad 
where Articulo.id_articulo=Publicacion.id_articulo and Periodista.id_periodista=Articulo.id_periodista 
and Sucursal.id_sucursal=Periodista.id_sucursal and Ubicacion_Sucursal.id_ubicacion=Sucursal.id_ubicacion 
and Ciudad.id_ciudad=Ubicacion_Sucursal.id_ciudad and Sucursal.id_sucursal=1;
begin
	for num in Sucursal_Publicaciones
	loop
	cantidad=cantidad+count(num.id_publicacion);
	end loop;
	open Sucursal_Publicaciones;
fetch Sucursal_Publicaciones into registro;
Raise notice 'La Sucursal % de la ciudad de % ha realizado % publicaciones.',registro.sucursal_nombre, registro.ciudad_nombre, cantidad;
end $$
language 'plpgsql';
