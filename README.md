## JOINS

![image](https://github.com/PiaoLing-nb/com-presentation/assets/138830908/465d576d-199e-4ff0-b289-a7c610896e20)


## Data

Our database consists of two tables.

**epa_air_quality**

This table has a unique identifier in site_id along with its daily_mean_pm10_conentration & daily_aqi_value.

![image](https://github.com/PiaoLing-nb/com-presentation/assets/138830908/1b91a85a-3e8c-4b4b-b66f-8371e1f6cf1c)


**epa_site_location**

This table has a unique identifier in site_id along with its site latitude, site longitude, county & state.

![image](https://github.com/PiaoLing-nb/com-presentation/assets/138830908/df32063b-dfd1-440a-96bb-e82dfccdd536)



## Different Types of Joins
**Inner Join**

An Inner Join is a type of SQL operation used to combine rows from two or more tables based on a related column between them. It returns only the rows for which there is a match in both tables, effectively filtering out rows that do not have corresponding values in the specified columns. Following is the output after we perform an *INNER JOIN* of 'epa_air_quality' and 'epa_site_location' on *site_id*.

![image](https://github.com/PiaoLing-nb/com-presentation/assets/138830908/8b21af42-79e4-49ca-a197-193456bf5f08)



**Cross Join**

A cross join, combines each row from one table with every row from another table, resulting in a Cartesian product of the two tables. In other words, it creates all possible combinations of rows between the two tables.
Here is the first 10 output after *CROSS JOIN* the 'epa_air_quality' and 'epa_site_location'.

![result of cross join](https://github.com/PiaoLing-nb/com-presentation/blob/img/cross_join.png?raw=true "the first row of the left table is now matching each row in the right table")


**LEFT(OUTER) Join/RIGHT Join**

Retrieves all rows from the left/right table (the first/second table specified) and the matching rows from the right/right table (the second table specified). If there is no match in the right/left table, NULL values are returned for columns from the right/left table.
Basically, the right join is just doing left join in the reversely, as they are using the same logic just in the different order.
Here is the frist 10 output for *LEFT/RIGHT JOIN* on the 'epa_air_quality' and 'epa_site_location'.

![result of left join](https://github.com/PiaoLing-nb/com-presentation/blob/img/leftjoin.png?raw=true "every row in the left table is preserved, but not for the right table")

![result of right join](https://github.com/PiaoLing-nb/com-presentation/blob/img/rightjoin.png?raw=true "just the same trick, but this time everything in the right table is preserved")


**Full(OUTER)Join**

Retrieves all rows when there is a match in either the left or the right table. If there is no match in one of the tables, NULL values are returned for columns from the table without a match. Not like the cross join, this would not generate that much redundancy, and keeps all the information from the two tables.
And this is the first 10 results for *FULL JOIN* on the 'epa_air_quality' and 'epa_site_location'.

![reuslt of full join](https://github.com/PiaoLing-nb/com-presentation/blob/img/fulljoin.png?raw=true "we value the both table the same, so just keep everything")

Code:
The demo of our code to illustrate joins can be found here:
[Sample Query](/Code_Demo.sql)











