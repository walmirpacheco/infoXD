-- a linha abaixo cria um banco de dados
create database dbinfoxd;
-- a linha abaixo escolhe o banco de dados
use dbinfoxd;
-- o bloco de inscrições abaixo cria tabela
create table tbusuarios(
iduser int primary key,
usuario varchar (50) not null,
fone varchar (15),
login varchar (15) not null unique,
senha varchar (15)
);
-- o comando abaixo desceve a tabela
describe tbusuarios;
-- a linha abaixo exibe os dados da tabela
select * from tbusuarios;
-- a linha abaixo insere dados na tabela
insert into tbusuarios (iduser, usuario, fone, login, senha)
values (1, 'Luiz', '419999-9999', 'tilibra','123456');
-- pode ser inserido os dados desta forma também
insert into tbusuarios values (2, 'Administrador', '419999-4444', 'admin', 'admin');
insert into tbusuarios values (3, 'Gustavo', '418888-8888', 'gustavo', '123456');
insert into tbusuarios values (4, 'Walmir', '4198888-5555', 'walmirpacheco', '123');
insert into tbusuarios values (5, 'Clauber', '412222-2222', 'glauber', '123456');
-- a linha abaixo modifica os dados da tabela
update tbusuarios set fone = '418888-1111' where iduser = 2;
-- a linha abaixo apaga o dado da tabela
delete from tbusuarios where iduser = 5;
-- a linha abaixo cria a tabela de clientes
create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar (50) not null,
endcli varchar (50),
fonecli varchar (20) not null,
emailcli varchar (50) 
);
select * from tbclientes;
describe tbclientes;
insert into tbclientes (nomecli, endcli, fonecli, emailcli)
values ('Bruce Rossini','Rua Curiango Bacurau, nº 95','419999-9999','brucerossini@gmail.com');
