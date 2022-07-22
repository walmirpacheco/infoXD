use dbinfoxd;
select * from tbclientes;
select * from tbusuarios;
-- a linha abaixo cria a tabela de ordem de serviço
create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipameto varchar (50) not null,
defeito varchar (120) not null,
servico varchar (120),
tecnico varchar (30),
valor decimal (10,2),
idcli int not null,
foreign key (idcli) references tbclientes (idcli)
);
describe tbos;
select * from tbos;

insert into tbos(equipameto, defeito, servico, tecnico, valor, idcli)
values ('Notebook HD', 'Não liga', 'Troca da fonte', 'Luiz', '88.54', 1);
-- a linha abaixo troca o nome da coluna da tabela por outro nome
alter table tbos change column equipameto equipamento varchar (50);
-- o código abaixo traz as informações de 2 tabelas
select
O.os, equipamento, defeito, servico, valor, 
C.nomecli, fonecli
from tbos as O inner join tbclientes as C on (O.idcli = C.idcli);