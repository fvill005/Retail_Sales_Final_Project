DROP table Sales;
DROP table features;



create table Sales (
	Store varchar,
	Dept varchar,
	Sales_date date,
	Weekly_sales float,
	IsHoliday boolean,
	Primary Key ( sales_date, store)
	)
	
create table features (
	
)




SELECT * FROM features;
SELECT * FROM Sales;





