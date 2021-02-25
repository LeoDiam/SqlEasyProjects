drop table Teaching;
drop table Student;
drop table Course;
drop table Professor;
drop table House;

CREATE TABLE House (
	houseid int,
	name char(20),
	primary key (houseid)
);

CREATE TABLE Professor (
	profId int,
	fname char(15),
	lname char(20),
	houseid int,
	primary key (profId),
	foreign key (houseid) references House (houseid)
);

CREATE TABLE Course (
	crscode char(3),
	title char(30),
	primary key (crscode)
);

CREATE TABLE Student (
	studid int,
	fname char(15),
	lname char(20),
	gender char(2),
	houseid int,
	age int,
	primary key (studid),
	foreign key (houseid) references House (houseid)
);

CREATE TABLE Teaching (
	teachId int,
	profid int,
	crscode char(3),
	semester char(12),
	primary key (teachId),
	foreign key (profid) references Professor (profid),
	foreign key (crscode) references Course (crscode)
);

CREATE TABLE Enrolled (
	teachId int,
	studid int,
	primary key (teachId,studid),
	foreign key (teachId) references Teaching (teachId),
	foreign key (studid) references Student (studid)
);

insert into House values (1, 'Gryffindor');
insert into House values (2, 'Hufflepuff');
insert into House values (3, 'Ravenclaw');
insert into House values (4, 'Slytherin');

insert into Professor values (10, 'Albus', 'Dumbledore', 1);
insert into Professor values (11, 'Severus', 'Snape', 4);
insert into Professor values (12, 'Rubeus', 'Hagrid', 1);
insert into Professor values (13, 'Gilderoy', 'Lockhart', 1);
insert into Professor values (14, 'Remus', 'Lupin', 1);
insert into Professor values (15, 'Minerva', 'McGonagall', 1);
insert into Professor values (16, 'Alastor', 'Moody', 2);
insert into Professor values (17, 'Quirinus', 'Quirrell', 3);
insert into Professor values (18, 'Horace', 'Slughorn', 4);
insert into Professor values (19, 'Sybill', 'Trelawney', 3);
insert into Professor values (20, 'Rolanda', 'Hooch', 2);
insert into Professor values (21, 'Filius ', 'Flitwick', 3);

insert into Course values ('HOM', 'History of Magic');
insert into Course values ('MUS', 'Muggle Studies');
insert into Course values ('TRA', 'Transfiguration');
insert into Course values ('DIV', 'Divination');
insert into Course values ('CHA', 'Charms');
insert into Course values ('CMC', 'Care of Magical Creatures');
insert into Course values ('GKE', 'Grounds Keeper');
insert into Course values ('FLY', 'Flying');
insert into Course values ('DAD', 'Defence Against the Dark Arts');
insert into Course values ('AST', 'Astronomy');
insert into Course values ('POT', 'Potions');
insert into Course values ('HER', 'Herbology');
insert into Course values ('ARI', 'Arithmancy');

insert into Student values (1001, 'Harry', 'Potter', 'M', 1, 12);
insert into Student values (1002, 'Ron', 'Weasley', 'M', 1, 13);
insert into Student values (1003, 'Hermione', 'Granger', 'F', 1, 14);
insert into Student values (1004, 'Lavender', 'Brown', 'M', 1, 14);
insert into Student values (1005, 'Cedric', 'Diggory', 'M', 2, 13);
insert into Student values (1006, 'Zacharias', 'Smith', 'M', 2, 10);
insert into Student values (1007, 'Ernie', 'Macmillan', 'M', 2, 12);
insert into Student values (1008, 'Susan', 'Bones', 'F', 2, 13);
insert into Student values (1009, 'Marietta', 'Edgecombe', 'F', 3, 12);
insert into Student values (1010, 'Michael', 'Corner', 'M', 3, 12);
insert into Student values (1011, 'Terry', 'Boot', 'M', 3, 14);
insert into Student values (1012, 'Cho', 'Chang', 'F', 3, 13);
insert into Student values (1013, 'Draco', 'Malfoy', 'M', 4, 14);
insert into Student values (1014, 'Pansy', 'Parkinson', 'F', 4, 13);
insert into Student values (1015, 'Gregory', 'Goyle', 'M', 4, 15);
insert into Student values (1016, 'Marcus', 'Flint', 'M', 4, 14);

insert into Teaching values (810, 21, 'CHA', 'Fall2020');
insert into Teaching values (811, 21, 'FLY', 'Fall2020');
insert into Teaching values (812, 21, 'DIV', 'Fall2020');
insert into Teaching values (813, 11, 'DAD', 'Fall2020');
insert into Teaching values (814, 17, 'DAD', 'Fall2020');
insert into Teaching values (815, 12, 'CMC', 'Fall2020');
insert into Teaching values (816, 15, 'TRA', 'Fall2020');
insert into Teaching values (817, 13, 'DAD', 'Fall2020');
insert into Teaching values (818, 18, 'POT', 'Spring2021');
insert into Teaching values (819, 18, 'CHA', 'Spring2021');
insert into Teaching values (820, 18, 'FLY', 'Spring2021');
insert into Teaching values (821, 14, 'DAD', 'Spring2021');
insert into Teaching values (822, 12, 'CMC', 'Spring2021');
insert into Teaching values (823, 11, 'DAD', 'Spring2021');
insert into Teaching values (824, 15, 'TRA', 'Summer2021');
insert into Teaching values (825, 16, 'DAD', 'Summer2021');

insert into Enrolled values (810, 1001);
insert into Enrolled values (810, 1002);
insert into Enrolled values (811, 1007);
insert into Enrolled values (811, 1008);
insert into Enrolled values (811, 1009);
insert into Enrolled values (812, 1013);
insert into Enrolled values (812, 1014);
insert into Enrolled values (812, 1015);
insert into Enrolled values (813, 1001);
insert into Enrolled values (813, 1002);
insert into Enrolled values (814, 1003);
insert into Enrolled values (814, 1004);
insert into Enrolled values (815, 1001);
insert into Enrolled values (815, 1002);
insert into Enrolled values (815, 1008);
insert into Enrolled values (816, 1001);
insert into Enrolled values (816, 1005);
insert into Enrolled values (817, 1005);
insert into Enrolled values (817, 1007);
insert into Enrolled values (817, 1008);
insert into Enrolled values (817, 1014);
insert into Enrolled values (817, 1015);
insert into Enrolled values (817, 1016);

COMMIT;
