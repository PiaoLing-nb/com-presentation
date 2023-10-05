## JOINS

![image](https://github.com/PiaoLing-nb/com-presentation/assets/138830908/465d576d-199e-4ff0-b289-a7c610896e20)


## Data

Our database consists of two tables.

**epa_air_quality**

This table has a unique identifier in site_id along with its daily_mean_pm10_conentration & daily_aqi_value.

<img width="606" alt="Screenshot 2023-10-04 at 11 37 24 AM" src="https://github.com/metc1999/demo/assets/138830908/868fb250-d60f-4789-b2e1-0df0bcc66c4e">

**epa_site_location**

This table has a unique identifier in site_id along with its site latitude, site longitude, county & state.

<img width="661" alt="Screenshot 2023-10-04 at 11 37 55 AM" src="https://github.com/metc1999/demo/assets/138830908/f6bc456e-a72f-468b-822f-3189c785fe83">


## Different Types of Joins
**Inner Join**

An Inner Join is a type of SQL operation used to combine rows from two or more tables based on a related column between them. It returns only the rows for which there is a match in both tables, effectively filtering out rows that do not have corresponding values in the specified columns. Following is the output after we perform an *INNER JOIN* of 'epa_air_quality' and 'epa_site_location' on *site_id*.

<img width="837" alt="Screenshot 2023-10-04 at 11 57 57 AM" src="https://github.com/metc1999/demo/assets/138830908/1031eb11-34ca-4f92-82bd-524bc80dbfe7">


**Cross Join**

A cross join, combines each row from one table with every row from another table, resulting in a Cartesian product of the two tables. In other words, it creates all possible combinations of rows between the two tables.


**LEFT(OUTER) Join**

Retrieves all rows from the left table (the first table specified) and the matching rows from the right table (the second table specified). If there is no match in the right table, NULL values are returned for columns from the right table.


**Right(OUTER) Join**

This query returns all rows from both tables, including both matching and non-matching rows.If there is no match in the left table, NULL values are returned for columns from the left table.


**Full(OUTER)Join**

Retrieves all rows when there is a match in either the left or the right table. If there is no match in one of the tables, NULL values are returned for columns from the table without a match.

Code:
The demo of our code to illustrate joins can be found here:











