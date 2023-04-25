CREATE DATABASE Project

use Project ;

create table Departments
(
D_Name varchar(20) primary key not null,
Location varchar (20) not null,
INS_ID varchar(10)
);
create table Instructor
(
I_ID varchar (10) primary key not null,
F_Name varchar(20) not null ,
L_Name varchar (20) not null ,
Phone int not null, 
D_Name varchar(20),
constraint INS_Dep_fk foreign key (D_Name)
references Departments (D_Name)
);
create table Student
(
S_ID varchar (10) primary key not null,
F_Name varchar(20) not null ,
L_Name varchar (20) not null ,
Phone int not null, 
);
create table Course
(
C_ID varchar (10) primary key not null,
Name varchar(20) not null ,
Duration varchar (20) not null , 
Ins_ID varchar(10),
constraint INS_Course_fk foreign key (Ins_ID)
references Instructor (I_ID)
);