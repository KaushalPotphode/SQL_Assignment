use first_schema;

create table salesperson
(
	salesman_id int primary key,
    name varchar(255),
    city varchar(255),
    commission int
);

create table customer
(
	customer_id int,
    cust_name varchar(255),
    city varchar(255), 
    grade int, 
    salesman_id int,
    
    foreign key (salesman_id) references salesperson(salesman_id)
);

insert into salesperson values(5001, 'James Hoog', 'New York', 0.15);
insert into salesperson values(5002, 'Nail Knite', 'Paris', 0.13);
insert into salesperson values(5005, 'Pit Alex', 'London', 0.11);
insert into salesperson values(5006, 'Mc Lyon', 'Paris', 0.14);
insert into salesperson values(5007, 'Paul Adam', 'Rome', 0.13);
insert into salesperson values(5003, 'Lauson Hen','San Jose', 0.12);

insert into customer values(3002,'Nick Rimando','New York',100, 5001);
insert into customer values(3007, 'Brad Davis', 'New York', 200, 5001);
insert into customer values(3005,'Graham Zusi','California',200, 5002);
insert into customer values(3008, 'Julian Green','London',300,5002);
insert into customer values(3004,'Fabian Johnson','Paris', 300, 5006);
insert into customer values(3009,'Geoff Cameron','Berlin',100,5003);
insert into customer values(3009, 'Geoff Cameron','Berlin',100,5003);
insert into customer(customer_id, cust_name, city, salesman_id) values(3001,'Brad Guzan','London',5005);

select * from salesperson;
select * from customer;

select s.name "Salesman", c.cust_name, c.city
from salesperson s join customer c
on s.city = c.city;
