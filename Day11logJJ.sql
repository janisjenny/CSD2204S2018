MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> create view v1 as select * from products;
Query OK, 0 rows affected (0.10 sec)

MariaDB [csd2204s18]> select * from v1;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.02 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c2                   |
| c3                   |
| countries            |
| cust_must            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movies               |
| orders               |
| persons              |
| products             |
| regions              |
| trans                |
| v1                   |
+----------------------+
21 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from v1;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

MariaDB [csd2204s18]> create view v1 as select * from products where price >100;
ERROR 1050 (42S01): Table 'v1' already exists
MariaDB [csd2204s18]> create view v2 as select * from products where price >100;
Query OK, 0 rows affected (0.04 sec)

MariaDB [csd2204s18]> create or replace view as select * from products where price >100;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'as select * from products where price >100' at line 1
MariaDB [csd2204s18]> create or replace view v1 as select * from products where price >100;
Query OK, 0 rows affected (0.01 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into v1 values(20,'USB port',89,2);
Query OK, 1 row affected (0.18 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> delete from v1 where code = 20;
Query OK, 0 rows affected (0.01 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name, price from the products where name like '%drive%';
ERROR 1146 (42S02): Table 'csd2204s18.the' doesn't exist
MariaDB [csd2204s18]> SELECT name, price from the products where name like '%drive%';
ERROR 1146 (42S02): Table 'csd2204s18.the' doesn't exist
MariaDB [csd2204s18]> SELECT name, price from the products where name like '%drive';
ERROR 1146 (42S02): Table 'csd2204s18.the' doesn't exist
MariaDB [csd2204s18]> SELECT name, price from  products where name like '%drive';
+------------+-------+
| name       | price |
+------------+-------+
| Hard drive |   240 |
| ZIP drive  |   150 |
| DVD drive  |   180 |
| CD drive   |    90 |
+------------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE or REPLACE view v2 as  SELECT name, price from  products where name like '%drive';
Query OK, 0 rows affected (0.02 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c2                   |
| c3                   |
| countries            |
| cust_must            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movies               |
| orders               |
| persons              |
| products             |
| regions              |
| trans                |
| v1                   |
| v2                   |
+----------------------+
22 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code, products.name, manu.name from manu inner join products on products.manufacturer = manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   20 | USB port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code, products.name,"products", manu.name "manufacturer" from manu inner join products on products.manufacturer = manu.code;
+------+-----------------+----------+-------------------+
| code | name            | products | manufacturer      |
+------+-----------------+----------+-------------------+
|    1 | Hard drive      | products | Fujitsu           |
|    2 | Memory          | products | Winchester        |
|    3 | ZIP drive       | products | Iomega            |
|    4 | Floppy disk     | products | Winchester        |
|    5 | Monitor         | products | Sony              |
|    6 | DVD drive       | products | Creative Labs     |
|    7 | CD drive        | products | Creative Labs     |
|    8 | Printer         | products | Hewlett-Packard   |
|    9 | Toner cartridge | products | Hewlett-Packard   |
|   10 | DVD burner      | products | Creative Labs     |
|   11 | Printer         | products | moxDroid Labs Inc |
|   12 | Toner cartridge | products | moxDroid Labs Inc |
|   13 | DVD burner      | products | moxDroid Labs Inc |
|   20 | USB port        | products | Creative Labs     |
+------+-----------------+----------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE or REPLACE view v3 as select  products.code, products.name,"products", manu.name "manufacturer" from manu inner join products on products.manufacturer = manu.code;
Query OK, 0 rows affected (0.04 sec)

MariaDB [csd2204s18]> select * from v3;
+------+-----------------+----------+-------------------+
| code | name            | products | manufacturer      |
+------+-----------------+----------+-------------------+
|    1 | Hard drive      | products | Fujitsu           |
|    2 | Memory          | products | Winchester        |
|    3 | ZIP drive       | products | Iomega            |
|    4 | Floppy disk     | products | Winchester        |
|    5 | Monitor         | products | Sony              |
|    6 | DVD drive       | products | Creative Labs     |
|    7 | CD drive        | products | Creative Labs     |
|    8 | Printer         | products | Hewlett-Packard   |
|    9 | Toner cartridge | products | Hewlett-Packard   |
|   10 | DVD burner      | products | Creative Labs     |
|   11 | Printer         | products | moxDroid Labs Inc |
|   12 | Toner cartridge | products | moxDroid Labs Inc |
|   13 | DVD burner      | products | moxDroid Labs Inc |
|   20 | USB port        | products | Creative Labs     |
+------+-----------------+----------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary > all (select avg(salary) from employees froup by department_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'by department_id)' at line 1
MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary > all (select avg(salary) from employees group by department_id);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.05 sec)

MariaDB [csd2204s18]> create or replace view v4 as select first_name, last_name, salary from employees where salary > all (select avg(salary) from employees group by department_id);
Query OK, 0 rows affected (0.02 sec)

MariaDB [csd2204s18]> select * from v4;
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> drop view if exists v5; 
Query OK, 0 rows affected, 1 warning (0.00 sec)

MariaDB [csd2204s18]> drop view if exists v1; 
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c2                   |
| c3                   |
| countries            |
| cust_must            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movies               |
| orders               |
| persons              |
| products             |
| regions              |
| trans                |
| v2                   |
| v3                   |
| v4                   |
+----------------------+
23 rows in set (0.00 sec)

MariaDB [csd2204s18]> drop view if exists v2; 
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c2                   |
| c3                   |
| countries            |
| cust_must            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movies               |
| orders               |
| persons              |
| products             |
| regions              |
| trans                |
| v3                   |
| v4                   |
+----------------------+
22 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from countries;
+------------+--------------------------+-----------+
| COUNTRY_ID | COUNTRY_NAME             | REGION_ID |
+------------+--------------------------+-----------+
| AR         | Argentina                |         2 |
| AU         | Australia                |         3 |
| BE         | Belgium                  |         1 |
| BR         | Brazil                   |         2 |
| CA         | Canada                   |         2 |
| CH         | Switzerland              |         1 |
| CN         | China                    |         3 |
| DE         | Germany                  |         1 |
| DK         | Denmark                  |         1 |
| EG         | Egypt                    |         4 |
| FR         | France                   |         1 |
| HK         | HongKong                 |         3 |
| IL         | Israel                   |         4 |
| IN         | India                    |         3 |
| IT         | Italy                    |         1 |
| JP         | Japan                    |         3 |
| KW         | Kuwait                   |         4 |
| MX         | Mexico                   |         2 |
| NG         | Nigeria                  |         4 |
| NL         | Netherlands              |         1 |
| SG         | Singapore                |         3 |
| UK         | United Kingdom           |         1 |
| US         | United States of America |         2 |
| ZM         | Zambia                   |         4 |
| ZW         | Zimbabwe                 |         4 |
+------------+--------------------------+-----------+
25 rows in set, 3 warnings (0.05 sec)

MariaDB [csd2204s18]> select * from trans;
+---------+----------+------------+---------+-------------+--------------------------------+
| ac_type | ac_no    | tdate      | counter | amount      | descr                          |
+---------+----------+------------+---------+-------------+--------------------------------+
| Aba     |   651251 | 2018-04-08 |  463910 |   213539.27 | faucibus orci luctus et ultric |
| Aba     |   831070 | 2017-07-03 |       5 | 12805793.00 | elementum eu interdum eu tinci |
| Aba     |   945387 | 2017-11-15 |  848381 | 65298444.00 | ipsum ac tellus semper interdu |
| Agi     |   195543 | 2017-10-26 |  619017 | 74058304.00 | mi pede malesuada in imperdiet |
| Bab     |   993776 | 2017-06-09 |       1 | 73082328.00 | nulla elit ac nulla sed vel en |
| Bro     | 41144030 | 2018-01-23 |      32 |    12158.75 | consequat lectus in est risus  |
| Bub     |   355471 | 2017-11-29 |  783921 | 80741632.00 | ac leo pellentesque ultrices m |
| Bub     |   990887 | 2017-12-26 |      62 |  9417467.00 | at dolor quis odio consequat v |
| Buz     |   645512 | 2018-04-30 |  993634 | 49954232.00 | massa id lobortis convallis to |
| Buz     |   774154 | 2017-09-03 |  202712 | 99071016.00 | pede lobortis ligula sit amet  |
| CHE     | 10849214 | 2018-05-13 |       5 |        0.00 | a nibh in quis justo maecenas  |
| CHE     | 89677433 | 2017-07-08 |      90 |        0.00 | ullamcorper purus sit amet nul |
| Div     |   160780 | 2017-06-13 |  199451 | 81357768.00 | quam pede lobortis ligula sit  |
| Edg     | 64924659 | 2018-04-06 |      84 |    48171.69 | nulla neque libero convallis e |
| Edg     | 67592167 | 2017-06-17 |      61 |        0.00 | velit vivamus vel nulla eget e |
| Fee     |   673250 | 2018-01-10 |       4 | 72438928.00 | leo pellentesque ultrices matt |
| Fli     |   755707 | 2018-01-06 |      71 | 41372892.00 | et ultrices posuere cubilia cu |
| Gab     |    46211 | 2017-05-25 |  824631 | 76421432.00 | posuere felis sed lacus morbi  |
| Gig     |   390985 | 2017-08-28 |      61 | 68799544.00 | tempor convallis nulla neque l |
| Jab     |   272784 | 2018-01-09 |      28 | 12986972.00 | suscipit ligula in lacus curab |
| Jab     |   453110 | 2018-05-02 |      90 | 16824346.00 | eget congue eget semper rutrum |
| Jab     |   769415 | 2017-10-28 |  910273 | 13095006.00 | tempus semper est quam pharetr |
| Jab     |   836587 | 2018-04-14 |      21 | 77260112.00 | justo pellentesque viverra ped |
| Jax     |   194888 | 2017-12-12 |      68 | 23038746.00 | nulla sed vel enim sit amet nu |
| Jax     |   337540 | 2017-12-14 |      82 | 81354736.00 | arcu sed augue aliquam erat vo |
| Jay     |   943640 | 2018-04-19 |      44 | 82490704.00 | nec sem duis aliquam convallis |
| Jaz     |   241031 | 2017-12-31 |       6 | 64578420.00 | magna at nunc commodo placerat |
| Jum     |    27482 | 2017-08-02 |      56 | 36497576.00 | ante ipsum primis in faucibus  |
| Jum     |   254460 | 2017-07-25 |      56 | 47151988.00 | nec nisi volutpat eleifend don |
| Kam     |   682472 | 2017-09-23 |   79517 | 11531126.00 | orci mauris lacinia sapien qui |
| Lee     |   531389 | 2017-10-02 |      24 | 14137535.00 | libero nam dui proin leo odio  |
| Lin     |   491908 | 2017-08-07 |  214206 | 52883464.00 | ultrices posuere cubilia curae |
| Lin     |   652241 | 2017-10-27 |      15 | 34723964.00 | lorem id ligula suspendisse or |
| Lin     |   835150 | 2018-01-17 |  728196 | 42228888.00 | enim lorem ipsum dolor sit ame |
| Lin     |   972376 | 2018-03-16 |  572348 | 90683344.00 | integer aliquet massa id lobor |
| Liv     |   604840 | 2017-07-01 |  690902 | 27247140.00 | orci mauris lacinia sapien qui |
| Liv     |   788606 | 2018-04-20 |  489594 | 12653284.00 | volutpat dui maecenas tristiqu |
| Mee     |   465446 | 2017-11-23 |      22 | 13717785.00 | ac nulla sed vel enim sit amet |
| Mee     |   828423 | 2018-05-12 |  659767 | 47721144.00 | sodales scelerisque mauris sit |
| Mud     |   644707 | 2018-03-27 |  502320 | 25398618.00 | in purus eu magna vulputate lu |
| Mux     |   450823 | 2017-09-07 |  321362 |  6947022.50 | suspendisse accumsan tortor qu |
| Mux     |   983243 | 2018-01-19 |      75 | 30870572.00 | ut massa quis augue luctus tin |
| Myd     |   250559 | 2017-09-14 |   69254 | 49742980.00 | mauris eget massa tempor conva |
| Omb     |   342722 | 2018-04-07 |      86 | 11172490.00 | ligula sit amet eleifend pede  |
| Ood     |   449708 | 2017-05-30 |  637200 | 13655159.00 | lobortis ligula sit amet eleif |
| Oyo     |   561625 | 2017-07-06 |      52 | 82061656.00 | justo eu massa donec dapibus d |
| Oyo     |   681847 | 2017-12-13 |      68 | 12153876.00 | quis odio consequat varius int |
| Pho     |   382170 | 2017-10-17 |  386719 | 35611520.00 | lacinia aenean sit amet justo  |
| Pho     |   772981 | 2017-12-10 |  417793 | 28022080.00 | ut volutpat sapien arcu sed au |
| Pix     |   222924 | 2018-04-19 |      26 | 52192204.00 | massa quis augue luctus tincid |
| Qua     |   908026 | 2017-10-11 |  452722 | 80989024.00 | a pede posuere nonummy integer |
| Qui     |   349825 | 2018-02-08 |  893779 | 42586188.00 | amet cursus id turpis integer  |
| Rea     |   239227 | 2018-01-14 |      37 | 39462976.00 | nec molestie sed justo pellent |
| Rea     |   821176 | 2017-12-02 |      22 | 69145424.00 | quis orci nullam molestie nibh |
| Rea     |   865314 | 2017-06-12 |  427695 | 20371534.00 | rutrum ac lobortis vel dapibus |
| Rhy     |   150528 | 2017-06-05 |      79 | 72675008.00 | vestibulum vestibulum ante ips |
| Rhy     |   497200 | 2017-12-30 |  735732 | 33441230.00 | in hac habitasse platea dictum |
| Rhy     |   814317 | 2018-01-18 |  815839 | 89933072.00 | adipiscing molestie hendrerit  |
| Rif     |   954021 | 2017-09-13 |  559137 | 66966140.00 | gravida sem praesent id massa  |
| Ska     |   581153 | 2017-05-26 |      16 | 32746124.00 | suspendisse potenti nullam por |
| Ska     |   630821 | 2017-05-27 |   36630 | 18372556.00 | quisque id justo sit amet sapi |
| Ski     |   605701 | 2017-07-15 |      37 | 83736856.00 | duis bibendum morbi non quam n |
| Ski     |   697502 | 2017-08-05 |       8 | 16034984.00 | vestibulum ac est lacinia nisi |
| Tag     |   388155 | 2018-03-18 |  372076 | 78495544.00 | pede malesuada in imperdiet et |
| Tal     |   185620 | 2017-07-26 |      13 | 19457504.00 | odio curabitur convallis duis  |
| Tal     |   257067 | 2017-06-09 |  668377 | 35149728.00 | aliquam non mauris morbi non l |
| Tav     |   615269 | 2017-11-28 |      28 | 65540524.00 | nec nisi vulputate nonummy mae |
| Tho     |   233927 | 2018-04-08 |      26 | 16563284.00 | sapien iaculis congue vivamus  |
| Tho     |   392077 | 2017-06-27 |  945603 | 31245150.00 | tempor convallis nulla neque l |
| Tho     |   805277 | 2018-03-15 |  556901 | 28585340.00 | consectetuer eget rutrum at lo |
| Top     |   205775 | 2018-01-31 |  816016 | 83300008.00 | metus sapien ut nunc vestibulu |
| Top     |   234217 | 2017-12-27 |  235921 | 34047712.00 | risus praesent lectus vestibul |
| Tri     |   139714 | 2018-04-13 |      30 |  5690315.00 | adipiscing molestie hendrerit  |
| Tri     |  3685916 | 2018-04-06 |       2 |    93731.13 | suspendisse potenti cras in pu |
| Tru     |   884513 | 2017-06-08 |      51 | 74051208.00 | vestibulum vestibulum ante ips |
| Tru     |   919557 | 2017-05-26 |  756241 | 58934236.00 | erat volutpat in congue etiam  |
| Vid     |   281538 | 2017-12-07 |      26 | 83389352.00 | tincidunt ante vel ipsum praes |
| Vin     |   251429 | 2018-02-11 |      56 | 12693852.00 | vel nisl duis ac nibh fusce la |
| Voo     |    44222 | 2017-07-27 |      52 | 58751428.00 | odio condimentum id luctus nec |
| Voo     |   848965 | 2017-05-24 |      30 |  2397259.00 | curae nulla dapibus dolor vel  |
| Voo     |   919747 | 2017-05-27 |    5353 | 98553792.00 | sed tristique in tempus sit am |
| Wik     |   938841 | 2017-05-30 |  168934 | 51328372.00 | vel pede morbi porttitor lorem |
| Yab     |   866109 | 2017-06-28 |  241486 | 43900680.00 | magna vulputate luctus cum soc |
| Yad     |   106817 | 2017-05-24 |      75 | 25351292.00 | convallis eget eleifend luctus |
| Yam     |   507596 | 2017-09-30 |      69 | 77781408.00 | ut nulla sed accumsan felis ut |
| Yat     | 28505401 | 2017-07-28 |      70 |    16082.52 | vestibulum proin eu mi nulla a |
| Yod     |   997107 | 2017-07-14 |  610596 | 29541246.00 | quis justo maecenas rhoncus al |
| You     |    64207 | 2018-04-18 |  480732 | 68109208.00 | mauris laoreet ut rhoncus aliq |
| Yov     | 78521278 | 2018-01-15 |      79 |     1157.68 | eu nibh quisque id justo sit a |
| Zoo     |   792213 | 2018-01-29 |      49 | 92786040.00 | neque aenean auctor gravida se |
| Zoo     |  7832593 | 2017-12-10 |      82 |        0.00 | vel lectus in quam fringilla r |
+---------+----------+------------+---------+-------------+--------------------------------+
91 rows in set (0.00 sec)

MariaDB [csd2204s18]> tee c:users/735624/ownloads/practicelogJanis.sql;
