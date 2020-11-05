create table Sales (
	store varchar,
	Dept varchar, 
	sales_date date, 
	weekly_sales float, 
	IsHoliday boolean,
	Primary Key ( sales_date, store)
	)

select * from sales
