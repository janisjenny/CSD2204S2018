MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.03 sec)

MariaDB [csd2204s18]> select * from customer by name desc,city asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'by name desc,city asc' at line 1
MariaDB [csd2204s18]> select * from customer order by name desc,city asc;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer LIMIT 3;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | MDC      | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto  | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by custID desc LIMIT 3;
+--------+---------------+----------+------------+------------+------+
| custId | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C10    | JAck Sp       | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special  | Specia   | GTA        | 418921     |   62 |
| C08    | Ashko Charles | AK       | USA        | 421044     |   72 |
+--------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by custID asc LIMIT 3;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | MDC      | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto  | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by custID desc LIMIT 3;
+--------+---------------+----------+------------+------------+------+
| custId | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C10    | JAck Sp       | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special  | Specia   | GTA        | 418921     |   62 |
| C08    | Ashko Charles | AK       | USA        | 421044     |   72 |
+--------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by custID 
    -> 
    -> ok
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ok' at line 3
MariaDB [csd2204s18]> select * from customer; 
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from (SELECT * from customer order by custID DESC limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [csd2204s18]> select * from (SELECT * from customer order by custID) order by custID DESC limit 3;
ERROR 1248 (42000): Every derived table must have its own alias
MariaDB [csd2204s18]> select * from customer(SELECT * from customer order by custID) order by custID DESC limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(SELECT * from customer order by custID) order by custID DESC limit 3' at line 1
MariaDB [csd2204s18]> select * from customer group by name;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer group by city;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select city from customer grroup by city;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'by city' at line 1
MariaDB [csd2204s18]> select city from customer group by city;
+------------+
| city       |
+------------+
| Brazil     |
| GTA        |
| MDC        |
| New Jersey |
| New York   |
| Toronto    |
| USA        |
+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count (city) "unique cities",city from customer group by ciy;
ERROR 1630 (42000): FUNCTION csd2204s18.count does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
MariaDB [csd2204s18]> select count (city) "unique cities",city from customer group by city;
ERROR 1630 (42000): FUNCTION csd2204s18.count does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
MariaDB [csd2204s18]> select count (city) "unique cities",city from customer group by city;
ERROR 1630 (42000): FUNCTION csd2204s18.count does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
MariaDB [csd2204s18]> select count(city) "unique cities",city from customer group by city;
+---------------+------------+
| unique cities | city       |
+---------------+------------+
|             1 | Brazil     |
|             1 | GTA        |
|             1 | MDC        |
|             1 | New Jersey |
|             2 | New York   |
|             3 | Toronto    |
|             1 | USA        |
+---------------+------------+
7 rows in set (0.02 sec)

MariaDB [csd2204s18]> select count(city) "no of customers",city from customer group by city;
+-----------------+------------+
| no of customers | city       |
+-----------------+------------+
|               1 | Brazil     |
|               1 | GTA        |
|               1 | MDC        |
|               1 | New Jersey |
|               2 | New York   |
|               3 | Toronto    |
|               1 | USA        |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(city) "no of customers",city from customer group by city having city like "new%";
+-----------------+------------+
| no of customers | city       |
+-----------------+------------+
|               1 | New Jersey |
|               2 | New York   |
+-----------------+------------+
2 rows in set (0.02 sec)

MariaDB [csd2204s18]> select city, COUNT(city) "no. of customers" from customer group by city having COUNT(city)>2;
+---------+------------------+
| city    | no. of customers |
+---------+------------------+
| Toronto |                3 |
+---------+------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer(SELECT * from customer order by custID) t order by custID DESC limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(SELECT * from customer order by custID) t order by custID DESC limit 3' at line 1
MariaDB [csd2204s18]> select * from (select * from customer order by custID DESC limit 3 ) t order by custID ASC;
+--------+---------------+----------+------------+------------+------+
| custId | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C08    | Ashko Charles | AK       | USA        | 421044     |   72 |
| C09    | Tony Special  | Specia   | GTA        | 418921     |   62 |
| C10    | JAck Sp       | Sparrow  | New Jersey | 102301     |   35 |
+--------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name REGEXP 'n$';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
| C05    | Donna Newman    | New      | Toronto  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.03 sec)

MariaDB [csd2204s18]> select * from customer where name REGEXP '^D';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name REGEXP '^,,a';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name REGEXP '^..a';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Charlies Theron | Cher     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where PostalCode REGEXP '^D';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where PostalCode REGEXP '^1';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where PostalCode REGEXP '^a+';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where NickName REGEXP '^a+';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C01    | Ashley        | Ash      | MDC  | 321200     |   34 |
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where NickName REGEXP '^a?';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where NickName REGEXP '^,(4)';
Empty set (0.01 sec)

MariaDB [csd2204s18]> select * from customer where city REGEXP '^,(4)';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city REGEXP '^.(4)';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.06 sec)

MariaDB [csd2204s18]> select * from customer where city REGEXP '^.{9}';
+--------+---------+----------+------------+------------+------+
| custId | name    | nickname | city       | postalCode | age  |
+--------+---------+----------+------------+------------+------+
| C10    | JAck Sp | Sparrow  | New Jersey | 102301     |   35 |
+--------+---------+----------+------------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city REGEXP '^.{10}';
+--------+---------+----------+------------+------------+------+
| custId | name    | nickname | city       | postalCode | age  |
+--------+---------+----------+------------+------------+------+
| C10    | JAck Sp | Sparrow  | New Jersey | 102301     |   35 |
+--------+---------+----------+------------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city REGEXP '^.{12}';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city rlike '^.{3}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | MDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specia   | GTA        | 418921     |   62 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city rlike '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Charlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M         | M        | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C10    | JAck Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2018-05-14 09:15:50 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> ALTER TABLE CUSTOMER ADD COLUMN dob DATE;
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> DESC customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| dob        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> update dob costomer SET dob = '1991-01-10' WHERE custID='C01';
ERROR 1146 (42S02): Table 'csd2204s18.dob' doesn't exist
MariaDB [csd2204s18]> update dob customer SET dob = '1991-01-10' where custID='C01';
ERROR 1146 (42S02): Table 'csd2204s18.dob' doesn't exist
MariaDB [csd2204s18]> update customer SET dob = '1991-01-10' where custID='C01';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer SET dob = '1996-05-09' where custID='C02';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer SET dob = '1994-05-09' where custID='C03';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer SET dob = '1995-11-03' where custID='C04';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer SET dob = '1995-16-01' where custID='C05';
Query OK, 1 row affected, 1 warning (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 1

MariaDB [csd2204s18]> update customer SET dob = '1995-10-22' where custID='C06';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer SET dob = '1992-11-07' where custID='C07';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer SET dob = '1996-05-07' where custID='C08';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer SET dob = '1985-08-28' where custID='C09';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer SET dob = '1995-06-17' where custID='C10';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> SELECT 8 from customer;
+---+
| 8 |
+---+
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
| 8 |
+---+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,dob, timestampdiff(year,dob,curdate()) "age" from customer;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-10 |   27 |
| Bob Marley      | 1996-05-09 |   22 |
| Charlies Theron | 1994-05-09 |   24 |
| Denial Jack     | 1995-11-03 |   22 |
| Donna Newman    | 0000-00-00 | NULL |
| Eston M         | 1995-10-22 |   22 |
| Bobby Chacko    | 1992-11-07 |   25 |
| Ashko Charles   | 1996-05-07 |   22 |
| Tony Special    | 1985-08-28 |   32 |
| JAck Sp         | 1995-06-17 |   22 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update customer SET dob = '1995-01-16' where custID='C05';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select name,dob, timestampdiff(year,dob,curdate()) "age" from customer;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-10 |   27 |
| Bob Marley      | 1996-05-09 |   22 |
| Charlies Theron | 1994-05-09 |   24 |
| Denial Jack     | 1995-11-03 |   22 |
| Donna Newman    | 1995-01-16 |   23 |
| Eston M         | 1995-10-22 |   22 |
| Bobby Chacko    | 1992-11-07 |   25 |
| Ashko Charles   | 1996-05-07 |   22 |
| Tony Special    | 1985-08-28 |   32 |
| JAck Sp         | 1995-06-17 |   22 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,dob, timestampdiff(day,dob,curdate()) "age" from customer;
+-----------------+------------+-------+
| name            | dob        | age   |
+-----------------+------------+-------+
| Ashley          | 1991-01-10 |  9986 |
| Bob Marley      | 1996-05-09 |  8040 |
| Charlies Theron | 1994-05-09 |  8771 |
| Denial Jack     | 1995-11-03 |  8228 |
| Donna Newman    | 1995-01-16 |  8519 |
| Eston M         | 1995-10-22 |  8240 |
| Bobby Chacko    | 1992-11-07 |  9319 |
| Ashko Charles   | 1996-05-07 |  8042 |
| Tony Special    | 1985-08-28 | 11947 |
| JAck Sp         | 1995-06-17 |  8367 |
+-----------------+------------+-------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,dob, timestampdiff(day,dob,curdate())  from customer;
+-----------------+------------+----------------------------------+
| name            | dob        | timestampdiff(day,dob,curdate()) |
+-----------------+------------+----------------------------------+
| Ashley          | 1991-01-10 |                             9986 |
| Bob Marley      | 1996-05-09 |                             8040 |
| Charlies Theron | 1994-05-09 |                             8771 |
| Denial Jack     | 1995-11-03 |                             8228 |
| Donna Newman    | 1995-01-16 |                             8519 |
| Eston M         | 1995-10-22 |                             8240 |
| Bobby Chacko    | 1992-11-07 |                             9319 |
| Ashko Charles   | 1996-05-07 |                             8042 |
| Tony Special    | 1985-08-28 |                            11947 |
| JAck Sp         | 1995-06-17 |                             8367 |
+-----------------+------------+----------------------------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,dob, timestampdiff(day,dob,curdate()) "age" from customer having age=22;
Empty set (0.00 sec)

MariaDB [csd2204s18]> select name,dob, timestampdiff(year,dob,curdate()) "age" from customer having age=22;
+---------------+------------+------+
| name          | dob        | age  |
+---------------+------------+------+
| Bob Marley    | 1996-05-09 |   22 |
| Denial Jack   | 1995-11-03 |   22 |
| Eston M       | 1995-10-22 |   22 |
| Ashko Charles | 1996-05-07 |   22 |
| JAck Sp       | 1995-06-17 |   22 |
+---------------+------------+------+
5 rows in set (0.00 sec)

