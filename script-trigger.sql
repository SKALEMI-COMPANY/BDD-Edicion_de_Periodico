-- Skalemi Company
-- Si te surge alguna duda, contáctame.
-- michaelvinces.skalemi@gmail.com

/*Trigger que no permita publicar un articulo en una sección donde ya cuente con el máximo de publicaciones por día.*/
create or replace function tg_publi_max() returns trigger
as
$$
	declare
	totalpublicacion int;
	publi_max int;
begin 
	select count(*) into totalpublicacion from Publicacion 
	where id_seccion=new.id_seccion and fecha_publicacion=new.fecha_publicacion;
	select Seccion.publicaciones_max into publi_max from Seccion where id_seccion=new.id_seccion;
	if (totalpublicacion>=publi_max) then
	Raise exception 'Este articulo debe de publicarse otro día. Se alcanzó el máximo de publicaciones 
	diarias para esta sección';
	end if;
	return new;
end;
$$
LANGUAGE plpgsql;
create trigger tg_publi_max before insert 
on Publicacion for each row 
execute procedure tg_publi_max(); 	

begin;
insert into Articulo values(22,1,2,1,1,1,'Emelec a la Sudamericana');
insert into Revision values(22,2,21,'Todo Ok');
insert into Publicacion values(15,22,1,'2022-11-16');
commit;
rollback;
