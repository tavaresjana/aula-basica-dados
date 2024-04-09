use empregados_db;
/*Seletores Acumuladores e Filtros*/
select* from departamento;
select * from departamento where cod_depto>2 and cod_depto <5;
select * from departamento where cod_depto % 2 = 0;
select * from departamento where cod_depto % 2 = 1;
select count(*) as numero_dpto from departamento;
select * from departamento;
select count(*) as numero_dpto, (210+3) as conta from departamento;
select nome from departamento where cod_depto>3;

/*Prática de acumuladores e filtros*/
select * from empregado;
select * from empregado where salario <=(1413 * 3);
select * from empregado where cod_depto = 1;
select * from empregado where cod_depto in(1,2,5);
select * from empregado where cod_depto not in(1,2,5);
select * from empregado where not salario <=(1413 * 3);
select * from empregado where nome like "ANA %"; 
select * from empregado where nome like "%AN%"; 
/*O % diz que começa com ana e tem um espaço no meio do campo nome.
Se fosse ANA% seria que começa com ana. 
Se for %AN% significa em qualquer lugar do nome*/




