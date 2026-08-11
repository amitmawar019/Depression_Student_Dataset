
use [Tableau Project 1]

select * from [dbo].[Depression+Student+Dataset]

select Gender, count(*) from [dbo].[Depression+Student+Dataset]
group by Gender

update [dbo].[Depression+Student+Dataset]
set Gender = 'F' where Gender = 'Female'

update [dbo].[Depression+Student+Dataset]
set Gender = 'M' where Gender = 'male'


select * from [dbo].[Depression+Student+Dataset]
where Gender is null

select Age, count(*) from [dbo].[Depression+Student+Dataset]
group by Age
order by Age desc

alter table [dbo].[Depression+Student+Dataset]
add Age_Group Varchar(max)

update [dbo].[Depression+Student+Dataset]
set Age_Group =
case when Age between 18 and 24 then 'A1'
else case when Age between 25 and 30 then 'A2'
else 'A3' end end


select * from [dbo].[Depression+Student+Dataset]

select Age_Group, count(*) from [dbo].[Depression+Student+Dataset]
group by Age_Group

select * from INFORMATION_SCHEMA.columns where table_name
like 'Depression+Student+Dataset'

select Academic_Pressure, count(*) from [dbo].[Depression+Student+Dataset]
group by Academic_Pressure

select Study_Satisfaction, count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Satisfaction

select Sleep_Duration, count(*) from [dbo].[Depression+Student+Dataset]
group by Sleep_Duration

select Dietary_Habits, count(*) from [dbo].[Depression+Student+Dataset]
group by Dietary_Habits

select Have_you_ever_had_suicidal_thoughts, count(*) from [dbo].[Depression+Student+Dataset]
group by Have_you_ever_had_suicidal_thoughts

select Study_Hours, count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Hours

select Financial_Stress, count(*) from [dbo].[Depression+Student+Dataset]
group by Financial_Stress

select Family_History_of_Mental_Illness, count(*) from [dbo].[Depression+Student+Dataset]
group by Family_History_of_Mental_Illness

select Depression, count(*) from [dbo].[Depression+Student+Dataset]
group by Depression

select Age_Group, count(*) from [dbo].[Depression+Student+Dataset]
group by Age_Group


select * from [dbo].[Depression+Student+Dataset]

alter table [dbo].[Depression+Student+Dataset]
add Index_Column int identity (1,1)

alter table [dbo].[Depression+Student+Dataset]
alter column Depression varchar(MAX)

update [dbo].[Depression+Student+Dataset]
set Depression = 'N0' where Depression = 0

update [dbo].[Depression+Student+Dataset]
set Depression = 'YES' where Depression = '1'

select Depression, count(*) from [dbo].[Depression+Student+Dataset]
group by Depression