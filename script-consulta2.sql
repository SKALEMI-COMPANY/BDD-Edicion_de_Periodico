-- Skalemi Company
-- Si te surge alguna duda, contáctame.
-- michaelvinces.skalemi@gmail.com

/*Consultar toda la información sobre una publicación en especifico 
(el tipo, la relevancia, la polémica, la sección, el periodista, el titulo, 
la fecha de publicación, quien la edito)*/

Select 
	Periodista.periodista_apellidos as periodista_apellidos,
	Periodista.periodista_nombre as periodista_nombre,
	Articulo.titulo as titulo,
	Tipo_Articulo.tipo_articulo_nombre as tipo,
	Polemica_Articulo.polemica_nombre as polemica,
	Relevancia_Articulo.relevancia_nombre as relevancia,
	Seccion.seccion_nombre as seccion,
	Revision.id_revision as id_revision,
	Editor.editor_apellidos as editor_apellidos,
	Editor.editor_nombre as editor_nombre,
	Publicacion.fecha_publicacion as fecha
From Publicacion
	inner join Articulo on Articulo.id_articulo=Publicacion.id_articulo
	Inner Join Periodista on Periodista.id_periodista=Articulo.id_periodista
	Inner Join Tipo_Articulo on Tipo_Articulo.id_tipo_articulo=Articulo.id_tipo_articulo
	Inner Join Polemica_Articulo on Polemica_Articulo.id_polemica=Articulo.id_polemica
	Inner Join Relevancia_Articulo on Relevancia_Articulo.id_relevancia=Articulo.id_relevancia
	Inner Join Seccion on Seccion.id_seccion=Publicacion.id_seccion
	inner join Revision on Revision.id_articulo=Articulo.id_articulo
	inner join Editor on Editor.id_editor=Revision.id_editor
where Publicacion.id_publicacion=2;
