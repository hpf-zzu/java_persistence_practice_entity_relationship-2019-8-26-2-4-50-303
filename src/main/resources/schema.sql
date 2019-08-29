-- CREATE TABLE employee (
--   id INTEGER PRIMARY KEY,
--   name VARCHAR(64) NOT NULL,
--   age   int(4) NOT NULL
-- );
create table employee(
employeeID integer  primary key ,
employeeName varchar(30) NOT null,
age int not null,
companyID int constraint FK_company_cid foreign key references company(companyID),
homeAddress varchar(256),
vacation datetime_interval_code not null ,
);

create table system_administrator(
sysAdminID int  primary key ,
userName varchar(30) not null ,
password varchar(30) not null
);

create table company(
companyID int primary key,
companyName varchar(30) not null,
sysAdminID int);
ALTER TABLE company ADD CONSTRAINT FK_system_administrator FOREIGN KEY(sysAdminID ) REFERENCES system_administrator(sysAdminID);


create table employee(
employeeID int  primary key ,
employeeName varchar(30) NOT null,
age int not null,
homeAddress varchar(256),
vacation date not null ,
companyID int not null

);
ALTER TABLE employee ADD CONSTRAINT FK_company_cid FOREIGN KEY(companyID) REFERENCES company(companyID);


create table company_administrator(
companyAdminID int primary key ,
companyAdminName varchar(30),
companyID int not null
);
ALTER TABLE company_administrator ADD CONSTRAINT FK_company FOREIGN KEY(companyID) REFERENCES company(companyID);

CREATE TABLE  employee (
  employeeID int PRIMARY KEY,
  employeeName VARCHAR(64) NOT NULL,
  age   int(4) NOT NULL
);

CREATE TABLE parking_lot(
parkingLotID int not null primary key ,
capatity int not null,
availablePositionCount int not null,
employeeID int not null
);
ALTER TABLE parking_lot ADD CONSTRAINT FK_employee FOREIGN KEY(employeeID) REFERENCES employee(employeeID);

CREATE TABLE  parking_boy (
  parkingBoyID int PRIMARY KEY,
  parkingBoyName VARCHAR(64) NOT NULL,
  age   int(4) NOT NULL
);

CREATE TABLE parking_lot(
parkingLotID int not null primary key ,
capatity int not null,
availablePositionCount int not null,
parkingBoyID int not null
);
ALTER TABLE parking_lot ADD CONSTRAINT FK_parking_boy FOREIGN KEY(parkingBoyID) REFERENCES parking_boy(parkingBoyID);