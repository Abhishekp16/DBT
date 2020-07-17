use sales2;
create table salespeople
(
  Snum int(4) PRIMARY KEY,
  Sname varchar(10) NOT NULL,
  City varchar(10) NOT NULL,
  Comm float(3,2)
);

create table customers
(
  Cnum int(4) PRIMARY KEY,
  Cname varchar(10) NOT NULL,
  City varchar(10) NOT NULL,
  Rating int(4),
  Snum int(4),
  FOREIGN KEY (Snum) REFERENCES salespeople (Snum)
);
create table orders
(
  Onum int(4) PRIMARY KEY,
  Amt float(7,2),
  Odate date,
  Snum int(4),
  Cnum int(4),
  FOREIGN KEY (Snum) REFERENCES salespeople(Snum),
  FOREIGN KEY (Cnum) REFERENCES customers (Cnum)
);


INSERT INTO salespeople VALUES('1001', 'peel','london',.12);
INSERT INTO salespeople VALUES('1002', 'serres','san jose',.13);
INSERT INTO salespeople VALUES('1004', 'motika','london',.11);
INSERT INTO salespeople VALUES('1007', 'rifkin','barcelona',.15);
INSERT INTO salespeople VALUES('1003', 'axelrod','new york',.10);


INSERT INTO customers VALUES('2001', 'hoffman','london',100,'1001');
INSERT INTO customers VALUES('2002', 'giovanni','rome',200,'1003');
INSERT INTO customers VALUES('2003', 'liu','san jose',200,'1002');
INSERT INTO customers VALUES('2004', 'grass','berlin',300,'1002');
INSERT INTO customers VALUES('2006', 'clemens','london',100,'1001');
INSERT INTO customers VALUES('2008', 'cisneros','san jose',300,'1007');
INSERT INTO customers VALUES('2007', 'pereira','rome',100,'1004');


INSERT INTO orders VALUES('3001', 18.69,'90-10-03','1007','2008');
INSERT INTO orders VALUES('3003', 767.19,'90-10-03','1001','2001');
INSERT INTO orders VALUES('3002', 1900.10,'90-10-03','1004','2007');
INSERT INTO orders VALUES('3005', 5160.45,'90-10-03','1002','2003');
INSERT INTO orders VALUES('3006', 1098.16,'90-10-03','1007','2008');
INSERT INTO orders VALUES('3009', 1713.23,'90-10-04','1003','2002');
INSERT INTO orders VALUES('3007', 75.75,'90-10-04','1003','2002');
INSERT INTO orders VALUES('3008', 4723.00,'90-10-05','1001','2006');
INSERT INTO orders VALUES('3010', 1309.95,'90-10-06','1002','2004');
INSERT INTO orders VALUES('3011', 9891.88,'90-10-06','1001','2006');

desc customers;
select * from customers;
select * from salespeople;
select * from orders;
 
 /*assignment 4*/
 
 select onum, amt, odate from orders;
select * from customers where snum=1001;
select city,sname,snum,comm from salespeople;
select rating,cname from customers where city='San Jose';
select distinct snum   from orders;
 
 /*assignment 5 */

select * from orders where amt > 1000;
select sname "Name", city "City" from salespeople where city='London' and comm > 0.10;
select * from customers where rating > 100 or city='Rome';

select * from Orders
   where (Amt <1000 OR NOT (Odate = "1990-10-03" AND Cnum >2003));

select * from Orders
     where NOT ((Odate ='1990-10-03' OR Snum >1006) AND Amt >-1500);


select * from salespeople ;

