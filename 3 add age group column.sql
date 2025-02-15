select  Age, count(*) [total age] from [dbo].[Depression+Student+Dataset] 
group by Age
order by Age 

alter table [dbo].[Depression+Student+Dataset]
add Age_group  varchar(max)


update [dbo].[Depression+Student+Dataset]
set Age_group = CASE
	when age between 18 and 24 then 'A1'
	when age between 25 and 30 then 'A2'
	ELSE 'A3'
END;

DROP Age_group from [dbo].[Depression+Student+Dataset]
