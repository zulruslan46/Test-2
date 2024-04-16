create table qa_auto.users(
id int primary key,
first_name varchar (255),
last_name varchar (255),
email varchar (255),
password varchar (255)
);
insert into qa_auto.users values (1, "Tom", "Cruise", "cruz@50email.com", "7777777");
insert into qa_auto.users values (2, "Brad", "Pitt", "pitt@55email.com", "5555555");
insert into qa_auto.users values (3, "Tom", "Hanks", "hanks@40email.com", "1111111");
insert into qa_auto.users values (4, "Morgan", "Freeman", "freeman@80email.com", "88888888");
insert into qa_auto.users values (5, "Anthony", "Hopkins", "HOP@85email.com", "6666666");

create table qa_auto.cars(
id int primary key,
userid varchar (255),
carBrandid varchar (255),
carModelid varchar (255),
mileage varchar (255),
initialMileage varchar (255)
);
insert into qa_auto.cars values (1, "1", "Audi", "Q7", "55000", "0");
insert into qa_auto.cars values (2, "2", "Porsche", "911", "30000", "0");
insert into qa_auto.cars values (3, "3", "BMW", "X5", "10000", "0");
insert into qa_auto.cars values (4, "4", "Ford", "Focus", "25000", "0");
insert into qa_auto.cars values (5, "5", "Fiat", "Panda", "15000", "0");

create table qa_auto.car_brands(
id int primary key,
title varchar (255)
);
insert into qa_auto.car_brands values (1, "Audi");
insert into qa_auto.car_brands values (2, "BMW");
insert into qa_auto.car_brands values (3, "Porsche");
insert into qa_auto.car_brands values (4, "Ford");
insert into qa_auto.car_brands values (5, "Fiat");

create table qa_auto.car_models(
id int primary key,
car_Brendid int,
foreign key (car_Brendid) references car_brands (id),
title varchar (255)
);
insert into qa_auto.car_models values (1, 1, "Q7");
insert into qa_auto.car_models values (2, 2, "911");
insert into qa_auto.car_models values (3, 3, "X5");
insert into qa_auto.car_models values (4, 4, "Focus");
insert into qa_auto.car_models values (5, 5, "Panda");

