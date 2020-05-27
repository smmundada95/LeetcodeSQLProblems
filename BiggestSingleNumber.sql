/*
Leetcode question #619
Biggest Single Number

Table my_numbers contains many numbers in column num including duplicated ones.
Can you write a SQL query to find the biggest number, which only appears once.

+---+
|num|
+---+
| 8 |
| 8 |
| 3 |
| 3 |
| 1 |
| 4 |
| 5 |
| 6 | 
For the sample data above, your query should return the following result:
+---+
|num|
+---+
| 6 |
Note:
If there is no such number, just output null.
*/

select max(num) as num
from
(
    select num
    from
    (
        select num, count(num) as cnt
        from my_numbers
        group by num
    ) t 
    where cnt = 1
)t2;
