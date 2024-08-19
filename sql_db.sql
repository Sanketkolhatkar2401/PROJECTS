create database electrons;
use electrons;
create table electrons(
id int ,
name varchar (20),
brand varchar(20),
price int,
inches int,
location varchar (20),
supplier varchar (20),
category varchar (20),
quality varchar (20),
manufacture varchar (20));
show databases;
show tables;
select*from electrons;
insert into electrons (id,name,brand,price,inches,location,supplier,category,quality,manufacture)
values
(1,"phone","samsung",20000,15,"hyderabad","flipkart","s21","excellent","india"),
(2,"phone","samsung",20000,15,"hyderabad","flipkart","galaxy","excellent","india"),
(3,"laptop","lenovo",258025,15,"delhi","amazon","i3","good","india"),
(4,"laptop","hp",12303,18,"chennai","amazon","i5","super","india"),
(5,"tab","apple",null,12,"chennai","dealar","i6","super","india"),
(6,"tab","apple",78950,null,"bengloore",null,"i3","better","china"),
(7,"computer","dell",null,23,"kerla",null,"i5","super",null),
(8,"mobile","apple",8520369,null,"kurnool","flipkart","14 pro","excellent","america"),
(9,"ac","daikin",1236054,15,"wayand","flipkart","inverter","super","india"),
(10,"ac","lenovo",1236054,15,null,"flipkart","inverter","super","china"),
(11,"phone","samsung",20000,15,"hyderabad","flipkart","s21","excellent","india"),
(12,"phone","samsung",20000,15,"hyderabad","flipkart","galaxy","excellent","india"),
(13,"laptop","lenovo",258025,15,"delhi","amazon","i3","good","india"),
(14,"laptop","hp",12303,18,"chennai","amazon","i5","super","india"),
(15,"tab","apple",null,12,"chennai","dealar","i6","super","india"),
(16,"tab","apple",78950,null,"bengloore",null,"i3","better","china"),
(17,"computer","dell",null,23,"kerla",null,"i5","super",null),
(18,"mobile","apple",8520369,null,"kurnool","flipkart","14 pro","excellent","america"),
(19,"ac","daikin",1236054,15,"wayand","flipkart","inverter","super","india"),
(20,"ac","lenovo",1236054,15,null,"flipkart","inverter","super","china"),
(21,"phone","samsung",20000,15,"hyderabad","flipkart","s21","excellent","india"),
(22,"phone","samsung",20000,15,"hyderabad","flipkart","galaxy","excellent","india"),
(23,"laptop","lenovo",258025,15,"delhi","amazon","i3","good","india"),
(24,"laptop","hp",12303,18,"chennai","amazon","i5","super","india"),
(25,"tab","apple",null,12,"chennai","dealar","i6","super","india"),
(26,"tab","apple",78950,null,"bengloore",null,"i3","better","china"),
(27,"computer","dell",null,23,"kerla",null,"i5","super",null),
(28,"mobile","apple",8520369,null,"kurnool","flipkart","14 pro","excellent","america"),
(29,"ac","daikin",1236054,15,"wayand","flipkart","inverter","super","india"),
(30,"ac","lenovo",1236054,15,null,"flipkart","inverter","super","china"),
(31,"phone","samsung",20000,15,"hyderabad","flipkart","s21","excellent","india"),
(32,"phone","samsung",20000,15,"hyderabad","flipkart","galaxy","excellent","india"),
(33,"laptop","lenovo",258025,15,"delhi","amazon","i3","good","india"),
(34,"laptop","hp",12303,18,"chennai","amazon","i5","super","india"),
(35,"tab","apple",null,12,"chennai","dealar","i6","super","india"),
(36,"tab","apple",78950,null,"bengloore",null,"i3","better","china"),
(37,"computer","dell",null,23,"kerla",null,"i5","super",null),
(38,"mobile","apple",8520369,null,"kurnool","flipkart","14 pro","excellent","america"),
(39,"ac","daikin",1236054,15,"wayand","flipkart","inverter","super","india"),
(40,"ac","lenovo",1236054,15,null,"flipkart","inverter","super","china"),
(41,"phone","samsung",20000,15,"hyderabad","flipkart","s21","excellent","india"),
(42,"phone","samsung",20000,15,"hyderabad","flipkart","galaxy","excellent","india"),
(43,"laptop","lenovo",258025,15,"delhi","amazon","i3","good","india"),
(44,"laptop","hp",12303,18,"chennai","amazon","i5","super","india"),
(45,"tab","apple",null,12,"chennai","dealar","i6","super","india"),
(46,"tab","apple",78950,null,"bengloore",null,"i3","better","china"),
(47,"computer","dell",null,23,"kerla",null,"i5","super",null),
(48,"mobile","apple",8520369,null,"kurnool","flipkart","14 pro","excellent","america"),
(49,"ac","daikin",1236054,15,"wayand","flipkart","inverter","super","india"),
(50,"ac","lenovo",1236054,15,null,"flipkart","inverter","super","china");
select*from electrons;
update electrons set price=5426 where id=5;
update electrons set price=1230 where id=7;
update electrons set price=4560 where id=15;
update electrons set price=7890 where id=17;
update electrons set price=1470 where id=25;
update electrons set price=2580 where id=27;
update electrons set price=9630 where id=35;
update electrons set price=7530 where id=37;
update electrons set price=9510 where id=45;
update electrons set price=8420 where id=47;
update electrons set inches=18 where id=6;
update electrons set inches=16 where id=8;
update electrons set inches=12 where id=16;
update electrons set inches=15 where id=18;
update electrons set inches=16 where id=26;
update electrons set inches=18 where id=28;
update electrons set inches=17 where id=36;
update electrons set inches=19 where id=38;
update electrons set inches=15 where id=46;
update electrons set inches=13 where id=48;
update electrons set location="chennai" where id=10;
update electrons set location="kurnool" where id=20;
update electrons set location="vizag" where id=30;
update electrons set location="nandyal" where id=40;
update electrons set location="tamilnadu" where id=50;
update electrons set supplier="meesho" where id=6;
update electrons set supplier="dealer" where id=7;
update electrons set supplier="amazon" where id=16;
update electrons set supplier="flipkart" where id=17;
update electrons set supplier="online order" where id=26;
update electrons set supplier="dealer" where id=27;
update electrons set supplier="meesho" where id=36;
update electrons set supplier="flipkart" where id=37;
update electrons set supplier="instagram" where id=46;
update electrons set supplier="amazon" where id=47;
update electrons set manufacture="japan" where id=7;
update electrons set manufacture="chaina" where id=16;
update electrons set manufacture="india" where id=27;
update electrons set manufacture="america" where id=37;
update electrons set manufacture="japan" where id=47;