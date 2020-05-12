/*
Leetcode question #176
Second Highest Salary

Write a SQL query to get the second highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+

For example, given the above Employee table, the query should return 200 as the second 
highest salary. If there is no second highest salary, then the query should return null.

+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+
*/

/* Solution using limit and offset*/
Select
(Select distinct Salary 
from Employee 
order by Salary desc
limit 1 
offset 1)
as SecondHighestSalary;

/*Solution using nested max */
Select Max(Salary) as SecondHighestSalary
from Employee 
where Salary not in (Select max(Salary) from Employee);

