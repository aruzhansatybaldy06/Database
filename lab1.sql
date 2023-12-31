Create database lab2;

create table students(
    student_id integer primary key,
    first_name varchar(50),
    last_name varchar(50),
    date_of_birth date,
    major varchar(50),
    city varchar(50),
    gpa float8);

alter table students
alter column student_id type smallint;

alter table students
alter column student_id set not null;

alter table students
rename column date_of_birth to birth_date;

select * from students;

alter table students
add column email varchar(50);

alter table students
drop column major;

insert into students(student_id, first_name, last_name, birth_date, city, gpa, email)
values (1, 'Aruzhan', 'Serikbayeva', 05-01-04, 'Almaty', 3.6, 'aru@kbtu.kz'),
       (2, 'Firuza', 'Sagatkyzy', 11-04-05, 'Almaty', 3.8, 'fiko@kbtu.kz'),
       (3, 'Aknur', 'Seidazym', 23-07-05, 'Almaty', 3.9, 'arn@kbtu.kz'),
       (4, 'Nursaya', 'Saparbay', 09-02-05, 'Shymkent', 3.7, 'nurs@kbtu.kz');

select * from students;

select * from students where student_id = 2;

drop table students;

drop database lab2;

