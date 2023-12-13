use `real estate management`;

create table employee(
	id int primary key auto_increment,
    name varchar(50) not null,
    sal bigint not null,
    state varchar(20) not null,
    country varchar(20) not null default('india'),
    isactive bit default(1)
);

select * from employee;

insert into employee (name, sal, state, country, isactive) values ('Akash', 30000, 'Telangana', 'India', 1);

insert into employee (name, sal, state, country, isactive) values ('Naveen', 25000, 'Telangana', 'India', 1);

insert into employee (name, sal, state, country, isactive) values ('Subbu', 20000, 'Telangana', 'India', 1);

insert into employee (name, sal, state, country, isactive) values ('badri', 15000, 'Telangana', 'India', 1);

insert into employee (name, sal, state, country, isactive) values ('sonu', 10000, 'Telangana', 'India', 1);

insert into employee (name, sal, state, country, isactive) values ('raju', 31000, 'Telangana', 'India', 1), ('shyam', 20000, 'ap', 'India', 1);

select * from employee; 

select max(sal) from employee;

select min(sal) from employee;

select state, count(id) as noofemployee from employee group by state;

select country, state, count(id) as noofemployee from employee where sal>= 25000 group by country, state;

select country, state, count(id) as noofemployee from employee where sal>=20000 group by country, state;

select country, state, count(id) as noofemployee from employee where sal>=25000 group by state, country having count(id)>= 2;


