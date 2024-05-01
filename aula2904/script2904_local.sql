start transaction;
insert into empregado(cod_depto, nome, dt_nascimento, sexo, dt_admissao, civil, salario) values(1,'VICTOR SENA ICOMA','1981-10-31','M','2021-02-02','C',2800);
insert into dependente(cod_emp, nome, dt_nascimento, sexo) values(17,'LETÍCIA ICOMA','2003-12-08','F');

rollback;
commit;

/*todo gatilho pede um delimiter
cria um gatilho, quando excluir um empregado. gatilho é acionado depois de deletar da tab empregado */

drop trigger gatilho_exclusao_emp;

delimiter &&
create trigger gatilho_exclusao_emp before delete
on empregado
for each row 
begin
	delete from dependente dep where dep.cod_emp = old.cod_emp;
end
&&

/* */
start transaction;
delete from empregado where cod_emp=17;
rollback;
commit;