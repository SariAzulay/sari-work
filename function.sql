use [WorkSara]
--1
select  top 3 Price,NameProduct
from Prodacts p
join Categories c 
on c.Id=p.CategoryId
where c.Name='vegetables' 
order by p.Price desc


--2
select c.Name as CategoryName , p.CategoryId,p.NameProduct,p.Price from Prodacts p
join Categories c on c.Id=p.CategoryId

--3
ALTER TABLE Prodacts 
ADD Description varchar(50)

--4
select p.CategoryId,p.Price,p.NameProduct ,p.Description
from Prodacts p
update   Prodacts
set Description=NameProduct+'_Desc'

--5
 UPDATE Prodacts 
 set Price=30
 where NameProduct='laundry detergent'