create schema QA_AUTO;
create table car_brands(
id int(255),
title varchar(255)
);
create table car_models(
id int(255),
car_Brandid varchar(255),
title varchar(255)
);
create table users(
id int(255),
first_name varchar(255),
last_name varchar(255),
email varchar(255),
password varchar(255)
);
create table cars(
id int(255),
userit int(255),
car_Brandid int(255),
car_Modelid int(255),
mileage float(255),
initial_Mileage float(255)
);
