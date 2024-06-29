# sql-challenge

## Important Notes

- When navigating this dataset, please note that my answers for each task are saved as "views" to avoid the code being deleted/stored in the "Query History" which can make it difficult to see.

## Citing My Sources

### Xpert

- Had me change my original code so that the employees table references the titles table, instead of vice versa, and it also removed an unneccessary line of code regarding a foreign key in the titles table.
- SELECT constraint_name
FROM information_schema.table_constraints
WHERE table_name = 'dept_employees' AND constraint_type = 'PRIMARY KEY';

  ^ To help me find a constraint name to create a composite key instad of a primary key in an already existing table.
- While I wrote my own code for the first question in the "data analysis" section, I would like to note that I was able to do this after asking xpert to give me an example of how to join two tables when I want information from more than one table at a time.
- "where extract(year from cast(hire_date as date)) = 1986"

  ^ When trying to query information about employees who were hired in 1986
- I used the following example code provided by xpert to join three tables together for the third task of the data analysis portion:

  SELECT TableA.column1, TableB.column2, TableC.column3
	FROM TableA
	JOIN TableB ON TableA.CommonColumn = TableB.CommonColumn
	JOIN TableC ON TableB.AnotherCommonColumn = TableC.AnotherCommonColumn;
- I used this function because when I joined three tables together for task four, there were way more rows than I was expecting. While I don't believe it can be seen in my query history, I used the following code to confirm that all rows were unique and that there wasn't any duplicate information:

  select distinct *
	from public.dept_employees;

### AskBCS

- While the majority of my code with creating the tables was my own, an AskBCS assistant helped me change some of the data/variable types to the correct kind. Along with that, they also had me change the order that I created my tables in so that there wouldn't be any relationship conflicts.

### Tutoring

- For tasks 5-8 in the data analysis portion, I received some help from a tutor; I would like to emphasize the help that I got for questions 7 and 8, as I had trouble figuring out how to approach coding for those two.
- Along with that, my tutor recommended that I use an inner join instead of just a join function, to create good habits when working with large datasets.
