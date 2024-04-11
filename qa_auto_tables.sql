create schema QA_AUTO;
create table car_brands(
id varchar(255),
title varchar(255)
);
create table car_models(
id varchar(255),
car_Brandid varchar(255),
title varchar(255)
);
create table users(
id varchar(255),
first_name varchar(255),
last_name varchar(255),
email varchar(255),
password varchar(255)
);
create table cars(
id varchar(255),
userit varchar(255),
car_Brandid varchar(255),
car_Modelid varchar(255),
mileage varchar(255),
initial_Mileage varchar(255)
);
