drop table payment177;
drop table issue177;
drop table booking177;
drop table payment_method177;
drop table package177;
drop table user177;
drop table admin177;




CREATE TABLE admin177 (
  admin_id number(20),
  username VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  primary key(admin_id)
);




CREATE TABLE user177 (
  user_id number(20),
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  primary key(user_id)
);




CREATE TABLE package177 (
  package_id number(20),
  name VARCHAR(100) NOT NULL,
  description VARCHAR(200) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  primary key(package_id)
);





CREATE TABLE booking177 (
  booking_id number(30),
  user_id number(20),
  package_id number(20),
  start_date VARCHAR(10),
  end_date VARCHAR(10),
  booking_date VARCHAR(10),
  status VARCHAR(20) NOT NULL,
  primary key(booking_id),
  FOREIGN KEY (user_id) REFERENCES user177 (user_id),
  FOREIGN KEY (package_id) REFERENCES package177 (package_id)
);





CREATE TABLE issue177 (
  issue_id number(20),
  booking_id number(30),
  user_id number(20),
  description VARCHAR(200) NOT NULL,
  issue_date VARCHAR(10),
  status VARCHAR(20) NOT NULL,
  primary key(issue_id),
  FOREIGN KEY (booking_id) REFERENCES booking177 (booking_id),
  FOREIGN KEY (user_id) REFERENCES user177 (user_id)
);





CREATE TABLE payment_method177 (
  payment_method_id number(20),
  name VARCHAR(50) NOT NULL,
  description VARCHAR(200) NOT NULL,
  primary key(payment_method_id)
);




CREATE TABLE payment177 (
  payment_id number(30),
  booking_id number(30),
  user_id number(20),
  payment_method_id number(20),
  amount DECIMAL(10,2) NOT NULL,
  payment_date VARCHAR(10),
  primary key(payment_id),
  FOREIGN KEY (booking_id) REFERENCES booking177 (booking_id),
  FOREIGN KEY (user_id) REFERENCES user177 (user_id),
  FOREIGN KEY (payment_method_id) REFERENCES payment_method177 (payment_method_id)
);




set pagesize 200
set linesize 300


alter table booking177 add location char(20);//Add column in the table
alter table booking177 modify location varchar(23);//Modify column definition in the table
alter table booking177 rename column location to location2;//Rename the column name
alter table booking177 drop column location2;//Drop the column from table