insert into qa_auto.users values (1, "Tom", "Cruise", "cruz@50email.com", "7777777");
insert into qa_auto.users values (2, "Brad", "Pitt", "pitt@55email.com", "5555555");
insert into qa_auto.users values (3, "Tom", "Hanks", "hanks@40email.com", "1111111");
insert into qa_auto.users values (4, "Morgan", "Freeman", "freeman@80email.com", "88888888");
insert into qa_auto.users values (5, "Anthony", "Hopkins", "HOP@85email.com", "6666666");

insert into qa_auto.cars values (1, "1", "Audi", "Q7", "55000", "0");
insert into qa_auto.cars values (2, "2", "Porsche", "911", "30000", "0");
insert into qa_auto.cars values (3, "3", "BMW", "X5", "10000", "0");
insert into qa_auto.cars values (4, "4", "Ford", "Focus", "25000", "0");
insert into qa_auto.cars values (5, "5", "Fiat", "Panda", "15000", "0");

insert into qa_auto.car_models values (1, "Audi", "Q7");
insert into qa_auto.car_models values (2, "Porsche", "911");
insert into qa_auto.car_models values (3, "BMW", "X5");
insert into qa_auto.car_models values (4, "Ford", "Focus");
insert into qa_auto.car_models values (5, "Fiat", "Panda");

insert into qa_auto.car_brands values (1, "Audi");
insert into qa_auto.car_brands values (2, "BMW");
insert into qa_auto.car_brands values (3, "Porsche");
insert into qa_auto.car_brands values (4, "Ford");
insert into qa_auto.car_brands values (5, "Fiat");

alter table car_brands add column car_Brandid int;
alter table users add column car_Brandid int;
alter table car_models add column car_Brandid int;
alter table car_brands add column userit int;
alter table users add column userit int;
alter table car_models add column userit int;
alter table car_brands add column car_models int;
alter table users add column car_models int;
alter table car_models add column car_models int;




