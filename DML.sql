

INSERT INTO admin177 (admin_id, username, password)VALUES(1, 'admin1', 'password1');
INSERT INTO admin177 (admin_id, username, password)VALUES(2, 'admin2', 'password2');
INSERT INTO admin177 (admin_id, username, password)VALUES(3, 'admin3', 'password3');
INSERT INTO admin177 (admin_id, username, password)VALUES(4, 'admin4', 'password4');
INSERT INTO admin177 (admin_id, username, password)VALUES(5, 'admin5', 'password5');
INSERT INTO admin177 (admin_id, username, password)VALUES(6, 'admin6', 'password6');





INSERT INTO user177 (user_id, name, email, phone)VALUES(1, 'Sadia Jahan', 'sadiajahan01@gmail.com', '01712345678');
INSERT INTO user177 (user_id, name, email, phone)VALUES(2, 'Setu Khan', 'setukhan02@gmail.com', '01812345678');
INSERT INTO user177 (user_id, name, email, phone)VALUES(3, 'Ali Rahman', 'alirahman03@gmail.com', '01912345678');
INSERT INTO user177 (user_id, name, email, phone)VALUES(4, 'Babar Ali', 'babarali04@gmail.com', '01612345678');
INSERT INTO user177 (user_id, name, email, phone)VALUES(5, 'Keka Sen', 'kekasen05@gmail.com', '01512345678');
INSERT INTO user177 (user_id, name, email, phone)VALUES(6, 'Dulal Arman', 'dulalarman06@gmail.com', '01412345678');




INSERT INTO package177 (package_id,admin_id, name, description, price)VALUES(1,1, 'Coxs Bazar Tour', 'Explore the longest natural sea beach', '5000.00');
INSERT INTO package177 (package_id,admin_id, name, description, price)VALUES(2,2, 'Sundarbans Tour', 'Discover the largest mangrove forest', '8000.00');
INSERT INTO package177 (package_id,admin_id, name, description, price)VALUES(3,3, 'Sylhet Tea Garden Tour', 'Experience the beauty of tea gardens', '6000.00');
INSERT INTO package177 (package_id,admin_id, name, description, price)VALUES(4,4, 'Rangamati Lake Tour', 'Enjoy the scenic beauty of lakes', '7000.00');
INSERT INTO package177 (package_id,admin_id, name, description, price)VALUES(5,5, 'Saint Martin Island Tour', 'Visit the only coral island in Bangladesh', '4000.00');
INSERT INTO package177 (package_id,admin_id, name, description, price)VALUES(6,6, 'Bandarban Hill Track Tour', 'Explore the hills and tribal culture', '5500.00');




INSERT INTO booking177 (booking_id,user_id, package_id, start_date, end_date, booking_date, status)VALUES(1,1,1,'2023-04-15','2023-04-20','2023-04-10','CONFIRMED');
INSERT INTO booking177 (booking_id,user_id, package_id, start_date, end_date, booking_date, status)VALUES(2,2,2,'2023-05-01','2023-05-05','2023-04-20','PENDING');
INSERT INTO booking177 (booking_id,user_id, package_id, start_date, end_date, booking_date, status)VALUES(3,3,3,'2023-06-10','2023-06-15','2023-06-01','CONFIRMED');
INSERT INTO booking177 (booking_id,user_id, package_id, start_date, end_date, booking_date, status)VALUES(4,4,4,'2023-07-01','2023-07-05','2023-07-01','CANCELLED');
INSERT INTO booking177 (booking_id,user_id, package_id, start_date, end_date, booking_date, status)VALUES(5,5,5,'2023-08-20','2023-08-25','2023-08-15','CONFIRMED');
INSERT INTO booking177 (booking_id,user_id, package_id, start_date, end_date, booking_date, status)VALUES(6,6,6,'2023-09-10','2023-09-15','2023-08-30','PENDING');




INSERT INTO issue177 (issue_id, booking_id,admin_id, user_id, description, issue_date, status)VALUES(1, 1,1, 1, 'I need to reschedule my booking', '2023-04-10', 'OPEN');
INSERT INTO issue177 (issue_id, booking_id,admin_id, user_id, description, issue_date, status)VALUES(2, 2,2, 2, 'I have a special request for my booking', '2023-04-20', 'CLOSED');
INSERT INTO issue177 (issue_id, booking_id,admin_id, user_id, description, issue_date, status)VALUES(3, 3,3, 3, 'I need to cancel my booking', '2023-06-01', 'OPEN');
INSERT INTO issue177 (issue_id, booking_id,admin_id, user_id, description, issue_date, status)VALUES(4, 4,4, 4, 'I have a question about my booking', '2023-07-01', 'OPEN');
INSERT INTO issue177 (issue_id, booking_id,admin_id, user_id, description, issue_date, status)VALUES(5, 5,5, 5, 'I need assistance during my tour', '2023-08-22', 'OPEN');
INSERT INTO issue177 (issue_id, booking_id,admin_id, user_id, description, issue_date, status)VALUES(6, 6,6, 6, 'I have a complaint regarding my booking', '2023-09-01','OPEN');




INSERT INTO payment_method177 (payment_method_id, name, description)VALUES(1, 'Cash', 'Pay in person at our office');
INSERT INTO payment_method177 (payment_method_id, name, description)VALUES(2, 'Credit Card', 'Pay online with your credit card');
INSERT INTO payment_method177 (payment_method_id, name, description)VALUES(3, 'Bank Transfer', 'Transfer money directly to our bank account');




INSERT INTO payment177 (payment_id, booking_id, user_id, payment_method_id, amount, payment_date)VALUES(1, 1, 1, 1, '5000.00', '2023-04-15');
INSERT INTO payment177 (payment_id, booking_id, user_id, payment_method_id, amount, payment_date)VALUES(2, 2, 2, 2, '4000.00', '2023-05-01');
INSERT INTO payment177 (payment_id, booking_id, user_id, payment_method_id, amount, payment_date)VALUES(3, 3, 3, 3, '6000.00', '2023-06-10');
INSERT INTO payment177 (payment_id, booking_id, user_id, payment_method_id, amount, payment_date)VALUES(4, 4, 4, 1, '3500.00', '2023-07-01');
INSERT INTO payment177 (payment_id, booking_id, user_id, payment_method_id, amount, payment_date)VALUES(5, 5, 5, 2, '4500.00', '2023-08-20');
INSERT INTO payment177 (payment_id, booking_id, user_id, payment_method_id, amount, payment_date)VALUES(6, 6, 6, 3, '5000.00', '2023-09-10');




set pagesize 200
set linesize 300


select * from payment177;
select * from issue177;
select * from booking177;
select * from payment_method177;
select * from package177;
select * from user177;
select * from admin177;
select * from payment_method177 where payment_method_id=(select payment_method_id from payment177 where amount='6000.00');--Displaying table data using SELECT command







update payment177 set payment_date='2023-08-10' where payment_id='6';--Updating the data in a table


delete from  payment177 where payment_date='2023-08-10';--Deleting row from a table

select status from booking177 where status='cancelled' union select status from booking177 where status='nothing';--union, intersect, and except

with max_amount(val) as (select max(amount) from payment177)
select * from payment177,max_amount where payment177.amount=max_amount.val;--With clause




select count(*) from admin177;--We count how many row exist in dept table.
select count(amount) as amount_payment from payment177;--We also give alias name to any output in select command.

select count(distinct amount) as amount_payment from payment177;--We can count distinct rows name in table.
select avg(amount) from payment177;
select sum(amount) from payment177;--We can count average and total a columnn table.


select max(amount) from payment177;
select min(amount) from payment177;--We can find max and min  from  table.


select payment_date,avg(amount) from payment177 group by payment_date;--Group by and Having

select payment_date,avg(amount) from payment177 group by payment_date having avg(amount)>5000;


select * from payment_method177 where name='cash' and payment_method_id in (select payment_method_id from payment177 where payment_date='2023-04-15');--Set Membership(AND, OR,NOT)



select * from payment177 where amount> some(select amount from payment177 where amount>=5000);
select * from payment177 where amount> all(select amount from payment177 where amount>=5000);

select * from payment177 where amount>=5000 and exists(select * from payment_method177 where name='cash');--some/all/exists/unique


SELECT * FROM payment_method177 WHERE NAME LIKE '%a%';--String operations



select * from booking177 natural join payment177 where booking_id='2';--Join operations
select name,description from payment_method177 left outer join payment177 using(payment_method_id);
select name,description from payment_method177 right outer join payment177 using(payment_method_id);
select name,description from payment_method177 full outer join payment177 using(payment_method_id);
select name,description from payment_method177 left outer join payment177 on payment_method177.payment_method_id=payment177.payment_method_id;




create view payment_details as select payment_id,amount from payment177;--Views
