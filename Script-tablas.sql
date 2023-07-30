-- Skalemi Company
-- Si te surge alguna duda, contáctame.
-- michaelvinces.skalemi@gmail.com

create table Periodista(
	id_periodista int not null,
	id_sucursal int not null,
	periodista_nombre text not null,
	periodista_apellidos text not null,
	constraint PK_Periodista primary key (id_periodista)
);
create table Publicacion(
	id_publicacion int not null,
	id_articulo int not null,
	id_seccion int not null,
	fecha_publicacion date not null,
	constraint PK_Publicacion primary key(id_publicacion)
);
create table Seccion(
	id_seccion int not null,
	seccion_nombre text not null,
	posicion text not null,
	cantidad_paginas int not null,
	publicaciones_max int not null,
	constraint PK_Seccion primary key (id_seccion)
);
create table Articulo(
	id_articulo int not null,
	id_relevancia int not null,
	id_polemica int not null,
	id_tipo_articulo int not null,
	id_periodista int not null,
	id_estado int not null,
	titulo text not null,
	constraint PK_Articulo primary key (id_articulo)
);
create table Estado(
	id_estado int not null,
	estado_nombre text not null,
	constraint PK_Estado primary key (id_estado)
);
create table Relevancia_Articulo(
	id_relevancia int not null,
	relevancia_nombre text not null,
	constraint PK_Relevancia_Articulo primary key (id_relevancia)
);
create table Polemica_Articulo(
	id_polemica int not null,
	polemica_nombre text not null,
	constraint PK_Polemica_Articulo primary key (id_polemica)
);
create table Tipo_Articulo(
	id_tipo_articulo int not null,
	tipo_articulo_nombre text not null,
	constraint PK_Tipo_Articulo primary key (id_tipo_articulo)
);
create table Revision(
	id_revision int not null,
	id_editor int not null,
	id_articulo int not null,
	motivo text not null,
	constraint PK_Revision primary key (id_revision)
);
create table Editor(
	id_editor int not null,
	id_sucursal int not null,
	editor_nombre text not null,
	editor_apellidos text not null,
	constraint PK_Editor primary key (id_editor)
);
create table Demandas(
	id_demandas int not null,
	id_sucursal int not null,
	fecha_demanda date not null,
	descripcion text not null,
	constraint PK_Demandas primary key (id_demandas)
);
create table Sucursal(
	id_sucursal int not null,
	id_ubicacion int not null,
	sucursal_nombre text not null,
	constraint PK_Sucursal primary key (id_sucursal)
);
create table Ubicacion_Sucursal(
	id_ubicacion int not null,
	id_ciudad int not null,
	calle text not null,
	avenida text not null,
	referencia text null,
	constraint PK_Ubicacion_Sucursal primary key (id_ubicacion)
);
create table Region(
	id_region int not null,
	region_nombre text not null,
	constraint PK_Region primary key (id_region)
);
create table Provincia(
	id_provincia int not null,
	id_region int not null,
	provincia_nombre text not null,
	constraint PK_Provincia primary key (id_provincia)
);
create table Ciudad(
	id_ciudad int not null,
	id_provincia int not null,
	ciudad_nombre text not null,
	constraint PK_Ciudad primary key (id_ciudad)
);
---------------------------------------------------------------------------------------------------------------------------------------------------------------

alter table Provincia
add constraint FK_Provincia_Region foreign key (id_region)
references Region (id_region)
on delete restrict  on update restrict;

alter table Ciudad
add constraint FK_Ciudad_Provincia foreign key (id_provincia)
references Provincia (id_provincia)
on delete restrict  on update restrict;

alter table Ubicacion_Sucursal
add constraint FK_Ubicacion_Sucursal_Ciudad foreign key (id_ciudad)
references Ciudad (id_ciudad)
on delete restrict  on update restrict;

alter table Sucursal
add constraint FK_Sucursal_Ubicacion_Sucursal foreign key (id_ubicacion)
references Ubicacion_Sucursal (id_ubicacion)
on delete restrict  on update restrict;

alter table Demandas
add constraint FK_Demandas_Sucursal foreign key (id_sucursal)
references Sucursal (id_sucursal)
on delete restrict  on update restrict;

alter table Editor
add constraint FK_Editor_Sucursal foreign key (id_sucursal)
references Sucursal (id_sucursal)
on delete restrict  on update restrict;

alter table Periodista
add constraint FK_Periodista_Sucursal foreign key (id_sucursal)
references Sucursal (id_sucursal)
on delete restrict  on update restrict;

alter table Publicacion
add constraint FK_Publicacion_Articulo foreign key (id_articulo)
references Articulo (id_articulo)
on delete restrict  on update restrict;

alter table Publicacion
add constraint FK_Publicacion_Seccion foreign key (id_seccion)
references Seccion (id_seccion)
on delete restrict  on update restrict;

alter table Articulo
add constraint FK_Articulo_Estado foreign key (id_estado)
references Estado (id_estado)
on delete restrict  on update restrict;

alter table Articulo
add constraint FK_Articulo_Relevancia foreign key (id_relevancia)
references Relevancia_Articulo (id_relevancia)
on delete restrict  on update restrict;

alter table Articulo
add constraint FK_Articulo_Polemica foreign key (id_polemica)
references Polemica_Articulo (id_polemica)
on delete restrict  on update restrict;

alter table Articulo
add constraint FK_Articulo_Tipo foreign key (id_tipo_articulo)
references Tipo_Articulo (id_tipo_articulo)
on delete restrict  on update restrict;

alter table Articulo
add constraint FK_Articulo_Periodista foreign key (id_periodista)
references Periodista (id_periodista)
on delete restrict  on update restrict;

alter table Revision
add constraint FK_Revision_Articulo foreign key (id_articulo)
references Articulo (id_articulo)
on delete restrict  on update restrict;

alter table Revision
add constraint FK_Revision_Editor foreign key (id_editor)
references Editor (id_editor)
on delete restrict  on update restrict;
