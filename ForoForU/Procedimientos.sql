use ForU;

delimiter //

create procedure MUESTRA_NUM_COMNTS(
	
)
begin
    if(select count(*) from comentarios where idComentario) = 0 then
		select 0 as mensaje;
	else
		select 1 as mensaje;
	end if;
end