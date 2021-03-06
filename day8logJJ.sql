MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c2                   |
| c3                   |
| cust_must            |
| customer             |
| dept                 |
| emp                  |
| manu                 |
| movies               |
| orders               |
| persons              |
| products             |
| trans                |
+----------------------+
13 rows in set (0.00 sec)

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
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from name;
ERROR 1146 (42S02): Table 'csd2204s18.name' doesn't exist
MariaDB [csd2204s18]> select * from manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc manu;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| Code  | int(3)      | NO   | PRI | NULL    | auto_increment |
| Name  | varchar(50) | NO   |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code, products.name,manu.name
    -> from manu
    -> inner join products
    -> on products.code = manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
+------+-----------------+-------------------+
9 rows in set (0.03 sec)

MariaDB [csd2204s18]> select count(*),manufacturer
    -> from products as p
    -> inner join manu m
    -> on m.code=p.manufacturer
    -> group by manufacture;r
ERROR 1054 (42S22): Unknown column 'manufacture' in 'group statement'
    -> 
    -> :r
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'r

:r' at line 1
MariaDB [csd2204s18]> select count(*),manufacturer
    -> from products as p
    -> inner join manu m
    -> on m.code=p.manufacturer
    -> group by manufacturer;
+----------+--------------+
| count(*) | manufacturer |
+----------+--------------+
|        1 |            1 |
|        3 |            2 |
|        2 |            3 |
|        1 |            4 |
|        1 |            5 |
|        2 |            6 |
|        3 |            7 |
+----------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manufacturer,m.name,count(*) "no. of items produced" from products as p inne
    -> select manufacturer,m.name,count(*) "no. of items produced" from products as p inner join
    -> select manufacturer,m.name,count(*) "no. of items manufacturer have" from products as p inner join manu m
    -> on m.code=p.manufacturer
    -> group by manufacturer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'inne
select manufacturer,m.name,count(*) "no. of items produced" from products a' at line 1
MariaDB [csd2204s18]> select manufacturer,m.name,count(*) "number of items manufacturer have" from products as p inner join manu m
    -> on m.code=p.manufacturer
    -> group by manufacturer;
+--------------+-------------------+-----------------------------------+
| manufacturer | name              | number of items manufacturer have |
+--------------+-------------------+-----------------------------------+
|            1 | Sony              |                                 1 |
|            2 | Creative Labs     |                                 3 |
|            3 | Hewlett-Packard   |                                 2 |
|            4 | Iomega            |                                 1 |
|            5 | Fujitsu           |                                 1 |
|            6 | Winchester        |                                 2 |
|            7 | moxDroid Labs Inc |                                 3 |
+--------------+-------------------+-----------------------------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manufacturer,m.name,count(*) "no. of items manufacturer have" from products as p inner join manu m
    -> on m.code=p.manufacturer
    -> where m.code<4
    -> group by manufacturer;
+--------------+-----------------+--------------------------------+
| manufacturer | name            | no. of items manufacturer have |
+--------------+-----------------+--------------------------------+
|            1 | Sony            |                              1 |
|            2 | Creative Labs   |                              3 |
|            3 | Hewlett-Packard |                              2 |
+--------------+-----------------+--------------------------------+
3 rows in set (0.06 sec)

MariaDB [csd2204s18]> select manufacturer,m.name,count(*) "number of items manufacturer have" from products as p
    -> inner join manu m
    -> on m.code=p.manufacturer
    -> group by manufacturer
    -> having count(*)>2;
+--------------+-------------------+-----------------------------------+
| manufacturer | name              | number of items manufacturer have |
+--------------+-------------------+-----------------------------------+
|            2 | Creative Labs     |                                 3 |
|            7 | moxDroid Labs Inc |                                 3 |
+--------------+-------------------+-----------------------------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manufacturer,m.name,count(*) "number of items manufacturer have" from products as p
    -> inner join manu m
    -> on m.code=p.manufacturer
    -> where m.code=3 or m.code=2
    -> group by manufacturer;
+--------------+-----------------+-----------------------------------+
| manufacturer | name            | number of items manufacturer have |
+--------------+-----------------+-----------------------------------+
|            2 | Creative Labs   |                                 3 |
|            3 | Hewlett-Packard |                                 2 |
+--------------+-----------------+-----------------------------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code,products.name,manu.name from manu left join products on products.code = manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
+------+-----------------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code,products.name,manu.name from products left join manu on products.code = manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
|   10 | DVD burner      | NULL              |
|   11 | Printer         | NULL              |
|   12 | Toner cartridge | NULL              |
|   13 | DVD burner      | NULL              |
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code,products.name,manu.name from products left join manu on products.manufacturer = manu.code;
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
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code,products.name,manu.name from products right join manu on products.manufacturer = manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|   10 | DVD burner      | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|    3 | ZIP drive       | Iomega            |
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    4 | Floppy disk     | Winchester        |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
| NULL | NULL            | Dell              |
| NULL | NULL            | Bell Labs         |
+------+-----------------+-------------------+
15 rows in set (0.00 sec)

MariaDB [csd2204s18]>  select products.code,products.name,manu.name from manu right join products on products.code = manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
|   10 | DVD burner      | NULL              |
|   11 | Printer         | NULL              |
|   12 | Toner cartridge | NULL              |
|   13 | DVD burner      | NULL              |
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> MariaDB [csd2204s18]> select products.code,products.name,manu.name from manu right join products on products.code = manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'MariaDB [csd2204s18]> select products.code,products.name,manu.name from manu rig' at line 1
MariaDB [csd2204s18]> select products.code,products.name,manu.name from products
    -> left join manu
    -> on products.code=manu.code
    -> union
    -> select products.code,products.name,manu.name from products
    -> right join on product.code = manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'on product.code = manu.code' at line 6
MariaDB [csd2204s18]> select products.code,products.name,manu.name from products
    -> left join manu
    -> from products.code=manu.code
    -> union
    -> select products.code, products.name, manu.name from products
    -> right join on product.code = manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from products.code=manu.code
union
select products.code, products.name, manu.nam' at line 3
MariaDB [csd2204s18]> select products.code,products.name,manu.name from products
    -> left join manu
    -> on products.code=manu.code
    -> union
    -> select products.code,products.name,manu.name from products
    -> right join on product.code = manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'on product.code = manu.code' at line 6
MariaDB [csd2204s18]> select products.code, products.name, manu.name from products
    -> left join manu
    -> on products.code=manu.code
    -> union
    -> select products.code, products.name, manu.name from products
    -> right join manu on product.code = manu.code;
ERROR 1054 (42S22): Unknown column 'product.code' in 'on clause'
MariaDB [csd2204s18]> select products.code, products.name, manu.name from products
    -> left join manu
    -> on products.code=manu.code
    -> union
    -> select products.code, products.name, manu.name from products
    -> right join manu on products.code = manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
|   10 | DVD burner      | NULL              |
|   11 | Printer         | NULL              |
|   12 | Toner cartridge | NULL              |
|   13 | DVD burner      | NULL              |
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

MariaDB [csd2204s18]> select p1.code,p1.name,p2.name
    -> from products p1,products p2
    -> where p1.code <> p2.code;
+------+-----------------+-----------------+
| code | name            | name            |
+------+-----------------+-----------------+
|    2 | Memory          | Hard drive      |
|    3 | ZIP drive       | Hard drive      |
|    4 | Floppy disk     | Hard drive      |
|    5 | Monitor         | Hard drive      |
|    6 | DVD drive       | Hard drive      |
|    7 | CD drive        | Hard drive      |
|    8 | Printer         | Hard drive      |
|    9 | Toner cartridge | Hard drive      |
|   10 | DVD burner      | Hard drive      |
|   11 | Printer         | Hard drive      |
|   12 | Toner cartridge | Hard drive      |
|   13 | DVD burner      | Hard drive      |
|    1 | Hard drive      | Memory          |
|    3 | ZIP drive       | Memory          |
|    4 | Floppy disk     | Memory          |
|    5 | Monitor         | Memory          |
|    6 | DVD drive       | Memory          |
|    7 | CD drive        | Memory          |
|    8 | Printer         | Memory          |
|    9 | Toner cartridge | Memory          |
|   10 | DVD burner      | Memory          |
|   11 | Printer         | Memory          |
|   12 | Toner cartridge | Memory          |
|   13 | DVD burner      | Memory          |
|    1 | Hard drive      | ZIP drive       |
|    2 | Memory          | ZIP drive       |
|    4 | Floppy disk     | ZIP drive       |
|    5 | Monitor         | ZIP drive       |
|    6 | DVD drive       | ZIP drive       |
|    7 | CD drive        | ZIP drive       |
|    8 | Printer         | ZIP drive       |
|    9 | Toner cartridge | ZIP drive       |
|   10 | DVD burner      | ZIP drive       |
|   11 | Printer         | ZIP drive       |
|   12 | Toner cartridge | ZIP drive       |
|   13 | DVD burner      | ZIP drive       |
|    1 | Hard drive      | Floppy disk     |
|    2 | Memory          | Floppy disk     |
|    3 | ZIP drive       | Floppy disk     |
|    5 | Monitor         | Floppy disk     |
|    6 | DVD drive       | Floppy disk     |
|    7 | CD drive        | Floppy disk     |
|    8 | Printer         | Floppy disk     |
|    9 | Toner cartridge | Floppy disk     |
|   10 | DVD burner      | Floppy disk     |
|   11 | Printer         | Floppy disk     |
|   12 | Toner cartridge | Floppy disk     |
|   13 | DVD burner      | Floppy disk     |
|    1 | Hard drive      | Monitor         |
|    2 | Memory          | Monitor         |
|    3 | ZIP drive       | Monitor         |
|    4 | Floppy disk     | Monitor         |
|    6 | DVD drive       | Monitor         |
|    7 | CD drive        | Monitor         |
|    8 | Printer         | Monitor         |
|    9 | Toner cartridge | Monitor         |
|   10 | DVD burner      | Monitor         |
|   11 | Printer         | Monitor         |
|   12 | Toner cartridge | Monitor         |
|   13 | DVD burner      | Monitor         |
|    1 | Hard drive      | DVD drive       |
|    2 | Memory          | DVD drive       |
|    3 | ZIP drive       | DVD drive       |
|    4 | Floppy disk     | DVD drive       |
|    5 | Monitor         | DVD drive       |
|    7 | CD drive        | DVD drive       |
|    8 | Printer         | DVD drive       |
|    9 | Toner cartridge | DVD drive       |
|   10 | DVD burner      | DVD drive       |
|   11 | Printer         | DVD drive       |
|   12 | Toner cartridge | DVD drive       |
|   13 | DVD burner      | DVD drive       |
|    1 | Hard drive      | CD drive        |
|    2 | Memory          | CD drive        |
|    3 | ZIP drive       | CD drive        |
|    4 | Floppy disk     | CD drive        |
|    5 | Monitor         | CD drive        |
|    6 | DVD drive       | CD drive        |
|    8 | Printer         | CD drive        |
|    9 | Toner cartridge | CD drive        |
|   10 | DVD burner      | CD drive        |
|   11 | Printer         | CD drive        |
|   12 | Toner cartridge | CD drive        |
|   13 | DVD burner      | CD drive        |
|    1 | Hard drive      | Printer         |
|    2 | Memory          | Printer         |
|    3 | ZIP drive       | Printer         |
|    4 | Floppy disk     | Printer         |
|    5 | Monitor         | Printer         |
|    6 | DVD drive       | Printer         |
|    7 | CD drive        | Printer         |
|    9 | Toner cartridge | Printer         |
|   10 | DVD burner      | Printer         |
|   11 | Printer         | Printer         |
|   12 | Toner cartridge | Printer         |
|   13 | DVD burner      | Printer         |
|    1 | Hard drive      | Toner cartridge |
|    2 | Memory          | Toner cartridge |
|    3 | ZIP drive       | Toner cartridge |
|    4 | Floppy disk     | Toner cartridge |
|    5 | Monitor         | Toner cartridge |
|    6 | DVD drive       | Toner cartridge |
|    7 | CD drive        | Toner cartridge |
|    8 | Printer         | Toner cartridge |
|   10 | DVD burner      | Toner cartridge |
|   11 | Printer         | Toner cartridge |
|   12 | Toner cartridge | Toner cartridge |
|   13 | DVD burner      | Toner cartridge |
|    1 | Hard drive      | DVD burner      |
|    2 | Memory          | DVD burner      |
|    3 | ZIP drive       | DVD burner      |
|    4 | Floppy disk     | DVD burner      |
|    5 | Monitor         | DVD burner      |
|    6 | DVD drive       | DVD burner      |
|    7 | CD drive        | DVD burner      |
|    8 | Printer         | DVD burner      |
|    9 | Toner cartridge | DVD burner      |
|   11 | Printer         | DVD burner      |
|   12 | Toner cartridge | DVD burner      |
|   13 | DVD burner      | DVD burner      |
|    1 | Hard drive      | Printer         |
|    2 | Memory          | Printer         |
|    3 | ZIP drive       | Printer         |
|    4 | Floppy disk     | Printer         |
|    5 | Monitor         | Printer         |
|    6 | DVD drive       | Printer         |
|    7 | CD drive        | Printer         |
|    8 | Printer         | Printer         |
|    9 | Toner cartridge | Printer         |
|   10 | DVD burner      | Printer         |
|   12 | Toner cartridge | Printer         |
|   13 | DVD burner      | Printer         |
|    1 | Hard drive      | Toner cartridge |
|    2 | Memory          | Toner cartridge |
|    3 | ZIP drive       | Toner cartridge |
|    4 | Floppy disk     | Toner cartridge |
|    5 | Monitor         | Toner cartridge |
|    6 | DVD drive       | Toner cartridge |
|    7 | CD drive        | Toner cartridge |
|    8 | Printer         | Toner cartridge |
|    9 | Toner cartridge | Toner cartridge |
|   10 | DVD burner      | Toner cartridge |
|   11 | Printer         | Toner cartridge |
|   13 | DVD burner      | Toner cartridge |
|    1 | Hard drive      | DVD burner      |
|    2 | Memory          | DVD burner      |
|    3 | ZIP drive       | DVD burner      |
|    4 | Floppy disk     | DVD burner      |
|    5 | Monitor         | DVD burner      |
|    6 | DVD drive       | DVD burner      |
|    7 | CD drive        | DVD burner      |
|    8 | Printer         | DVD burner      |
|    9 | Toner cartridge | DVD burner      |
|   10 | DVD burner      | DVD burner      |
|   11 | Printer         | DVD burner      |
|   12 | Toner cartridge | DVD burner      |
+------+-----------------+-----------------+
156 rows in set (0.00 sec)

