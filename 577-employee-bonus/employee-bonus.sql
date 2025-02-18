-- Write your PostgreSQL query statement below
select Employee.name, Bonus.bonus from Employee
full outer join Bonus on Employee.empId=Bonus.empId
where bonus < 1000 or bonus is null; 