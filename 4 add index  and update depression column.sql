select * from [Depression+Student+Dataset]

alter table [Depression+Student+Dataset]
add index_column int identity (1,1)

update [Depression+Student+Dataset]
set Depression = 
case
	when Depression = 0 then 'No'
	when Depression = 1 then 'Yes'
end;



alter table [Depression+Student+Dataset]
alter column Depression varchar(max)

select * from INFORMATION_SCHEMA.COLUMNS  where TABLE_NAME like 'Depression+Student+Dataset'