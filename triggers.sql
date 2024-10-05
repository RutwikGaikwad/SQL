create Database Shree;

use Shree;
create table Books ( Acc_No int,Title varchar(100),Author varchar(100),Publisher varchar(100),Count int);

insert into Books value('1001','DBMS','ABC','ABCD','100');
insert into Books value('1002','CNS','DEF','CCCC','150');
insert into Books value('1003','OOP','NNN','NNT','200');
insert into Books value('1004','SPOS','GGG','GNN','200');
insert into Books value('1005','TOC','NND','ND','213');

create table Lib_Audit ( Acc_No int,Title varchar(100),Author varchar(100),Publisher varchar(100),Count int,Action varchar(100));

-- after delete trigger is created
create trigger Tr after delete on Books For each row Insert into Lib_Audit set action="delete", Acc_No=old.Acc_No, Title=old.Title, Author=old.Author, Publisher=old.Publisher,Count=old.Count ;

-- To activate delete trigger
-- delete from Books where Acc_No='1001'; 

-- after update trigger is created
create trigger TT after update on Books For each row Insert into Lib_Audit set action="update", Acc_No=old.Acc_No, Title=old.Title, Author=old.Author, Publisher=old.Publisher,Count=old.Count ;

-- To activate update trigger
-- update Books set Count=8 where Acc_No='1004';

-- before update trigger is created
create trigger SS before update on Books For each row Insert into Lib_Audit set action="update", Acc_No=old.Acc_No, Title=old.Title, Author=old.Author, Publisher=old.Publisher,Count=old.Count ;

-- before delete trigger is created
create trigger TS before delete on Books For each row Insert into Lib_Audit set action="delete", Acc_No=old.Acc_No, Title=old.Title, Author=old.Author, Publisher=old.Publisher,Count=old.Count ;
