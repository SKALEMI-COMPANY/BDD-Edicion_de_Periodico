-- Skalemi Company
-- Si te surge alguna duda, contáctame.
-- michaelvinces.skalemi@gmail.com


-- Datos de la tabla region
insert into Region values(1,'Litoral');
insert into Region values(2,'Sierra');
insert into Region values(3,'Oriente');
insert into Region values(4,'Insular');

-- Datos de la tabla provincia
insert into Provincia values(1,1,'Esmeraldas');
insert into Provincia values(2,1,'Manabí');
insert into Provincia values(3,1,'Los Ríos');
insert into Provincia values(4,1,'Santa Elena');
insert into Provincia values(5,1,'Guayas');
insert into Provincia values(6,1,'El Oro');
insert into Provincia values(7,1,'Santo Domingo de los Tsáchilas');
insert into Provincia values(8,2,'Azuay');
insert into Provincia values(9,2,'Bolívar');
insert into Provincia values(10,2,'Cañar');
insert into Provincia values(11,2,'Carchi');
insert into Provincia values(12,2,'Chimborazo');
insert into Provincia values(13,2,'Cotopaxi');
insert into Provincia values(14,2,'Imbabura');
insert into Provincia values(15,2,'Loja');
insert into Provincia values(16,2,'Pichincha');
insert into Provincia values(17,2,'Tungurahua');
insert into Provincia values(18,3,'Morona Santiago');
insert into Provincia values(19,3,'Napo');
insert into Provincia values(20,3,'Orellana');
insert into Provincia values(21,3,'Pastaza');
insert into Provincia values(22,3,'Sucumbios');
insert into Provincia values(23,3,'Zamora Chinchipe');
insert into Provincia values(24,4,'Galápagos');

--Datos de la tabla Ciudad
insert into Ciudad values(1,2,'Manta');
insert into Ciudad values(2,2,'Chone');
insert into Ciudad values(3,2,'Portoviejo');
insert into Ciudad values(4,5,'Guayaquil');
insert into Ciudad values(5,16,'Quito');
insert into Ciudad values(6,7,'Santo Domingo');

--Datos de la tabla Ubicacion_Sucursal
insert into Ubicacion_Sucursal values(1,4,'CALLE 13E NE','1° Pasaje 1A NE','Entre Tecnomega y Aquatropicalsa. Enfrente de COMPUHELP');
insert into Ubicacion_Sucursal values(2,1,'Calle 13','Avenida 6-4','Diagonal a la Iglesia La Merced');
insert into Ubicacion_Sucursal values(3,3,'15 de abril','Cinco de Junio','A lado de Pilma Club');
insert into Ubicacion_Sucursal values(4,1,'C. P 3','A vei 14','Enfrente del colegio rios de aguas vivas');

--Datos de la tabla Sucursal
insert into Sucursal values(1,2,'Entérate "Norte"');
insert into Sucursal values(2,4,'Entérate "Sur"');
insert into Sucursal values(3,1,'Entérate "GQ"');
insert into Sucursal values(4,3,'Entérate "Porto"');

--Datos de la tabla Demandas
insert into Demandas values(1,4,'2022-03-05','Uso de imagen sin consentimiento');
insert into Demandas values(2,4,'2022-04-10','Uso de imagen sin consentimiento');
insert into Demandas values(3,1,'2022-04-11','Imagen editada que exagera lo natural');
insert into Demandas values(4,2,'2022-06-20','Uso de imagen sin consentimiento');
insert into Demandas values(5,4,'2022-06-21','Falacia en un 20% de la noticia de la primera plana');
insert into Demandas values(6,4,'2022-08-30','Uso de imagen sin consentimiento');
insert into Demandas values(7,2,'2022-09-03','Injuria');
insert into Demandas values(8,3,'2022-09-06','Ataque racial');
insert into Demandas values(9,4,'2022-09-10','Uso de imagen sin consentimiento');
insert into Demandas values(10,1,'2022-09-09','Injuria');
insert into Demandas values(11,2,'2022-09-21','Uso de imagen sin consentimiento');
insert into Demandas values(12,3,'2022-10-25','Falacia en un 20% de la noticia de la primera plana');
insert into Demandas values(13,3,'2022-10-30','Injuria');
insert into Demandas values(14,4,'2022-11-01','Ataque racial');
insert into Demandas values(15,2,'2022-11-03','Injuria');
insert into Demandas values(16,3,'2022-11-06','Ataque racial');
insert into Demandas values(17,4,'2022-11-10','Uso de imagen sin consentimiento');
insert into Demandas values(18,1,'2022-11-10','Injuria');
insert into Demandas values(19,2,'2022-11-10','Uso de imagen sin consentimiento');
insert into Demandas values(20,1,'2022-11-15','Falacia en un 20% de la noticia de la primera plana');
insert into Demandas values(21,1,'2022-11-20','Injuria');
insert into Demandas values(22,4,'2022-11-25','Ataque racial');

--Datos de la tabla Relevancia_Articulo
insert into Relevancia_Articulo values(1,'Inmediata');
insert into Relevancia_Articulo values(2,'Puede Postergarse');

--Datos de la tabla Relevancia_Articulo
insert into Polemica_Articulo values(1,'Máxima');
insert into Polemica_Articulo values(2,'Mínima');

--Datos de la tabla Tipo_Articulo
insert into Tipo_Articulo values(1,'Deportivo');
insert into Tipo_Articulo values(2,'Político');
insert into Tipo_Articulo values(3,'Arte y Cultura');
insert into Tipo_Articulo values(4,'Clasificados');
insert into Tipo_Articulo values(5,'Editorial y Opinión');

--Datos de la tabla Seccion
insert into Seccion values(1,'Deporte','Quinta',5,3);
insert into Seccion values(2,'Política','Primera',6,2);
insert into Seccion values(3,'Arte y Cultura','Segunda',4,2);
insert into Seccion values(4,'Clasificados','Cuarta',2,2);
insert into Seccion values(5,'Editorial y Opinión','Tercera',1,3);

--Datos de la tabla Periodista
insert into Periodista values(1,1,'Roberto','Cobeña Cornejo');
insert into Periodista values(2,1,'Cristopher','Tejena Chávez');
insert into Periodista values(3,1,'Cristian','Bonilla Moreira');
insert into Periodista values(4,2,'Giusepy','Calle Santana');
insert into Periodista values(5,1,'Pep','Guardiola');
insert into Periodista values(6,1,'Leonel','Messi');
insert into Periodista values(7,2,'Eden','Hazard');
insert into Periodista values(8,2,'Karim','Benzema');
insert into Periodista values(9,3,'Carlo','Ancelotti');
insert into Periodista values(10,4,'Jordi','Alaba');
insert into Periodista values(11,3,'Pablo','Torre');
insert into Periodista values(12,4,'Ferran','Torres');

--Datos de la tabla Editor
insert into Editor values(1,1,'Michael','Vinces Andrade');
insert into Editor values(2,1,'Phil','Cobeña');
insert into Editor values(3,1,'Bernardo','Silva');
insert into Editor values(4,1,'Kevin','De Bruyne');
insert into Editor values(5,1,'Riyad','Mahrez');
insert into Editor values(6,2,'Julián','Alvarez');
insert into Editor values(7,1,'Erling ','Haaland');
insert into Editor values(8,3,'Rubén','Díaz');
insert into Editor values(9,3,'John','Stone');
insert into Editor values(10,4,'Daniel','Carvajal');
insert into Editor values(11,4,'Ferland','Mendy');
insert into Editor values(12,2,'Lucas','Vásquez');

--Datos de la tabla Estado
insert into Estado values(1,'Aprobado');
insert into Estado values(2,'Pendiente');
insert into Estado values(3,'Denegado');

--Datos de la tabla Articulo
insert into Articulo values(1,1,2,1,1,1,'Nacional Aciende a la A');
insert into Articulo values(2,1,2,1,2,1,'Nacional entra a Libertadores');
insert into Articulo values(3,1,2,1,5,1,'Independiente campeon de la Copa Ecuador');
insert into Articulo values(4,1,2,2,1,3,'Candidatos a la presidencia');
insert into Articulo values(5,1,2,2,1,3,'Candidatos disputan la presidencia');
insert into Articulo values(6,1,2,2,1,1,'Candidatos que pelean la candidatura');
insert into Articulo values(7,2,2,3,1,2,'Esculturas en el estadio de Manta');
insert into Articulo values(8,2,2,3,2,2,'Delfin ya tiene esculturas');
insert into Articulo values(9,1,2,4,2,1,'Alcantarillado en Jaramijó');
insert into Articulo values(10,1,2,3,2,1,'Tarqui brilla de culturalidad');
insert into Articulo values(11,1,2,3,4,1,'Esculturas en el Estadio Jocay');
insert into Articulo values(12,1,2,1,1,1,'Aucas el "Campeon del pueblo"');
insert into Articulo values(13,1,2,2,1,1,'Fin de la candidatura a los alcaldes');
insert into Articulo values(14,1,2,1,2,3,'Aucas Campeon');
insert into Articulo values(15,1,1,1,2,3,'Convocados a la seleccion');
insert into Articulo values(16,1,1,1,1,1,'Los mundialistas que irán a Qatar');
insert into Articulo values(17,2,1,3,1,1,'Uleam y sus esculturas');
insert into Articulo values(18,1,1,4,2,3,'Emprendedores y sus inconformidades en tarqui');
insert into Articulo values(19,1,1,4,2,3,'Los malos rumores habitan en tarqui');
insert into Articulo values(20,1,1,4,1,1,'Disconformidades en Tarqui');

--Datos de la tabla Revision
insert into Revision values(1,1,1,'Todo Ok');
insert into Revision values(2,3,2,'Todo Ok');
insert into Revision values(3,5,3,'Todo Ok');
insert into Revision values(4,2,4,'Mejorar Redacción');
insert into Revision values(5,3,5,'Mejorar Redacción');
insert into Revision values(6,2,6,'Todo Ok');
insert into Revision values(7,2,7,'En revision');
insert into Revision values(8,3,8,'En revision');
insert into Revision values(9,2,9,'Todo Ok');
insert into Revision values(10,3,10,'Todo Ok');
insert into Revision values(11,6,11,'Todo Ok');
insert into Revision values(12,2,12,'Todo Ok');
insert into Revision values(13,3,13,'Todo Ok');
insert into Revision values(14,2,14,'Mejorar Redacción');
insert into Revision values(15,2,15,'Mejorar Redacción');
insert into Revision values(16,2,16,'Todo Ok');
insert into Revision values(17,2,17,'Todo Ok');
insert into Revision values(18,3,18,'Mejorar Redacción');
insert into Revision values(19,2,19,'Mejorar Redacción');
insert into Revision values(20,2,20,'Todo Ok');

--Datos de la tabla Publicacion
insert into Publicacion values(1,1,1,'2022-11-15');
insert into Publicacion values(2,2,1,'2022-11-15');
insert into Publicacion values(3,3,1,'2022-11-15');
insert into Publicacion values(4,6,2,'2022-11-15');
insert into Publicacion values(5,9,4,'2022-11-15');
insert into Publicacion values(6,10,3,'2022-11-15');
insert into Publicacion values(7,11,3,'2022-11-15');
insert into Publicacion values(8,12,1,'2022-11-16');
insert into Publicacion values(9,13,2,'2022-11-16');
insert into Publicacion values(10,16,1,'2022-11-16');
insert into Publicacion values(11,17,3,'2022-11-16');
insert into Publicacion values(12,20,4,'2022-11-16');
