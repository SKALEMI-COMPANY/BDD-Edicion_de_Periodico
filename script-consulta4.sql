-- Skalemi Company
-- Si te surge alguna duda, contáctame.
-- michaelvinces.skalemi@gmail.com

/*Consultar toda la información acerca de un día en una sucursal seleccionada (periodistas, artículos publicados, seccion, editores, revisiones) */

Select 
	Sucursal.sucursal_nombre as sucursal,
	Periodista.periodista_apellidos as periodista_apellidos,
	Periodista.periodista_nombre as periodista_nombre,
	Articulo.titulo as titulo,
	Seccion.seccion_nombre as seccion,
	Revision.id_revision as id_revision,
	Editor.editor_apellidos as editor_apellidos,
	Editor.editor_nombre as editor_nombre,
	Publicacion.fecha_publicacion as fecha
from Publicacion
	inner join Articulo on Articulo.id_articulo=Publicacion.id_articulo
	Inner Join Periodista on Periodista.id_periodista=Articulo.id_periodista
	inner join Seccion on Seccion.id_seccion=Publicacion.id_seccion
	inner join Revision on Revision.id_articulo=Articulo.id_articulo
	inner join Editor on Editor.id_editor=Revision.id_editor
	inner join Sucursal on Sucursal.id_sucursal=Editor.id_sucursal
where Publicacion.fecha_publicacion='2022-11-15' and Sucursal.id_sucursal=1;
