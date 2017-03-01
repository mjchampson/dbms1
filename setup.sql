set echo on
connect system/amakal

---create PHP Application User
drop phpuser cascade;
create phpuser identified by welcome;
grant connect, resource ot phpuser;
alter user phpuser default tablespace users
temporary tablespace temp account unlock;

---Create user owner security info about the application
drop php_sec_admin cascade;
create php_sec_admin identified by welcome;
alter user php_sec_admin default tablespace system
temporary tablespace temp account unlock;
grant create procedure , create session , create table , resource,
select any dictionary to php_sec_admin;

connect phpuser/welcome;
---"Parts" table for the application demo 
create table parts 
(id number primary key ,
category varchar2(20),
name varchar2(20),

insert into parts values(1,'electrical','lamp');
insert into parts values(1,'electrical','lamp');
insert into parts values(1,'electrical','lamp');
insert into parts values(1,'electrical','lamp');
insert into parts values(1,'electrical','lamp');
insert into parts values(1,'electrical','lamp');
