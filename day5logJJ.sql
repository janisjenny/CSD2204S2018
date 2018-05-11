MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> show tables;
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.11 sec)

MariaDB [csd2204s18]> create table persons(
    -> ID integer (3),
    -> lastname varchar(255) NOT NULL,
    -> firstname varchar(255) NOT NULL,
    -> age integer (3),
    -> constraint PK_person primary key (ID,LastName)
    -> );
Query OK, 0 rows affected (0.34 sec)

MariaDB [csd2204s18]> desc persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| lastname  | varchar(255) | NO   | PRI | NULL    |       |
| firstname | varchar(255) | NO   |     | NULL    |       |
| age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> SHOW INDEX FROM PERSONS;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | lastname    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.03 sec)

MariaDB [csd2204s18]> CREATE TABLE ORDERS (
    -> OrderID integer (3)  NOT NULL,
    -> OrderNumber integer (3)  NOT NULL,
    -> PersonID integer (3),
    -> PRIMARY KEY (ORDERID),
    -> OrderID integer (3)  NOT NULL,;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 6
MariaDB [csd2204s18]> CREATE TABLE ORDERS (
    -> OrderID integer (3)  NOT NULL,
    -> ID integer (3),
    -> OrderNumber integer (3)  NOT NULL,
    -> PRIMARY KEY (ORDERID),
    -> constraint FK_PersonOrder Foreign KEY(ID) REFERENCES PERSONS(ID)
    -> );
Query OK, 0 rows affected (0.28 sec)

MariaDB [csd2204s18]> SHOW INDEX FROM ORDERS;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | OrderID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PersonOrder |            1 | ID          | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

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
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE TABLE C1 AS SELECT * FROM CUSTOMER;
Query OK, 10 rows affected (0.27 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> CREATE TABLE C2 AS SELECT Name,postalCode  FROM CUSTOMER WHERE CITY="TORONTO";
Query OK, 3 rows affected (0.31 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> Select * FROM C1;
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

MariaDB [csd2204s18]> Select * FROM C2;
+--------------+------------+
| Name         | postalCode |
+--------------+------------+
| Bob Marley   | 100100     |
| Donna Newman | 130120     |
| Eston M      | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> DESC C1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c2                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE TABLE C3 LIKE CUSTOMER;
Query OK, 0 rows affected (0.22 sec)

MariaDB [csd2204s18]> SELECT * FROM C3;
Empty set (0.00 sec)

MariaDB [csd2204s18]> INSERT INTO C3 SELECT * FROM CUSTOMER;
Query OK, 10 rows affected (0.05 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> SELECT * FROM C3;
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

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> ALTER TABLE C3 ADD COLUMAN COUNTRY VARCHAR (100);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'COUNTRY VARCHAR (100)' at line 1
MariaDB [csd2204s18]> ALTER TABLE C3 ADD COLUMN COUNTRY VARCHAR (100);
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> ALTER TABLE C3 ADD COLUMN COUNTRY VARCHAR (40);
ERROR 1060 (42S21): Duplicate column name 'COUNTRY'
MariaDB [csd2204s18]> ALTER TABLE C3 MODIFY COLUMN COUNTRY VARCHAR (40);
Query OK, 10 rows affected (0.44 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> ALTER TABLE C3 CHANGE COLUMN CusID customerID varchar(5);
ERROR 1054 (42S22): Unknown column 'CusID' in 'c3'
MariaDB [csd2204s18]> ALTER TABLE c3 CHANGE COLUMN CusID customerID varchar(5);
ERROR 1054 (42S22): Unknown column 'CusID' in 'c3'
MariaDB [csd2204s18]> ALTER TABLE c3 CHANGE COLUMN CustID customerID varchar(5);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| COUNTRY    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 drop column nickname;
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| COUNTRY    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [csd2204s18]> ALTER TABLE c1 add PRIMARY KEY(cusID);
ERROR 1072 (42000): Key column 'cusID' doesn't exist in table
MariaDB [csd2204s18]> ALTER TABLE c1 add PRIMARY KEY(custID);
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.06 sec)

MariaDB [csd2204s18]> alter table c1 drop INDEX (custID);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(custID)' at line 1
MariaDB [csd2204s18]> alter table c1 drop INDEX custID;
ERROR 1091 (42000): Can't DROP 'custID'; check that column/key exists
MariaDB [csd2204s18]> DROP TABLE c1;
Query OK, 0 rows affected (0.14 sec)

MariaDB [csd2204s18]> create TABLE c1;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [csd2204s18]> create TABLE c1(
    -> name varchar(50),
    -> nickname varchar(50),
    -> city varchar(20),
    -> age integer(3,)
    -> custID varchar(5),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')
custID varchar(5),
)' at line 5
MariaDB [csd2204s18]> update c3 set country ='USA';
Query OK, 10 rows affected (0.03 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [csd2204s18]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | COUNTRY |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | MDC        | 321200     |   34 | USA     |
| C02        | Bob Marley      | Toronto    | 100100     |   23 | USA     |
| C03        | Charlies Theron | New York   | 120134     |   20 | USA     |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | USA     |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | USA     |
| C06        | Eston M         | Toronto    | 201023     |   65 | USA     |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | USA     |
| C08        | Ashko Charles   | USA        | 421044     |   72 | USA     |
| C09        | Tony Special    | GTA        | 418921     |   62 | USA     |
| C10        | JAck Sp         | New Jersey | 102301     |   35 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update c3 set country ='country' WHERE city IN('Toronto','GTA');
Query OK, 4 rows affected (0.06 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [csd2204s18]> DELETE FROM c2 where name = 'Bob Marley'; 
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> SELECT * FROM c2;
+--------------+------------+
| Name         | postalCode |
+--------------+------------+
| Donna Newman | 130120     |
| Eston M      | 201023     |
+--------------+------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> DELETE FROM c2;
Query OK, 2 rows affected (0.05 sec)

MariaDB [csd2204s18]> DESC c1;
ERROR 1146 (42S02): Table 'csd2204s18.c1' doesn't exist
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c2                   |
| c3                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> DESC c1;
ERROR 1146 (42S02): Table 'csd2204s18.c1' doesn't exist
MariaDB [csd2204s18]> DESC c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| Name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> show index from c2;
Empty set (0.00 sec)

MariaDB [csd2204s18]> show index from c1;
ERROR 1146 (42S02): Table 'csd2204s18.c1' doesn't exist
MariaDB [csd2204s18]> update c1 SET custID = 1 WHERE custID IS NULL;
ERROR 1146 (42S02): Table 'csd2204s18.c1' doesn't exist
MariaDB [csd2204s18]> update c1 SET custID = 1 WHERE custID IS NOT NULL;
ERROR 1146 (42S02): Table 'csd2204s18.c1' doesn't exist
MariaDB [csd2204s18]> update c2 SET custID = 1 WHERE custID IS NOT NULL;
ERROR 1054 (42S22): Unknown column 'custID' in 'where clause'
MariaDB [csd2204s18]> update c3 SET custID = 1 WHERE custID IS NOT NULL;
ERROR 1054 (42S22): Unknown column 'custID' in 'where clause'
MariaDB [csd2204s18]> select FROM * c1 WHERE custID IS NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM * c1 WHERE custID IS NULL' at line 1
MariaDB [csd2204s18]> select FROM * c2 WHERE custID IS NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM * c2 WHERE custID IS NULL' at line 1
MariaDB [csd2204s18]> select * FROM c2 WHERE custID IS NULL;
ERROR 1054 (42S22): Unknown column 'custID' in 'where clause'
MariaDB [csd2204s18]> select * FROM  c2 WHERE custID IS NULL;
ERROR 1054 (42S22): Unknown column 'custID' in 'where clause'
MariaDB [csd2204s18]> DESC c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| Name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [csd2204s18]> tee c:/users/735624/downloads/practicelogJanis.sql;
