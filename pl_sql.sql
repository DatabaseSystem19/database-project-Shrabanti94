set serveroutput on
declare 
package_id package177.package_id%type:=1;
package_name package177.package_NAME%type:='coxs bazar tour';

begin
insert into package values(package_id,package_name);
end;
/
--Insert and set default value

set serveroutput on
declare 
package_row package%rowtype;
begin
select package_id,package_name into package_row.package_id,package_row.package_name from package177 where package_id=1;
end;
/
--Row type



CREATE OR REPLACE PROCEDURE proc_1(p_payment_id IN NUMBER)
AS
    v_amount DECIMAL(10,2);
    v_payment_date VARCHAR(10);

BEGIN

    SELECT amount,payment_date
    INTO v_amount, v_payment_date
    FROM payment177
    WHERE payment_id = p_payment_id;

    DBMS_OUTPUT.PUT_LINE('amount: ' || v_amount);
    DBMS_OUTPUT.PUT_LINE('date: ' || v_payment_date);
END;
/
--procedure

set serveroutput on
declare 
cursor payment177_cursor is select payment_id, amount,payment_date from payment177;
payment177_row payment177%rowtype;
begin
open payment177_cursor;
fetch payment177_cursor into payment177_row.payment_id,payment177_row.amount,payment177_row.payment_date;
while payment177_cursor%found loop
if payment177_row.amount>=6000 
        then
        dbms_output.put_line('payment_id: '||payment177_row.payment_id|| ' payment is appropriate');
      elsif payment177_row.amount>=4000  
        then
        dbms_output.put_line('payment_id: '||payment177_row.payment_id|| ' payment is inappropriate');
      else 
        dbms_output.put_line('payment_id: '||payment177_row.payment_id|| ' payment is invalid');
        end if;

fetch payment177_cursor into payment177_row.payment_id,payment177_row.amount,payment177_row.payment_date;
end loop;
close payment177_cursor;

proc_1(1);
dbms_output.put_line(func_1(1));
end;
/
--cursor and if/else



CREATE OR REPLACE FUNCTION func_1(p_payment_id IN NUMBER)
RETURN NUMBER
IS
    v_total_amount NUMBER := 0;
BEGIN
    -- Calculate the total price for a given transaction
    SELECT SUM(amount)
    INTO v_total_amount
    FROM payment177 
    WHERE payment_id = p_payment_id;
    
    RETURN v_total_amount;
END;
/
--function


drop procedure proc_1;
drop function func_1;


SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER tri
BEFORE delete ON booking177 
REFERENCING OLD AS o NEW AS n
FOR EACH ROW
BEGIN
delete from package177 where package_id=:o.package_id;
delete from user177 where user_id=:o.user_id;
END;
/
