select * from [dbo].[Depression+Student+Dataset]

update [dbo].[Depression+Student+Dataset]
set Gender = CASE
	when Gender = 'Male' then  'M'
	when Gender = 'Female' then 'F'
	else Gender
end;


select * from [dbo].[Depression+Student+Dataset] 
where Gender is null

select * from [dbo].[Depression+Student+Dataset] 
where Gender = ' '


  
