drop database if exists activity;
create database activity;
use activity;


/*�û���*/
create table User(
uid varchar(10) primary key,
uname varchar(20) unique,
password varchar(20) not null,
sSuper int not null,
deletemark int DEFAULT 1

);
ALTER TABLE activity.User ADD UNIQUE (uname);

/*���*/
create table Activity(
aid varchar(10) primary key,
aname varchar(50) not null,
level enum("����","Ժ��","У��"),
place varchar(20) not null,
duration char(100) not null,
pname varchar(10) not null,
email varchar(20) not null,
inf text not null,
con varchar(3) not null,
deletemark int DEFAULT 1
);


/*����˱�*/
create table Examiner(
eid varchar(10) primary key,
ename varchar(10),
name varchar(10) ,
level enum("����","Ժ��","У��"),
phonenumber varchar(11) not null,
deletemark int DEFAULT 1
);

/*���״̬��*/
create table Con(
aid varchar(10),
aname varchar(50) unique,
pname varchar(10) not null,
name varchar(10) ,
primary key(aid),
level enum("����","Ժ��","У��"),
con varchar(3) not null,
nreason text,
deletemark int DEFAULT 1,
foreign key (aid) references Activity(aid) on delete restrict on update restrict
);


insert into User values("u01","����","a1138312802","1","1");
insert into User values("u02","��ѧ��","a1138312802","1","1");
insert into User values("u03","�㽶��","a1138312802","1","1");

insert into User values("u04","Godzilla","a1138312802","2","1");
insert into User values("u05","kiki","a1138312802","2","1");
insert into User values("u06","��","a1138312802","2","1");
insert into User values("u07","���","a1138312802","2","1");
insert into User values("u08","�ڷ��","a1138312802","2","1");
insert into User values("u09","������ǧ��","a1138312802","2","1");
insert into User values("u10","GG","a1138312802","2","1");
insert into User values("u11","����","a1138312802","2","1");

insert into User values("u12","ϣ˹������","a1138312802","3","1");
insert into User values("u13","����","a1138312802","3","1");
insert into User values("u14","����","a1138312802","3","1");
insert into User values("u15","������","a1138312802","3","1");

insert into Activity values("a01","�������ʿ�ݽ�","Ժ��","����207","2019-06-30 00:00:00��2019-11-05 00:00:00","ϲ����","1138312802@qq.com","�����廪��ѧ","��ͨ��","1");
insert into Activity values("a02","17�����1����","Ժ��","��B901","2019-06-30 00:00:00��2019-11-05 00:00:00","������","1138312802@qq.com","�����廪��ѧ","δͨ��","1");
insert into Activity values("a03","��ϢԺѧ�������","����","��B107","2019-06-30 00:00:00��2019-11-05 00:00:00","������","1138312802@qq.com","�����廪��ѧ","�����","1");
insert into Activity values("a04","У������������","У��","����506","2019-06-30 00:00:00��2019-11-05 00:00:00","�峤","1138312802@qq.com","�����廪��ѧ","�����","1");
insert into Activity values("a05","It�Ƽ��Ļ��ھ���","У��","����407","2019-06-30 00:00:00��2019-11-05 00:00:00","������","1138312802@qq.com","�����廪��ѧ","�����","1");
insert into Activity values("a06","17�����2����","Ժ��","��B901","2019-06-30 00:00:00��2019-11-05 00:00:00","��̫��","1138312802@qq.com","�����廪��ѧ","δͨ��","1");
insert into Activity values("a07","LolȫУ����","У��","�羺��","2019-06-30 00:00:00��2019-11-05 00:00:00","��̫��","1138312802@qq.com","�����廪��ѧ","�����","1");
insert into Activity values("a08","������������Ĵ���","У��","����407","2019-06-30 00:00:00��2019-11-05 00:00:00","������","1138312802@qq.com","�����廪��ѧ","�����","1");
insert into Activity values("a09","������ͻ�","Ժ��","��B901","2019-06-30 00:00:00��2019-11-05 00:00:00","��̫��","1138312802@qq.com","�����廪��ѧ","δͨ��","1");


insert into Examiner values("e01","Godzilla","����","Ժ��","111111","1");
insert into Examiner values("e02","kiki","������","Ժ��","222222","1");
insert into Examiner values("e03","��","����","У��","333333","1");
insert into Examiner values("e04","���","�ǲ�˹","����","444444","1");
insert into Examiner values("e05","�ڷ��","����","У��","111111","1");
insert into Examiner values("e06","������ǧ��","������","Ժ��","222222","1");
insert into Examiner values("e07","GG","����","У��","333333","1");
insert into Examiner values("e08","����","�ǲ�˹","����","444444","1");


insert into Con values("a01","�������ʿ�ݽ�","ϲ����","Godzilla","Ժ��","��ͨ��","","1");
insert into Con values("a02","17�����1����","������","kiki","Ժ��","δͨ��","�����ѱ�Ԥ����ʱ���ͻ","1");
insert into Con values("a03","��ϢԺѧ�������","������","���","����","�����","","1");
insert into Con values("a04","У������������","�峤","��","У��","�����","","1");
insert into Con values("a05","It�Ƽ��Ļ��ھ���","������","��","У��","�����","","1");
insert into Con values("a06","17�����2����","��̫��","Godzilla","Ժ��","δͨ��","�����ѱ�Ԥ����ʱ���ͻ","1");
insert into Con values("a07","LolȫУ����","��̫��","GG","У��","�����","","1");
insert into Con values("a08","������������Ĵ���","������","�ڷ��","У��","�����","","1");
insert into Con values("a09","������ͻ�","��̫��","������ǧ��","Ժ��","δͨ��","�����ѱ�Ԥ����ʱ���ͻ","1");

drop trigger Activity_insert_Con;
drop trigger Activity_update_Con;
drop trigger Con_update_Activity;
drop trigger Examiner_update_Condition;




DELIMITER$
create trigger Activity_insert_Con After insert on Activity for each row
begin
insert into Con values(New.aid,New.aname,New.pname,"",New.level,"�����","","1");
end$
DELIMITER;



DELIMITER$
create trigger Activity_update_Con After update on Activity for each row
begin
	if New.level != Old.level then
		update Con set level = New.level,name="",con="�����",nreason="" where aid = New.aid;
	end if;
	if New.aname != Old.aname or New.deletemark != Old.deletemark or New.pname != Old.pname then
		update Con set aname = New.aname,pname = New.pname, deletemark = New.deletemark where aid = New.aid;
	end if;
end$
DELIMITER;

/*���������������������������*/

DELIMITER$
create trigger Con_update_Activity After update on Con for each row
begin
	if New.con != Old.con then
		update Activity set con = New.con where aid = New.aid;
	end if;
end$
DELIMITER;

/*����˱���º�������˱��������˵���Ϣ*/



DELIMITER$
create trigger Examiner_update_Condition After update on Examiner for each row
begin
	if New.level!=Old.level or New.deletemark!=Old.deletemark then
		update Con set name=" ",con ="�����" where name=Old.ename and con!="��ͨ��" and con!="δͨ��";
			update Con set name=" " where name=Old.ename and (con="��ͨ��" or con="δͨ��");
	end if;
	if New.ename!=old.ename then
		update Con set name=New.ename where name=old.ename ;
	end if;
end$
DELIMITER;

