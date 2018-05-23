MariaDB [csd2204s18]> show databases;
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

MariaDB [csd2204s18]> create table DEPT(
    -> dno integer(3) primary Key,
    -> name varchar(15),
    -> loc  varchar(20)
    -> );
Query OK, 0 rows affected (0.23 sec)

MariaDB [csd2204s18]> create table EMP(
    -> empno integer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 2
MariaDB [csd2204s18]> create table CUST_MUST(
    -> cust_no integer(5) primary key,
    -> name varchar(50),
    -> addr1 varchar(50),
    -> addr2 varchar(50),
    -> addr3 varchar(50),
    -> state varchar(20),
    -> city varchar(30),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 9
MariaDB [csd2204s18]> cust_no integer(5) primary key,
    -> name varchar(50),
    -> addr1 varchar(50,)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'cust_no integer(5) primary key,
name varchar(50),
addr1 varchar(50,)' at line 1
MariaDB [csd2204s18]> create table CUST_MUST(
    -> cust_no integer(5) primary Key,
    -> name varchar(50),
    -> addr1 varchar(50),
    -> addr2 varchar(50),
    -> addr3 varchar(50),
    -> state varchar(20),
    -> city varchar(30)
    -> );
Query OK, 0 rows affected (0.25 sec)

MariaDB [csd2204s18]> create table  AC_MAST(
    -> ac_type varchar(3),
    -> ac_no integer(4),
    -> cust_no integer(5),
    -> od_limit float(10,2),
    -> bal float(10,2),
    -> primary key(ac_type,ac_no)
    -> );
Query OK, 0 rows affected (0.27 sec)

MariaDB [csd2204s18]> create table TRANS(
    -> ac_type varchar(3),
    -> ac_no integer(4),
    -> cust_no integer(5),
    -> MariaDB [(none)]> show databases;
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
MariaDB [(none)]> create table TRANS(
    -> ac_type varchar(3),
    -> ac_no integer(4),
    -> tdate date,
    -> counter integer(2),
    -> amount float(10,2),
    -> descr varchar(30)
    -> );
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> create table TRANS(
    -> ac_type varchar(3),
    -> ac_no integer(4),
    -> tdate date,
    -> counter integer(2),
    -> amount float(10,2),
    -> descr varchar(30)
    -> );
Query OK, 0 rows affected (0.23 sec)

MariaDB [csd2204s18]> alter table trans add primary key(ac_type,ac_no,tdate);
Query OK, 0 rows affected (0.45 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc TRANS;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ac_type | varchar(3)  | NO   | PRI | NULL    |       |
| ac_no   | int(4)      | NO   | PRI | NULL    |       |
| tdate   | date        | NO   | PRI | NULL    |       |
| counter | int(2)      | YES  |     | NULL    |       |
| amount  | float(10,2) | YES  |     | NULL    |       |
| descr   | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

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
| orders               |
| persons              |
| trans                |
+----------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table EMP(
    -> empno integer(5),
    -> name varchar(50),
    -> jdate date,
    -> dept integer(3),
    -> desig varchar(20),
    -> basic float(10,2),
    -> da float(10,2),
    -> hra float(10,2),
    -> pf float(10,2),
    -> it float(10,2)
    -> );
Query OK, 0 rows affected (0.17 sec)

MariaDB [csd2204s18]> tee c:/users/735624/downloads/day6logJJ.sql;
MariaDB [csd2204s18]> tee c:/users/735624/downloads\practicelogJanis.sql;
--------------
tee c:/users/735624/downloads
--------------

MariaDB [csd2204s18]> create table TRANS(
    -> ac_type VARCHAR(3) ,
    -> ac_no INTEGER(4),
    -> tdate DATE,
    -> counter FLOAT(10,2),
    -> amount FLOAT(10,2),
    -> descr VARCHAR(30)
    -> );
ERROR 1050 (42S01): Table 'trans' already exists
MariaDB [csd2204s18]> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
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

MariaDB [csd2204s18]> desc trans;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ac_type | varchar(3)  | NO   | PRI | NULL    |       |
| ac_no   | int(4)      | NO   | PRI | NULL    |       |
| tdate   | date        | NO   | PRI | NULL    |       |
| counter | int(2)      | YES  |     | NULL    |       |
| amount  | float(10,2) | YES  |     | NULL    |       |
| descr   | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into transinsert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Rhycero', 63577800, '2017-09-05', 86, '$88697.95', 'amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Rhycero', 63' at line 1
MariaDB [csd2204s18]> insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Edgeify', 67592167, '2017-06-17', 61, '$65552.35', 'velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper');
Query OK, 1 row affected, 3 warnings (0.11 sec)

MariaDB [csd2204s18]> insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Abata', 89677433, '2017-07-08', 90, '$21895.42', 'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis');
Query OK, 1 row affected, 3 warnings (0.02 sec)

MariaDB [csd2204s18]> insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Zoombox', 7832593, '2017-12-10', 82, '$13085.79', 'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa');
Query OK, 1 row affected, 3 warnings (0.08 sec)

MariaDB [csd2204s18]> insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Thoughtmix', 10849214, '2018-05-13', 5, '$69440.83', 'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla');
Query OK, 1 row affected, 3 warnings (0.01 sec)

MariaDB [csd2204s18]> select * from trans;
+---------+----------+------------+---------+--------+--------------------------------+
| ac_type | ac_no    | tdate      | counter | amount | descr                          |
+---------+----------+------------+---------+--------+--------------------------------+
| Aba     | 89677433 | 2017-07-08 |      90 |   0.00 | ullamcorper purus sit amet nul |
| Edg     | 67592167 | 2017-06-17 |      61 |   0.00 | velit vivamus vel nulla eget e |
| Tho     | 10849214 | 2018-05-13 |       5 |   0.00 | a nibh in quis justo maecenas  |
| Zoo     |  7832593 | 2017-12-10 |      82 |   0.00 | vel lectus in quam fringilla r |
+---------+----------+------------+---------+--------+--------------------------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> update trans set ac_type='SAVING' where counter IN('3','7');
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [csd2204s18]> update trans set ac_type='SAVING' where counter IN('6','8');
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [csd2204s18]> update trans set ac_type='CHECKING' where counter IN('6','8');
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [csd2204s18]> SELECT * from trans;
+---------+----------+------------+---------+--------+--------------------------------+
| ac_type | ac_no    | tdate      | counter | amount | descr                          |
+---------+----------+------------+---------+--------+--------------------------------+
| Aba     | 89677433 | 2017-07-08 |      90 |   0.00 | ullamcorper purus sit amet nul |
| Edg     | 67592167 | 2017-06-17 |      61 |   0.00 | velit vivamus vel nulla eget e |
| Tho     | 10849214 | 2018-05-13 |       5 |   0.00 | a nibh in quis justo maecenas  |
| Zoo     |  7832593 | 2017-12-10 |      82 |   0.00 | vel lectus in quam fringilla r |
+---------+----------+------------+---------+--------+--------------------------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> update trans set ac_type='CHECKING' where counter IN('5','95');
Query OK, 1 row affected, 1 warning (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 1

MariaDB [csd2204s18]> SELECT * from trans;
+---------+----------+------------+---------+--------+--------------------------------+
| ac_type | ac_no    | tdate      | counter | amount | descr                          |
+---------+----------+------------+---------+--------+--------------------------------+
| Aba     | 89677433 | 2017-07-08 |      90 |   0.00 | ullamcorper purus sit amet nul |
| CHE     | 10849214 | 2018-05-13 |       5 |   0.00 | a nibh in quis justo maecenas  |
| Edg     | 67592167 | 2017-06-17 |      61 |   0.00 | velit vivamus vel nulla eget e |
| Zoo     |  7832593 | 2017-12-10 |      82 |   0.00 | vel lectus in quam fringilla r |
+---------+----------+------------+---------+--------+--------------------------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table TRANS (ac_type VARCHAR(50),ac_no INT,tdate DATE,counter INT,amount VARCHAR(50),descr TEXT);insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Yata', 28505401, '2017/07/28', 70, '16082.52', 'vestibulum proin eu mi nulla ac enim in tempor turpis');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Trilith', 3685916, '2018/04/06', 2, '93731.13', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Yoveo', 78521278, '2018/01/15', 79, '1157.68', 'eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Edgeblab', 64924659, '2018/04/06', 84, '48171.69', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet');insert into TRANS (ac_type, ac_no, tdate, counter, amount, descr) values ('Browsezoom', 41144030, '2018/01/23', 32, '12158.75', 'consequat lectus in est risus auctor sed tristique in tempus');
ERROR 1050 (42S01): Table 'trans' already exists
Query OK, 1 row affected, 2 warnings (0.08 sec)

Query OK, 1 row affected, 2 warnings (0.05 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

MariaDB [csd2204s18]> SELECT * from trans;
+---------+----------+------------+---------+----------+--------------------------------+
| ac_type | ac_no    | tdate      | counter | amount   | descr                          |
+---------+----------+------------+---------+----------+--------------------------------+
| Aba     | 89677433 | 2017-07-08 |      90 |     0.00 | ullamcorper purus sit amet nul |
| Bro     | 41144030 | 2018-01-23 |      32 | 12158.75 | consequat lectus in est risus  |
| CHE     | 10849214 | 2018-05-13 |       5 |     0.00 | a nibh in quis justo maecenas  |
| Edg     | 64924659 | 2018-04-06 |      84 | 48171.69 | nulla neque libero convallis e |
| Edg     | 67592167 | 2017-06-17 |      61 |     0.00 | velit vivamus vel nulla eget e |
| Tri     |  3685916 | 2018-04-06 |       2 | 93731.13 | suspendisse potenti cras in pu |
| Yat     | 28505401 | 2017-07-28 |      70 | 16082.52 | vestibulum proin eu mi nulla a |
| Yov     | 78521278 | 2018-01-15 |      79 |  1157.68 | eu nibh quisque id justo sit a |
| Zoo     |  7832593 | 2017-12-10 |      82 |     0.00 | vel lectus in quam fringilla r |
+---------+----------+------------+---------+----------+--------------------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc trans;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ac_type | varchar(3)  | NO   | PRI | NULL    |       |
| ac_no   | int(4)      | NO   | PRI | NULL    |       |
| tdate   | date        | NO   | PRI | NULL    |       |
| counter | int(2)      | YES  |     | NULL    |       |
| amount  | float(10,2) | YES  |     | NULL    |       |
| descr   | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [csd2204s18]>  update trans set ac_type='CHECKING' where counter IN('5','90');
Query OK, 1 row affected, 2 warnings (0.03 sec)
Rows matched: 2  Changed: 1  Warnings: 2

MariaDB [csd2204s18]> SELECT * from trans;
+---------+----------+------------+---------+----------+--------------------------------+
| ac_type | ac_no    | tdate      | counter | amount   | descr                          |
+---------+----------+------------+---------+----------+--------------------------------+
| Bro     | 41144030 | 2018-01-23 |      32 | 12158.75 | consequat lectus in est risus  |
| CHE     | 10849214 | 2018-05-13 |       5 |     0.00 | a nibh in quis justo maecenas  |
| CHE     | 89677433 | 2017-07-08 |      90 |     0.00 | ullamcorper purus sit amet nul |
| Edg     | 64924659 | 2018-04-06 |      84 | 48171.69 | nulla neque libero convallis e |
| Edg     | 67592167 | 2017-06-17 |      61 |     0.00 | velit vivamus vel nulla eget e |
| Tri     |  3685916 | 2018-04-06 |       2 | 93731.13 | suspendisse potenti cras in pu |
| Yat     | 28505401 | 2017-07-28 |      70 | 16082.52 | vestibulum proin eu mi nulla a |
| Yov     | 78521278 | 2018-01-15 |      79 |  1157.68 | eu nibh quisque id justo sit a |
| Zoo     |  7832593 | 2017-12-10 |      82 |     0.00 | vel lectus in quam fringilla r |
+---------+----------+------------+---------+----------+--------------------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> update trans set ac_no='646435857' where ac_type='checking';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [csd2204s18]> update trans set ac_no='457387538' where ac_date;
ERROR 1054 (42S22): Unknown column 'ac_date' in 'where clause'
MariaDB [csd2204s18]> exit;
MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> desc trans;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ac_type | varchar(3)  | NO   | PRI | NULL    |       |
| ac_no   | int(4)      | NO   | PRI | NULL    |       |
| tdate   | date        | NO   | PRI | NULL    |       |
| counter | int(2)      | YES  |     | NULL    |       |
| amount  | float(10,2) | YES  |     | NULL    |       |
| descr   | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.05 sec)

MariaDB [csd2204s18]> select * from trans;
+---------+----------+------------+---------+----------+--------------------------------+
| ac_type | ac_no    | tdate      | counter | amount   | descr                          |
+---------+----------+------------+---------+----------+--------------------------------+
| Bro     | 41144030 | 2018-01-23 |      32 | 12158.75 | consequat lectus in est risus  |
| CHE     | 10849214 | 2018-05-13 |       5 |     0.00 | a nibh in quis justo maecenas  |
| CHE     | 89677433 | 2017-07-08 |      90 |     0.00 | ullamcorper purus sit amet nul |
| Edg     | 64924659 | 2018-04-06 |      84 | 48171.69 | nulla neque libero convallis e |
| Edg     | 67592167 | 2017-06-17 |      61 |     0.00 | velit vivamus vel nulla eget e |
| Tri     |  3685916 | 2018-04-06 |       2 | 93731.13 | suspendisse potenti cras in pu |
| Yat     | 28505401 | 2017-07-28 |      70 | 16082.52 | vestibulum proin eu mi nulla a |
| Yov     | 78521278 | 2018-01-15 |      79 |  1157.68 | eu nibh quisque id justo sit a |
| Zoo     |  7832593 | 2017-12-10 |      82 |     0.00 | vel lectus in quam fringilla r |
+---------+----------+------------+---------+----------+--------------------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Bubbletube', 355471, '2017-11-29', 783921, '80741628.10', 'ac leo pellentesque ultrices mattis odio donec vitae nisi nam');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Livetube', 604840, '2017-07-01', 690902, '27247139.83', 'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Agivu', 195543, '2017-10-26', 619017, '74058306.53', 'mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Thoughtworks', 805277, '2018-03-15', 556901, '28585340.28', 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Photobean', 772981, '2017-12-10', 417793, '28022079.91', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Topiclounge', 234217, '2017-12-27', 235921, '34047713.18', 'risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Voonder', 919747, '2017-05-27', 5353, '98553790.57', 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Buzzdog', 774154, '2017-09-03', 202712, '99071017.74', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Quire', 349825, '2018-02-08', 893779, '42586187.86', 'amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Thoughtsphere', 392077, '2017-06-27', 945603, '31245149.40', 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Photofeed', 382170, '2017-10-17', 386719, '35611521.74', 'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Abatz', 945387, '2017-11-15', 848381, '65298444.46', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Yabox', 866109, '2017-06-28', 241486, '43900679.16', 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Mudo', 644707, '2018-03-27', 502320, '25398617.72', 'in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Muxo', 450823, '2017-09-07', 321362, '6947022.49', 'suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Skajo', 630821, '2017-05-27', 36630, '18372556.52', 'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Oodoo', 449708, '2017-05-30', 637200, '13655158.92', 'lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Yodoo', 997107, '2017-07-14', 610596, '29541245.33', 'quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Rhyloo', 497200, '2017-12-30', 735732, '33441229.88', 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Talane', 257067, '2017-06-09', 668377, '35149726.90', 'aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Tagcat', 388155, '2018-03-18', 372076, '78495541.05', 'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Rhyloo', 814317, '2018-01-18', 815839, '89933070.91', 'adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Quatz', 908026, '2017-10-11', 452722, '80989020.72', 'a pede posuere nonummy integer non velit donec diam neque');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Meeveo', 828423, '2018-05-12', 659767, '47721145.47', 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Wikizz', 938841, '2017-05-30', 168934, '51328372.48', 'vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Divavu', 160780, '2017-06-13', 199451, '81357770.33', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Livetube', 788606, '2018-04-20', 489594, '12653283.69', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Riffpedia', 954021, '2017-09-13', 559137, '66966140.54', 'gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Youbridge', 64207, '2018-04-18', 480732, '68109209.52', 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Jabberstorm', 769415, '2017-10-28', 910273, '13095006.28', 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Linktype', 835150, '2018-01-17', 728196, '42228886.02', 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Trunyx', 919557, '2017-05-26', 756241, '58934237.29', 'erat volutpat in congue etiam justo etiam pretium iaculis justo in');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Gabtype', 46211, '2017-05-25', 824631, '76421428.45', 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Linklinks', 491908, '2017-08-07', 214206, '52883464.67', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Realmix', 865314, '2017-06-12', 427695, '20371534.56', 'rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Kamba', 682472, '2017-09-23', 79517, '11531126.41', 'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Mydo', 250559, '2017-09-14', 69254, '49742978.28', 'mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Linktype', 972376, '2018-03-16', 572348, '90683344.89', 'integer aliquet massa id lobortis convallis tortor risus dapibus augue');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Buzzshare', 645512, '2018-04-30', 993634, '49954233.32', 'massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Topiczoom', 205775, '2018-01-31', 816016, '83300010.74', 'metus sapien ut nunc vestibulum ante ipsum primis in faucibus');insert into trans (ac_type, ac_no, tdate, counter, amount , descr) values ('Abata', 651251, '2018-04-08', 463910, '213539.26', 'faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan');
Query OK, 1 row affected, 2 warnings (0.11 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.05 sec)

Query OK, 1 row affected, 2 warnings (0.06 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.06 sec)

Query OK, 1 row affected, 2 warnings (0.08 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

MariaDB [csd2204s18]> select * from trans;
+---------+----------+------------+---------+-------------+--------------------------------+
| ac_type | ac_no    | tdate      | counter | amount      | descr                          |
+---------+----------+------------+---------+-------------+--------------------------------+
| Aba     |   651251 | 2018-04-08 |  463910 |   213539.27 | faucibus orci luctus et ultric |
| Aba     |   945387 | 2017-11-15 |  848381 | 65298444.00 | ipsum ac tellus semper interdu |
| Agi     |   195543 | 2017-10-26 |  619017 | 74058304.00 | mi pede malesuada in imperdiet |
| Bro     | 41144030 | 2018-01-23 |      32 |    12158.75 | consequat lectus in est risus  |
| Bub     |   355471 | 2017-11-29 |  783921 | 80741632.00 | ac leo pellentesque ultrices m |
| Buz     |   645512 | 2018-04-30 |  993634 | 49954232.00 | massa id lobortis convallis to |
| Buz     |   774154 | 2017-09-03 |  202712 | 99071016.00 | pede lobortis ligula sit amet  |
| CHE     | 10849214 | 2018-05-13 |       5 |        0.00 | a nibh in quis justo maecenas  |
| CHE     | 89677433 | 2017-07-08 |      90 |        0.00 | ullamcorper purus sit amet nul |
| Div     |   160780 | 2017-06-13 |  199451 | 81357768.00 | quam pede lobortis ligula sit  |
| Edg     | 64924659 | 2018-04-06 |      84 |    48171.69 | nulla neque libero convallis e |
| Edg     | 67592167 | 2017-06-17 |      61 |        0.00 | velit vivamus vel nulla eget e |
| Gab     |    46211 | 2017-05-25 |  824631 | 76421432.00 | posuere felis sed lacus morbi  |
| Jab     |   769415 | 2017-10-28 |  910273 | 13095006.00 | tempus semper est quam pharetr |
| Kam     |   682472 | 2017-09-23 |   79517 | 11531126.00 | orci mauris lacinia sapien qui |
| Lin     |   491908 | 2017-08-07 |  214206 | 52883464.00 | ultrices posuere cubilia curae |
| Lin     |   835150 | 2018-01-17 |  728196 | 42228888.00 | enim lorem ipsum dolor sit ame |
| Lin     |   972376 | 2018-03-16 |  572348 | 90683344.00 | integer aliquet massa id lobor |
| Liv     |   604840 | 2017-07-01 |  690902 | 27247140.00 | orci mauris lacinia sapien qui |
| Liv     |   788606 | 2018-04-20 |  489594 | 12653284.00 | volutpat dui maecenas tristiqu |
| Mee     |   828423 | 2018-05-12 |  659767 | 47721144.00 | sodales scelerisque mauris sit |
| Mud     |   644707 | 2018-03-27 |  502320 | 25398618.00 | in purus eu magna vulputate lu |
| Mux     |   450823 | 2017-09-07 |  321362 |  6947022.50 | suspendisse accumsan tortor qu |
| Myd     |   250559 | 2017-09-14 |   69254 | 49742980.00 | mauris eget massa tempor conva |
| Ood     |   449708 | 2017-05-30 |  637200 | 13655159.00 | lobortis ligula sit amet eleif |
| Pho     |   382170 | 2017-10-17 |  386719 | 35611520.00 | lacinia aenean sit amet justo  |
| Pho     |   772981 | 2017-12-10 |  417793 | 28022080.00 | ut volutpat sapien arcu sed au |
| Qua     |   908026 | 2017-10-11 |  452722 | 80989024.00 | a pede posuere nonummy integer |
| Qui     |   349825 | 2018-02-08 |  893779 | 42586188.00 | amet cursus id turpis integer  |
| Rea     |   865314 | 2017-06-12 |  427695 | 20371534.00 | rutrum ac lobortis vel dapibus |
| Rhy     |   497200 | 2017-12-30 |  735732 | 33441230.00 | in hac habitasse platea dictum |
| Rhy     |   814317 | 2018-01-18 |  815839 | 89933072.00 | adipiscing molestie hendrerit  |
| Rif     |   954021 | 2017-09-13 |  559137 | 66966140.00 | gravida sem praesent id massa  |
| Ska     |   630821 | 2017-05-27 |   36630 | 18372556.00 | quisque id justo sit amet sapi |
| Tag     |   388155 | 2018-03-18 |  372076 | 78495544.00 | pede malesuada in imperdiet et |
| Tal     |   257067 | 2017-06-09 |  668377 | 35149728.00 | aliquam non mauris morbi non l |
| Tho     |   392077 | 2017-06-27 |  945603 | 31245150.00 | tempor convallis nulla neque l |
| Tho     |   805277 | 2018-03-15 |  556901 | 28585340.00 | consectetuer eget rutrum at lo |
| Top     |   205775 | 2018-01-31 |  816016 | 83300008.00 | metus sapien ut nunc vestibulu |
| Top     |   234217 | 2017-12-27 |  235921 | 34047712.00 | risus praesent lectus vestibul |
| Tri     |  3685916 | 2018-04-06 |       2 |    93731.13 | suspendisse potenti cras in pu |
| Tru     |   919557 | 2017-05-26 |  756241 | 58934236.00 | erat volutpat in congue etiam  |
| Voo     |   919747 | 2017-05-27 |    5353 | 98553792.00 | sed tristique in tempus sit am |
| Wik     |   938841 | 2017-05-30 |  168934 | 51328372.00 | vel pede morbi porttitor lorem |
| Yab     |   866109 | 2017-06-28 |  241486 | 43900680.00 | magna vulputate luctus cum soc |
| Yat     | 28505401 | 2017-07-28 |      70 |    16082.52 | vestibulum proin eu mi nulla a |
| Yod     |   997107 | 2017-07-14 |  610596 | 29541246.00 | quis justo maecenas rhoncus al |
| You     |    64207 | 2018-04-18 |  480732 | 68109208.00 | mauris laoreet ut rhoncus aliq |
| Yov     | 78521278 | 2018-01-15 |      79 |     1157.68 | eu nibh quisque id justo sit a |
| Zoo     |  7832593 | 2017-12-10 |      82 |        0.00 | vel lectus in quam fringilla r |
+---------+----------+------------+---------+-------------+--------------------------------+
50 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc EMP;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| empno | int(5)      | YES  |     | NULL    |       |
| name  | varchar(50) | YES  |     | NULL    |       |
| jdate | date        | YES  |     | NULL    |       |
| dept  | int(3)      | YES  |     | NULL    |       |
| desig | varchar(20) | YES  |     | NULL    |       |
| basic | float(10,2) | YES  |     | NULL    |       |
| da    | float(10,2) | YES  |     | NULL    |       |
| hra   | float(10,2) | YES  |     | NULL    |       |
| pf    | float(10,2) | YES  |     | NULL    |       |
| it    | float(10,2) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
10 rows in set (0.06 sec)

MariaDB [csd2204s18]> select * from EMP;
Empty set (0.05 sec)

MariaDB [csd2204s18]> insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Realfire', 821176, '2017-12-02', 22, '69145422.05', 'quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Voonder', 44222, '2017-07-27', 52, '58751426.80', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Feedmix', 673250, '2018-01-10', 4, '72438925.31', 'leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Vidoo', 281538, '2017-12-07', 26, '83389355.89', 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Skimia', 605701, '2017-07-15', 37, '83736858.48', 'duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Muxo', 983243, '2018-01-19', 75, '30870572.49', 'ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Abatz', 831070, '2017-07-03', 5, '12805793.02', 'elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Yamia', 507596, '2017-09-30', 69, '77781410.04', 'ut nulla sed accumsan felis ut at dolor quis odio consequat');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Talane', 185620, '2017-07-26', 13, '19457504.08', 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Thoughtstorm', 233927, '2018-04-08', 26, '16563284.35', 'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Trunyx', 884513, '2017-06-08', 51, '74051208.82', 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Linktype', 652241, '2017-10-27', 15, '34723964.01', 'lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Jabberstorm', 453110, '2018-05-02', 90, '16824345.32', 'eget congue eget semper rutrum nulla nunc purus phasellus in');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Jazzy', 241031, '2017-12-31', 6, '64578418.95', 'magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Zoomlounge', 792213, '2018-01-29', 49, '92786036.52', 'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Gigashots', 390985, '2017-08-28', 61, '68799544.96', 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Pixoboo', 222924, '2018-04-19', 26, '52192203.79', 'massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Babbleset', 993776, '2017-06-09', 1, '73082331.43', 'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Yadel', 106817, '2017-05-24', 75, '25351292.15', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Rhyzio', 150528, '2017-06-05', 79, '72675011.24', 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Bubblemix', 990887, '2017-12-26', 62, '9417466.61', 'at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Vinder', 251429, '2018-02-11', 56, '12693852.50', 'vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Omba', 342722, '2018-04-07', 86, '11172490.39', 'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Jaxbean', 337540, '2017-12-14', 82, '81354736.37', 'arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Voonix', 848965, '2017-05-24', 30, '2397258.97', 'curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Jabbercube', 272784, '2018-01-09', 28, '12986971.73', 'suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Oyondu', 561625, '2017-07-06', 52, '82061655.08', 'justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Skidoo', 697502, '2017-08-05', 8, '16034984.47', 'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Realbridge', 239227, '2018-01-14', 37, '39462975.05', 'nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Jaxnation', 194888, '2017-12-12', 68, '23038746.40', 'nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Tavu', 615269, '2017-11-28', 28, '65540522.17', 'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Trilia', 139714, '2018-04-13', 30, '5690314.90', 'adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Leexo', 531389, '2017-10-02', 24, '14137535.17', 'libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Skalith', 581153, '2017-05-26', 16, '32746124.36', 'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('JumpXS', 254460, '2017-07-25', 56, '47151986.91', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('JumpXS', 27482, '2017-08-02', 56, '36497575.60', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Jayo', 943640, '2018-04-19', 44, '82490700.58', 'nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Meejo', 465446, '2017-11-23', 22, '13717784.81', 'ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Fliptune', 755707, '2018-01-06', 71, '41372892.29', 'et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Jabbertype', 836587, '2018-04-14', 21, '77260111.71', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('Oyonder', 681847, '2017-12-13', 68, '12153875.51', 'quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar');
Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.06 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.00 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.00 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.00 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.00 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.05 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.00 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

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

MariaDB [csd2204s18]> exit;
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

MariaDB [csd2204s18]> desc dept;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| dno   | int(3)      | NO   | PRI | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
| loc   | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc cust_must;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cust_no | int(5)      | NO   | PRI | NULL    |       |
| name    | varchar(50) | YES  |     | NULL    |       |
| addr1   | varchar(50) | YES  |     | NULL    |       |
| addr2   | varchar(50) | YES  |     | NULL    |       |
| addr3   | varchar(50) | YES  |     | NULL    |       |
| state   | varchar(20) | YES  |     | NULL    |       |
| city    | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc emp;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| empno | int(5)      | YES  |     | NULL    |       |
| name  | varchar(50) | YES  |     | NULL    |       |
| jdate | date        | YES  |     | NULL    |       |
| dept  | int(3)      | YES  |     | NULL    |       |
| desig | varchar(20) | YES  |     | NULL    |       |
| basic | float(10,2) | YES  |     | NULL    |       |
| da    | float(10,2) | YES  |     | NULL    |       |
| hra   | float(10,2) | YES  |     | NULL    |       |
| pf    | float(10,2) | YES  |     | NULL    |       |
| it    | float(10,2) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc ac_mast;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| ac_type  | varchar(3)  | NO   | PRI | NULL    |       |
| ac_no    | int(4)      | NO   | PRI | NULL    |       |
| cust_no  | int(5)      | YES  |     | NULL    |       |
| od_limit | float(10,2) | YES  |     | NULL    |       |
| bal      | float(10,2) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

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

MariaDB [csd2204s18]> insert into dept (dno, name, loc, email, gender, ip_address) values (80, 'Correy', '67720 Twin Pines Park', 'cdowden0@hud.gov', 'Male', '42.217.192.182');insert into dept (dno, name, loc, email, gender, ip_address) values (41, 'Liana', '31984 Oak Drive', 'leverall1@jalbum.net', 'Female', '105.230.65.67');insert into dept (dno, name, loc, email, gender, ip_address) values (66, 'Selena', '1879 Killdeer Parkway', 'sduncanson2@timesonline.co.uk', 'Male', '229.108.20.131');insert into dept (dno, name, loc, email, gender, ip_address) values (28, 'Edee', '820 Atwood Avenue', 'ethackston3@youtu.be', 'Male', '63.2.152.162');insert into dept (dno, name, loc, email, gender, ip_address) values (31, 'Sybil', '79303 Nova Point', 'stosdevin4@spiegel.de', 'Male', '36.219.57.104');insert into dept (dno, name, loc, email, gender, ip_address) values (39, 'Marchelle', '1052 Eagan Park', 'msealeaf5@arizona.edu', 'Male', '248.221.69.59');insert into dept (dno, name, loc, email, gender, ip_address) values (28, 'Pamela', '8 Jay Lane', 'pwalrond6@oakley.com', 'Male', '73.22.237.103');insert into dept (dno, name, loc, email, gender, ip_address) values (1, 'Zabrina', '7028 Nancy Plaza', 'zwein7@cornell.edu', 'Male', '84.113.124.158');insert into dept (dno, name, loc, email, gender, ip_address) values (92, 'Alberta', '3754 Hagan Parkway', 'abursnell8@mit.edu', 'Female', '67.33.25.24');insert into dept (dno, name, loc, email, gender, ip_address) values (10, 'Verena', '72274 Helena Hill', 'vsparwell9@mayoclinic.com', 'Female', '43.153.78.247');insert into dept (dno, name, loc, email, gender, ip_address) values (1, 'Inez', '6391 Montana Street', 'ilimeburna@loc.gov', 'Female', '47.124.180.67');insert into dept (dno, name, loc, email, gender, ip_address) values (6, 'Karmen', '24477 Mccormick Park', 'kpietrzakb@go.com', 'Male', '150.178.116.210');insert into dept (dno, name, loc, email, gender, ip_address) values (76, 'Barb', '74 Maywood Plaza', 'bmckombc@sakura.ne.jp', 'Female', '204.172.199.47');insert into dept (dno, name, loc, email, gender, ip_address) values (5, 'Teresina', '34383 Grasskamp Circle', 'tduffieldd@tripod.com', 'Female', '69.214.110.23');insert into dept (dno, name, loc, email, gender, ip_address) values (74, 'Ginnifer', '5 Almo Terrace', 'ginnote@ezinearticles.com', 'Female', '135.59.228.117');
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
ERROR 1054 (42S22): Unknown column 'email' in 'field list'
MariaDB [csd2204s18]> insert into dept (dno, name, loc) values (6, 'Dela', '8879 Sycamore Center');insert into dept (dno, name, loc) values (17, 'Jennine', '705 Golf View Drive');insert into dept (dno, name, loc) values (45, 'Haily', '26 Mitchell Center');insert into dept (dno, name, loc) values (68, 'Robinett', '0269 Summer Ridge Center');insert into dept (dno, name, loc) values (93, 'Christalle', '1320 Muir Lane');insert into dept (dno, name, loc) values (60, 'Linda', '23865 Loomis Lane');insert into dept (dno, name, loc) values (12, 'Waneta', '55 North Center');insert into dept (dno, name, loc) values (14, 'Nana', '3506 Dakota Lane');insert into dept (dno, name, loc) values (1, 'Sile', '49 Tomscot Hill');insert into dept (dno, name, loc) values (54, 'Jillana', '87884 Carey Plaza');insert into dept (dno, name, loc) values (24, 'Brittan', '49371 Sunnyside Pass');insert into dept (dno, name, loc) values (21, 'Jerrilee', '768 Division Drive');insert into dept (dno, name, loc) values (89, 'Kat', '4 Dennis Lane');insert into dept (dno, name, loc) values (69, 'Violet', '3 Bellgrove Lane');insert into dept (dno, name, loc) values (9, 'Rosalinde', '7 Anthes Point');
Query OK, 1 row affected (0.08 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected, 1 warning (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.00 sec)

MariaDB [csd2204s18]> desc dept;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| dno   | int(3)      | NO   | PRI | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
| loc   | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from dept;
+-----+------------+----------------------+
| dno | name       | loc                  |
+-----+------------+----------------------+
|   1 | Sile       | 49 Tomscot Hill      |
|   6 | Dela       | 8879 Sycamore Center |
|   9 | Rosalinde  | 7 Anthes Point       |
|  12 | Waneta     | 55 North Center      |
|  14 | Nana       | 3506 Dakota Lane     |
|  17 | Jennine    | 705 Golf View Drive  |
|  21 | Jerrilee   | 768 Division Drive   |
|  24 | Brittan    | 49371 Sunnyside Pass |
|  45 | Haily      | 26 Mitchell Center   |
|  54 | Jillana    | 87884 Carey Plaza    |
|  60 | Linda      | 23865 Loomis Lane    |
|  68 | Robinett   | 0269 Summer Ridge Ce |
|  69 | Violet     | 3 Bellgrove Lane     |
|  89 | Kat        | 4 Dennis Lane        |
|  93 | Christalle | 1320 Muir Lane       |
+-----+------------+----------------------+
15 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into dept (dno, name, loc) values (44, 'Wendeline', '9 Shasta Alley');insert into dept (dno, name, loc) values (11, 'Imojean', '35371 Randy Hill');insert into dept (dno, name, loc) values (43, 'Brynne', '64 Kings Hill');insert into dept (dno, name, loc) values (60, 'Brinn', '12270 Main Trail');insert into dept (dno, name, loc) values (29, 'Connie', '5261 Kensington Court');insert into dept (dno, name, loc) values (31, 'Valentina', '60 Fremont Street');insert into dept (dno, name, loc) values (15, 'Caritta', '30722 Ridgeview Parkway');insert into dept (dno, name, loc) values (36, 'Margaux', '0378 Lakewood Road');insert into dept (dno, name, loc) values (84, 'Eloise', '58 Clyde Gallagher Point');insert into dept (dno, name, loc) values (77, 'Toma', '418 Boyd Parkway');insert into dept (dno, name, loc) values (54, 'Janina', '76 South Lane');insert into dept (dno, name, loc) values (11, 'Karyl', '2195 Thackeray Street');insert into dept (dno, name, loc) values (90, 'Beverley', '53 Becker Pass');insert into dept (dno, name, loc) values (96, 'Marybeth', '17 Milwaukee Parkway');insert into dept (dno, name, loc) values (15, 'Felicity', '0 Iowa Terrace');insert into dept (dno, name, loc) values (41, 'Jaimie', '52 Atwood Circle');insert into dept (dno, name, loc) values (85, 'Aidan', '6515 Mitchell Trail');insert into dept (dno, name, loc) values (84, 'Dalenna', '82 Maple Wood Park');insert into dept (dno, name, loc) values (18, 'Karylin', '2262 Ridgeway Place');insert into dept (dno, name, loc) values (81, 'Dollie', '77137 Truax Lane');insert into dept (dno, name, loc) values (75, 'Rakel', '26 Anniversary Road');insert into dept (dno, name, loc) values (28, 'Ginger', '857 Aberg Circle');insert into dept (dno, name, loc) values (14, 'Allene', '252 American Alley');insert into dept (dno, name, loc) values (14, 'Joye', '2095 Porter Terrace');insert into dept (dno, name, loc) values (26, 'Ermentrude', '08 Warrior Place');insert into dept (dno, name, loc) values (43, 'Dredi', '888 Holy Cross Parkway');insert into dept (dno, name, loc) values (99, 'Nicole', '57983 Logan Drive');insert into dept (dno, name, loc) values (46, 'Cristina', '405 Coolidge Terrace');insert into dept (dno, name, loc) values (50, 'Indira', '04833 Manitowish Avenue');insert into dept (dno, name, loc) values (59, 'Claire', '71295 Tennessee Lane');insert into dept (dno, name, loc) values (5, 'Lyndsay', '7 Spenser Alley');insert into dept (dno, name, loc) values (99, 'Brear', '37244 Hooker Junction');insert into dept (dno, name, loc) values (38, 'Taffy', '49 Grasskamp Lane');insert into dept (dno, name, loc) values (61, 'Virgie', '89 Veith Plaza');insert into dept (dno, name, loc) values (39, 'Dasya', '0 Algoma Hill');insert into dept (dno, name, loc) values (49, 'Shantee', '765 Randy Drive');insert into dept (dno, name, loc) values (74, 'Claresta', '750 Buhler Trail');insert into dept (dno, name, loc) values (11, 'Susette', '5888 Express Court');insert into dept (dno, name, loc) values (25, 'Tommi', '54 Onsgard Park');insert into dept (dno, name, loc) values (77, 'Maressa', '016 Schiller Trail');insert into dept (dno, name, loc) values (82, 'Cati', '5698 Katie Avenue');insert into dept (dno, name, loc) values (14, 'Laryssa', '4 Buena Vista Drive');insert into dept (dno, name, loc) values (59, 'Laurice', '5596 Bellgrove Street');insert into dept (dno, name, loc) values (29, 'Frank', '27 Pepper Wood Court');insert into dept (dno, name, loc) values (43, 'Rozelle', '73767 Heffernan Point');insert into dept (dno, name, loc) values (2, 'Prudi', '5124 Weeping Birch Street');insert into dept (dno, name, loc) values (34, 'Morissa', '5 Pond Alley');insert into dept (dno, name, loc) values (87, 'Shandeigh', '238 Clove Hill');insert into dept (dno, name, loc) values (80, 'Lois', '1469 Gerald Point');insert into dept (dno, name, loc) values (63, 'Sada', '1 Harbort Street');
Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '60' for key 'PRIMARY'
Query OK, 1 row affected, 1 warning (0.04 sec)

Query OK, 1 row affected (0.04 sec)

Query OK, 1 row affected, 1 warning (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected, 1 warning (0.02 sec)

Query OK, 1 row affected (0.01 sec)

ERROR 1062 (23000): Duplicate entry '54' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '11' for key 'PRIMARY'
Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '15' for key 'PRIMARY'
Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

ERROR 1062 (23000): Duplicate entry '84' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

ERROR 1062 (23000): Duplicate entry '14' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '14' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '43' for key 'PRIMARY'
Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected, 1 warning (0.00 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '99' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '11' for key 'PRIMARY'
Query OK, 1 row affected (0.01 sec)

ERROR 1062 (23000): Duplicate entry '77' for key 'PRIMARY'
Query OK, 1 row affected (0.04 sec)

ERROR 1062 (23000): Duplicate entry '14' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '59' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '29' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '43' for key 'PRIMARY'
Query OK, 1 row affected, 1 warning (0.05 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

MariaDB [csd2204s18]> select * from dept;
+-----+------------+----------------------+
| dno | name       | loc                  |
+-----+------------+----------------------+
|   1 | Sile       | 49 Tomscot Hill      |
|   2 | Prudi      | 5124 Weeping Birch S |
|   5 | Lyndsay    | 7 Spenser Alley      |
|   6 | Dela       | 8879 Sycamore Center |
|   9 | Rosalinde  | 7 Anthes Point       |
|  11 | Imojean    | 35371 Randy Hill     |
|  12 | Waneta     | 55 North Center      |
|  14 | Nana       | 3506 Dakota Lane     |
|  15 | Caritta    | 30722 Ridgeview Park |
|  17 | Jennine    | 705 Golf View Drive  |
|  18 | Karylin    | 2262 Ridgeway Place  |
|  21 | Jerrilee   | 768 Division Drive   |
|  24 | Brittan    | 49371 Sunnyside Pass |
|  25 | Tommi      | 54 Onsgard Park      |
|  26 | Ermentrude | 08 Warrior Place     |
|  28 | Ginger     | 857 Aberg Circle     |
|  29 | Connie     | 5261 Kensington Cour |
|  31 | Valentina  | 60 Fremont Street    |
|  34 | Morissa    | 5 Pond Alley         |
|  36 | Margaux    | 0378 Lakewood Road   |
|  38 | Taffy      | 49 Grasskamp Lane    |
|  39 | Dasya      | 0 Algoma Hill        |
|  41 | Jaimie     | 52 Atwood Circle     |
|  43 | Brynne     | 64 Kings Hill        |
|  44 | Wendeline  | 9 Shasta Alley       |
|  45 | Haily      | 26 Mitchell Center   |
|  46 | Cristina   | 405 Coolidge Terrace |
|  49 | Shantee    | 765 Randy Drive      |
|  50 | Indira     | 04833 Manitowish Ave |
|  54 | Jillana    | 87884 Carey Plaza    |
|  59 | Claire     | 71295 Tennessee Lane |
|  60 | Linda      | 23865 Loomis Lane    |
|  61 | Virgie     | 89 Veith Plaza       |
|  63 | Sada       | 1 Harbort Street     |
|  68 | Robinett   | 0269 Summer Ridge Ce |
|  69 | Violet     | 3 Bellgrove Lane     |
|  74 | Claresta   | 750 Buhler Trail     |
|  75 | Rakel      | 26 Anniversary Road  |
|  77 | Toma       | 418 Boyd Parkway     |
|  80 | Lois       | 1469 Gerald Point    |
|  81 | Dollie     | 77137 Truax Lane     |
|  82 | Cati       | 5698 Katie Avenue    |
|  84 | Eloise     | 58 Clyde Gallagher P |
|  85 | Aidan      | 6515 Mitchell Trail  |
|  87 | Shandeigh  | 238 Clove Hill       |
|  89 | Kat        | 4 Dennis Lane        |
|  90 | Beverley   | 53 Becker Pass       |
|  93 | Christalle | 1320 Muir Lane       |
|  96 | Marybeth   | 17 Milwaukee Parkway |
|  99 | Nicole     | 57983 Logan Drive    |
+-----+------------+----------------------+
50 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (52, 'Demetre', '385 Farragut Lane', 'Walton', '295', 'Songkeng', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (13, 'Phylis', '6078 Mccormick Place', 'Mosinee', '64', 'G”teborg', 'Sweden');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (86, 'Reba', '1106 Florence Terrace', 'Cardinal', '6', 'Paungde', 'Myanmar');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (44, 'Rance', '4 Iowa Point', 'Becker', '730', 'Przybor¢w', 'Poland');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (5, 'Jasun', '55 Hermina Point', 'Barnett', '31332', 'Kadubincarung', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (79, 'Jeni', '8573 Buhler Alley', 'Johnson', '41505', 'Foros da Catrapona', 'Portugal');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (86, 'Malvin', '40 Ohio Way', 'Cambridge', '12', 'Ningxin', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (68, 'Ursuline', '4 Moose Way', 'Raven', '2', 'Musa Khel Bazar', 'Pakistan');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (88, 'Cathrine', '15 Thackeray Junction', 'Manley', '2583', 'Khenifra', 'Morocco');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (18, 'Annabelle', '9485 Cherokee Parkway', 'Bunting', '6', 'Buenavista', 'Mexico');
Query OK, 1 row affected (0.08 sec)

Query OK, 1 row affected (0.08 sec)

Query OK, 1 row affected (0.09 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

ERROR 1062 (23000): Duplicate entry '86' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (54, 'Ingaborg', '521 Londonderry Plaza', 'South', '5123', 'Vacov', 'Czech Republic');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (47, 'Philly', '92686 Loeprich Street', 'Ludington', '86549', 'Lidk”ping', 'Sweden');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (26, 'Almeta', '657 Vahlen Point', 'Esker', '6', 'Spas', 'Ukraine');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (59, 'Eleanor', '41485 Alpine Avenue', 'Ridge Oak', '26978', 'Z tor', 'Czech Republic');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (81, 'Carin', '75818 Logan Hill', 'Evergreen', '9', 'Shatou', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (85, 'Jayson', '8363 Mockingbird Point', 'Dawn', '5013', 'Shuitai', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (58, 'Ira', '64 Golf Course Plaza', 'Nancy', '576', 'Futian', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (81, 'Rinaldo', '647 Dwight Crossing', 'Victoria', '897', 'Castanheira', 'Portugal');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (61, 'Aymer', '5 Continental Crossing', '1st', '128', 'Enschede', 'Netherlands');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (45, 'Matthiew', '6 Arizona Crossing', 'Di Loreto', '71400', 'Beaung Tengah', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (96, 'Erin', '8 Oak Valley Park', 'Texas', '84', 'Xiaogang', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (59, 'James', '1 Helena Alley', 'Elmside', '1', 'Rzhev', 'Russia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (93, 'Goraud', '5036 American Ash Park', 'Crownhardt', '8', 'Yangzhuang', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (29, 'Darrell', '15488 Roth Pass', 'Maryland', '3258', 'Zhangguanying', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (80, 'Waneta', '97968 Mosinee Crossing', 'Green Ridge', '7954', 'G”teborg', 'Sweden');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (39, 'Eustace', '1 Tomscot Circle', 'Union', '2413', 'L-Iklin', 'Malta');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (85, 'Leodora', '139 Ridge Oak Park', 'Swallow', '65', 'Kuantian', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (20, 'Maje', '885 Dunning Street', 'Rowland', '3', 'Xianren', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (66, 'Elva', '7791 Charing Cross Pass', 'Fairfield', '4587', 'Lallayug', 'Philippines');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (41, 'Marlowe', '9 Larry Pass', 'Karstens', '62754', 'Sindangsuka', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (31, 'Kincaid', '35809 Milwaukee Alley', 'Northfield', '70', 'Dabat', 'Ethiopia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (53, 'Lulita', '7107 Starling Center', 'Oneill', '5917', 'Famoes', 'Portugal');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (64, 'Aggi', '405 Lien Pass', 'Forest Run', '061', 'Mengyin', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (38, 'Shirlene', '5 Reinke Way', 'Hagan', '2', 'Pontes e Lacerda', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (81, 'Shell', '50281 Waywood Crossing', 'Hudson', '742', 'Caitang', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (3, 'Smitty', '35 West Center', 'Gale', '64', 'Qabaq‡”l', 'Azerbaijan');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (61, 'Lemar', '3927 Duke Place', 'Artisan', '819', 'Kota Kinabalu', 'Malaysia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (7, 'Katheryn', '071 Jenifer Place', 'Pleasure', '1157', 'Nice', 'France');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (28, 'Meggi', '70765 Monica Junction', 'Burning Wood', '0242', 'Nansan', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (70, 'Nicolas', '330 Del Sol Lane', 'Lindbergh', '8608', 'Agios Vas¡leios', 'Greece');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (47, 'Wallis', '4753 Old Shore Plaza', 'Waubesa', '4997', 'Foumban', 'Cameroon');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (72, 'Gardener', '8403 Washington Street', 'Grasskamp', '4887', 'Curug', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (18, 'Lyda', '8951 Ridge Oak Hill', 'Kinsman', '06', 'Kembangkerang Lauk Timur', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (25, 'Amerigo', '5545 Sauthoff Road', 'Karstens', '294', 'Barra do Corda', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (18, 'Upton', '4123 Surrey Park', 'Hanson', '67', 'Kupusina', 'Serbia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (86, 'Patton', '199 Roxbury Avenue', 'Elgar', '9933', 'Fontenay-sous-Bois', 'France');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (90, 'Osbert', '2418 Forster Drive', 'Boyd', '793', 'Shuitou', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (30, 'Paige', '182 Fair Oaks Street', 'Butterfield', '33763', 'Ji'an', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (88, 'Evie', '013 Arrowood Junction', '4th', '814', 'B”h”t', 'Mongolia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (23, 'Maud', '5656 Brentwood Junction', 'Coolidge', '92771', 'Witkowo', 'Poland');
Query OK, 1 row affected (0.08 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.09 sec)

Query OK, 1 row affected (0.06 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '81' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.01 sec)

ERROR 1062 (23000): Duplicate entry '59' for key 'PRIMARY'
Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

ERROR 1062 (23000): Duplicate entry '85' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.04 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

ERROR 1062 (23000): Duplicate entry '81' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '61' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '47' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '18' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

ERROR 1062 (23000): Duplicate entry '18' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '86' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

    '> 
    '> ;
    '> ;
    '> 
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'an', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, s' at line 1
MariaDB [csd2204s18]> delete from cust_mast;
ERROR 1146 (42S02): Table 'csd2204s18.cust_mast' doesn't exist
MariaDB [csd2204s18]> delete from cust_must;
Query OK, 37 rows affected (0.08 sec)

MariaDB [csd2204s18]> delete from trans;
Query OK, 91 rows affected (0.11 sec)

MariaDB [csd2204s18]> delete from dept;
Query OK, 50 rows affected (0.08 sec)

MariaDB [csd2204s18]> insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (26, 'Garwin', '0 Jenifer Pass', 'Butternut', '1', 'Cabre£va', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (65, 'Ferrel', '2 Nevada Drive', 'Fair Oaks', '7598', 'Margaharja', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (71, 'Horatio', '05 Weeping Birch Court', 'Lighthouse Bay', '822', 'Pancoran', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (21, 'Evelin', '8 Melody Terrace', 'Welch', '13309', 'Strzyzowice', 'Poland');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (67, 'Dunn', '288 International Street', 'Northwestern', '6', 'Pumwani', 'Kenya');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (30, 'Erhart', '757 Jenifer Terrace', 'Montana', '01481', 'Potoni', 'Peru');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (81, 'Udall', '30829 Sachs Place', 'Helena', '526', 'Rio Covo', 'Portugal');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (23, 'Suzi', '3 Hauk Circle', 'Huxley', '002', 'Louta', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (12, 'Natale', '573 Ruskin Hill', 'Anthes', '304', 'Reisdorf', 'Luxembourg');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (59, 'Gwennie', '25 Utah Drive', 'Stuart', '39638', 'Shangbahe', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (28, 'Sharon', '35522 Hayes Park', 'Miller', '92', 'Balete', 'Philippines');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (47, 'Tallulah', '182 School Alley', 'Lawn', '020', 'Tibati', 'Cameroon');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (2, 'Tabatha', '18 Summer Ridge Lane', 'Crowley', '223', 'Thaton', 'Myanmar');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (24, 'Brina', '796 Atwood Junction', 'Lighthouse Bay', '99211', 'Jianghua', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (98, 'Burk', '2716 Rockefeller Point', 'Summer Ridge', '70', 'Nakhon Ratchasima', 'Thailand');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (82, 'Malchy', '055 Thierer Terrace', 'Messerschmidt', '8499', 'Niejiahe', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (36, 'Emelda', '89224 Elgar Parkway', 'Union', '6', 'Vahdat', 'Tajikistan');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (33, 'Aluino', '566 Anderson Parkway', 'Milwaukee', '1444', 'Thanatpin', 'Myanmar');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (99, 'Aldus', '33 Bunting Center', 'Ryan', '2888', '`Afif', 'Saudi Arabia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (17, 'Ailey', '60 Hansons Drive', 'Boyd', '9999', 'Villefranche-sur-Sa“ne', 'France');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (7, 'Kaiser', '1223 Portage Drive', 'Milwaukee', '5986', 'Liuzhi', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (82, 'Julita', '04988 Derek Crossing', 'Mesta', '15364', 'Sumberrejo', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (68, 'Gayle', '51 Nova Parkway', 'Cambridge', '174', 'Kwangmyong', 'South Korea');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (18, 'Patty', '535 Messerschmidt Point', 'Debs', '755', 'Fengjiang', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (38, 'Quinn', '7249 Kinsman Trail', 'Crowley', '78315', 'Guanbuqiao', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (8, 'Waylan', '4 Twin Pines Road', 'Eastlawn', '7', 'Peabiru', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (73, 'Maureen', '72 Bluejay Road', 'Melby', '32', 'Cernay', 'France');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (96, 'Annemarie', '9 Dahle Pass', 'West', '69', 'Tamamura', 'Japan');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (45, 'Gareth', '4 Macpherson Lane', 'Russell', '803', 'Suklayin', 'Philippines');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (30, 'Yelena', '1 Anhalt Court', 'Killdeer', '899', 'N‚a Ion¡a', 'Greece');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (68, 'Rockey', '61 Duke Drive', 'Surrey', '75372', 'Klumpit', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (88, 'Freida', '7 Dovetail Junction', 'Utah', '7179', 'H„sselby', 'Sweden');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (7, 'Nelly', '5 Golf View Court', 'Algoma', '39217', 'Tabalong', 'Philippines');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (25, 'Keeley', '38414 Corscot Circle', 'Grasskamp', '51094', 'Al Madid', 'Yemen');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (84, 'Bevvy', '6 Dryden Alley', 'Schiller', '1730', 'Sobreira', 'Portugal');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (3, 'Vaclav', '05789 Manitowish Place', 'Atwood', '4698', 'Taounate', 'Morocco');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (50, 'Kendrick', '448 Nobel Plaza', 'Buhler', '12', 'Silikatnyy', 'Russia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (23, 'Boonie', '82 Steensland Junction', 'Corscot', '36810', 'Debno', 'Poland');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (30, 'Caddric', '782 Farmco Place', 'Service', '3263', 'Energetik', 'Russia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (74, 'Lydie', '43 Valley Edge Trail', 'Manley', '750', 'Primosten', 'Croatia');
Query OK, 1 row affected (0.06 sec)

Query OK, 1 row affected (0.06 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.09 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '82' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

ERROR 1062 (23000): Duplicate entry '30' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '68' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

ERROR 1062 (23000): Duplicate entry '7' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '23' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '30' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]>  delete from cust_must;
Query OK, 34 rows affected (0.25 sec)

MariaDB [csd2204s18]> insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (26, 'Garwin', '0 Jenifer Pass', 'Butternut', '1', 'Cabre£va', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (65, 'Ferrel', '2 Nevada Drive', 'Fair Oaks', '7598', 'Margaharja', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (71, 'Horatio', '05 Weeping Birch Court', 'Lighthouse Bay', '822', 'Pancoran', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (21, 'Evelin', '8 Melody Terrace', 'Welch', '13309', 'Strzyzowice', 'Poland');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (67, 'Dunn', '288 International Street', 'Northwestern', '6', 'Pumwani', 'Kenya');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (30, 'Erhart', '757 Jenifer Terrace', 'Montana', '01481', 'Potoni', 'Peru');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (81, 'Udall', '30829 Sachs Place', 'Helena', '526', 'Rio Covo', 'Portugal');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (23, 'Suzi', '3 Hauk Circle', 'Huxley', '002', 'Louta', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (12, 'Natale', '573 Ruskin Hill', 'Anthes', '304', 'Reisdorf', 'Luxembourg');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (59, 'Gwennie', '25 Utah Drive', 'Stuart', '39638', 'Shangbahe', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (28, 'Sharon', '35522 Hayes Park', 'Miller', '92', 'Balete', 'Philippines');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (47, 'Tallulah', '182 School Alley', 'Lawn', '020', 'Tibati', 'Cameroon');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (2, 'Tabatha', '18 Summer Ridge Lane', 'Crowley', '223', 'Thaton', 'Myanmar');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (24, 'Brina', '796 Atwood Junction', 'Lighthouse Bay', '99211', 'Jianghua', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (98, 'Burk', '2716 Rockefeller Point', 'Summer Ridge', '70', 'Nakhon Ratchasima', 'Thailand');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (82, 'Malchy', '055 Thierer Terrace', 'Messerschmidt', '8499', 'Niejiahe', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (36, 'Emelda', '89224 Elgar Parkway', 'Union', '6', 'Vahdat', 'Tajikistan');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (33, 'Aluino', '566 Anderson Parkway', 'Milwaukee', '1444', 'Thanatpin', 'Myanmar');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (99, 'Aldus', '33 Bunting Center', 'Ryan', '2888', '`Afif', 'Saudi Arabia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (17, 'Ailey', '60 Hansons Drive', 'Boyd', '9999', 'Villefranche-sur-Sa“ne', 'France');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (7, 'Kaiser', '1223 Portage Drive', 'Milwaukee', '5986', 'Liuzhi', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (82, 'Julita', '04988 Derek Crossing', 'Mesta', '15364', 'Sumberrejo', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (68, 'Gayle', '51 Nova Parkway', 'Cambridge', '174', 'Kwangmyong', 'South Korea');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (18, 'Patty', '535 Messerschmidt Point', 'Debs', '755', 'Fengjiang', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (38, 'Quinn', '7249 Kinsman Trail', 'Crowley', '78315', 'Guanbuqiao', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (8, 'Waylan', '4 Twin Pines Road', 'Eastlawn', '7', 'Peabiru', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (73, 'Maureen', '72 Bluejay Road', 'Melby', '32', 'Cernay', 'France');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (96, 'Annemarie', '9 Dahle Pass', 'West', '69', 'Tamamura', 'Japan');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (45, 'Gareth', '4 Macpherson Lane', 'Russell', '803', 'Suklayin', 'Philippines');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (30, 'Yelena', '1 Anhalt Court', 'Killdeer', '899', 'N‚a Ion¡a', 'Greece');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (68, 'Rockey', '61 Duke Drive', 'Surrey', '75372', 'Klumpit', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (88, 'Freida', '7 Dovetail Junction', 'Utah', '7179', 'H„sselby', 'Sweden');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (7, 'Nelly', '5 Golf View Court', 'Algoma', '39217', 'Tabalong', 'Philippines');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (25, 'Keeley', '38414 Corscot Circle', 'Grasskamp', '51094', 'Al Madid', 'Yemen');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (84, 'Bevvy', '6 Dryden Alley', 'Schiller', '1730', 'Sobreira', 'Portugal');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (3, 'Vaclav', '05789 Manitowish Place', 'Atwood', '4698', 'Taounate', 'Morocco');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (50, 'Kendrick', '448 Nobel Plaza', 'Buhler', '12', 'Silikatnyy', 'Russia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (23, 'Boonie', '82 Steensland Junction', 'Corscot', '36810', 'Debno', 'Poland');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (30, 'Caddric', '782 Farmco Place', 'Service', '3263', 'Energetik', 'Russia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (74, 'Lydie', '43 Valley Edge Trail', 'Manley', '750', 'Primosten', 'Croatia');
Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.08 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.07 sec)

ERROR 1062 (23000): Duplicate entry '82' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

ERROR 1062 (23000): Duplicate entry '30' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '68' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '7' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

ERROR 1062 (23000): Duplicate entry '23' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '30' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

MariaDB [csd2204s18]>  delete from cust_must;
Query OK, 34 rows affected (0.07 sec)

MariaDB [csd2204s18]> insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (1, 'Moe', '844 Fair Oaks Hill', 'Dapin', '96', 'Malgobek', 'Russia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (2, 'Marius', '0414 Parkside Parkway', 'Green', '0063', 'Casma', 'Peru');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (3, 'Naomi', '40330 Nevada Hill', 'Mockingbird', '60', 'Quartier Militaire', 'Mauritius');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (4, 'Marjie', '70 Hoffman Terrace', 'Toban', '608', 'Yaring', 'Thailand');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (5, 'Nicola', '172 Valley Edge Plaza', 'Hauk', '1', 'J„rf„lla', 'Sweden');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (6, 'Mellicent', '27 Roxbury Trail', 'Roth', '49477', 'Saky', 'Ukraine');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (7, 'Wallas', '46 Texas Circle', 'Beilfuss', '06', 'Qingzhou', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (8, 'Hillie', '403 Buhler Drive', 'Vera', '5', 'Guicheng', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (9, 'Manuel', '9 Nobel Street', 'Fallview', '0', 'Bueng Khong Long', 'Thailand');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (10, 'Jeannine', '02147 Meadow Vale Plaza', 'Lillian', '0219', 'V¢nitsa', 'Greece');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (11, 'Jacinta', '2044 Wayridge Park', 'Raven', '28753', 'Sabana Grande', 'Venezuela');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (12, 'Carley', '63820 Spohn Place', 'Shasta', '757', 'Couto', 'Portugal');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (13, 'Margy', '8619 Center Drive', '6th', '373', 'Hutag', 'Mongolia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (14, 'Eziechiele', '0 Texas Circle', 'Little Fleur', '67', 'Adamantina', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (15, 'Janenna', '6 Summer Ridge Plaza', 'Bluejay', '774', 'HienghŠne', 'New Caledonia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (16, 'Any', '6 Sommers Road', 'Banding', '7342', 'Yeping', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (17, 'Molly', '996 Canary Street', 'Packers', '7379', 'Nantian', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (18, 'Park', '06 Chinook Crossing', 'Jana', '8', 'Valinhos', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (19, 'Wald', '73 Dennis Lane', 'Grim', '874', 'Suran', 'Iran');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (20, 'Lorrin', '7 Clarendon Road', 'Stone Corner', '08', 'Esmeraldas', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (21, 'Dulcea', '881 Westridge Pass', 'Pine View', '04', 'Tidili Mesfioua', 'Morocco');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (22, 'Thalia', '66380 Spohn Drive', 'Columbus', '7757', 'Flandes', 'Colombia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (23, 'Ivy', '155 Little Fleur Way', 'Bunker Hill', '36', 'Nowe Grocholice', 'Poland');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (24, 'Bertram', '05799 Mosinee Junction', 'Sunfield', '042', 'Sharjah', 'United Arab Emirates');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (25, 'Maggie', '62727 Clyde Gallagher Point', 'Glacier Hill', '59', 'Granada', 'Nicaragua');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (26, 'Lindy', '23688 Susan Street', 'Kim', '282', 'Shibajiazi', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (27, 'Briana', '443 Melody Park', 'Victoria', '7', 'Miyoshi', 'Japan');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (28, 'Saundra', '02 Northport Pass', 'Rowland', '3', 'J„rvakandi', 'Estonia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (29, 'Karylin', '2792 North Center', 'Warrior', '87218', 'San Luis del Palmar', 'Argentina');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (30, 'Marchall', '17 Butternut Way', 'Farwell', '10682', 'Du Lainah', 'Afghanistan');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (31, 'Quintilla', '2 Lyons Trail', 'Bowman', '11', 'Huanghe', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (32, 'Paddy', '3913 Mifflin Trail', 'Sutherland', '41', 'Ashkhaneh', 'Iran');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (33, 'Darbie', '8 Comanche Court', 'Barnett', '56', 'Moa', 'Cuba');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (34, 'Stanford', '04 Oakridge Center', 'Menomonie', '8017', 'Velk  Dobr ', 'Czech Republic');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (35, 'Barrie', '612 Melrose Center', 'Susan', '1015', 'Mil¡kov', 'Czech Republic');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (36, 'Terencio', '49 Macpherson Place', 'Scofield', '4883', 'Mazhonghe', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (37, 'Kristoforo', '9 Sommers Terrace', 'Hooker', '56468', 'Oss', 'Netherlands');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (38, 'Dickie', '242 Dayton Plaza', 'Derek', '736', 'Polonnaruwa', 'Sri Lanka');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (39, 'Gregoire', '488 Tennyson Parkway', 'Walton', '0413', 'Gabasumdo', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (40, 'Igor', '70764 Chinook Alley', 'Toban', '6593', 'Bukhovo', 'Bulgaria');
Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.06 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.11 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.04 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> select * from cust_must;
+---------+------------+-----------------------------+--------------+-------+----------------------+---------------------+
| cust_no | name       | addr1                       | addr2        | addr3 | state                | city                |
+---------+------------+-----------------------------+--------------+-------+----------------------+---------------------+
|       1 | Moe        | 844 Fair Oaks Hill          | Dapin        | 96    | Russia               | Malgobek            |
|       2 | Marius     | 0414 Parkside Parkway       | Green        | 0063  | Peru                 | Casma               |
|       3 | Naomi      | 40330 Nevada Hill           | Mockingbird  | 60    | Mauritius            | Quartier Militaire  |
|       4 | Marjie     | 70 Hoffman Terrace          | Toban        | 608   | Thailand             | Yaring              |
|       5 | Nicola     | 172 Valley Edge Plaza       | Hauk         | 1     | Sweden               | J„rf„lla            |
|       6 | Mellicent  | 27 Roxbury Trail            | Roth         | 49477 | Ukraine              | Saky                |
|       7 | Wallas     | 46 Texas Circle             | Beilfuss     | 06    | China                | Qingzhou            |
|       8 | Hillie     | 403 Buhler Drive            | Vera         | 5     | China                | Guicheng            |
|       9 | Manuel     | 9 Nobel Street              | Fallview     | 0     | Thailand             | Bueng Khong Long    |
|      10 | Jeannine   | 02147 Meadow Vale Plaza     | Lillian      | 0219  | Greece               | V¢nitsa             |
|      11 | Jacinta    | 2044 Wayridge Park          | Raven        | 28753 | Venezuela            | Sabana Grande       |
|      12 | Carley     | 63820 Spohn Place           | Shasta       | 757   | Portugal             | Couto               |
|      13 | Margy      | 8619 Center Drive           | 6th          | 373   | Mongolia             | Hutag               |
|      14 | Eziechiele | 0 Texas Circle              | Little Fleur | 67    | Brazil               | Adamantina          |
|      15 | Janenna    | 6 Summer Ridge Plaza        | Bluejay      | 774   | New Caledonia        | HienghŠne           |
|      16 | Any        | 6 Sommers Road              | Banding      | 7342  | China                | Yeping              |
|      17 | Molly      | 996 Canary Street           | Packers      | 7379  | China                | Nantian             |
|      18 | Park       | 06 Chinook Crossing         | Jana         | 8     | Brazil               | Valinhos            |
|      19 | Wald       | 73 Dennis Lane              | Grim         | 874   | Iran                 | Suran               |
|      20 | Lorrin     | 7 Clarendon Road            | Stone Corner | 08    | Brazil               | Esmeraldas          |
|      21 | Dulcea     | 881 Westridge Pass          | Pine View    | 04    | Morocco              | Tidili Mesfioua     |
|      22 | Thalia     | 66380 Spohn Drive           | Columbus     | 7757  | Colombia             | Flandes             |
|      23 | Ivy        | 155 Little Fleur Way        | Bunker Hill  | 36    | Poland               | Nowe Grocholice     |
|      24 | Bertram    | 05799 Mosinee Junction      | Sunfield     | 042   | United Arab Emirates | Sharjah             |
|      25 | Maggie     | 62727 Clyde Gallagher Point | Glacier Hill | 59    | Nicaragua            | Granada             |
|      26 | Lindy      | 23688 Susan Street          | Kim          | 282   | China                | Shibajiazi          |
|      27 | Briana     | 443 Melody Park             | Victoria     | 7     | Japan                | Miyoshi             |
|      28 | Saundra    | 02 Northport Pass           | Rowland      | 3     | Estonia              | J„rvakandi          |
|      29 | Karylin    | 2792 North Center           | Warrior      | 87218 | Argentina            | San Luis del Palmar |
|      30 | Marchall   | 17 Butternut Way            | Farwell      | 10682 | Afghanistan          | Du Lainah           |
|      31 | Quintilla  | 2 Lyons Trail               | Bowman       | 11    | China                | Huanghe             |
|      32 | Paddy      | 3913 Mifflin Trail          | Sutherland   | 41    | Iran                 | Ashkhaneh           |
|      33 | Darbie     | 8 Comanche Court            | Barnett      | 56    | Cuba                 | Moa                 |
|      34 | Stanford   | 04 Oakridge Center          | Menomonie    | 8017  | Czech Republic       | Velk  Dobr          |
|      35 | Barrie     | 612 Melrose Center          | Susan        | 1015  | Czech Republic       | Mil¡kov             |
|      36 | Terencio   | 49 Macpherson Place         | Scofield     | 4883  | China                | Mazhonghe           |
|      37 | Kristoforo | 9 Sommers Terrace           | Hooker       | 56468 | Netherlands          | Oss                 |
|      38 | Dickie     | 242 Dayton Plaza            | Derek        | 736   | Sri Lanka            | Polonnaruwa         |
|      39 | Gregoire   | 488 Tennyson Parkway        | Walton       | 0413  | China                | Gabasumdo           |
|      40 | Igor       | 70764 Chinook Alley         | Toban        | 6593  | Bulgaria             | Bukhovo             |
+---------+------------+-----------------------------+--------------+-------+----------------------+---------------------+
40 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (1, 'Francesco', '899 Fuller Terrace', 'Veith', '254', 'Dalongzhan', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (2, 'Kelsy', '81 5th Circle', 'Shopko', '58145', 'Pap gou', 'Greece');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (3, 'Kial', '1 Shasta Drive', 'Hoffman', '3933', 'Skelleftehamn', 'Sweden');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (4, 'Salvador', '21344 Colorado Center', 'Browning', '4177', 'Isahaya', 'Japan');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (5, 'Leyla', '06988 Marquette Drive', 'Muir', '1233', 'Namayingo', 'Uganda');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (6, 'Jsandye', '505 Bunting Crossing', 'Sunbrook', '61', 'Bern', 'Switzerland');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (7, 'Candi', '26 Towne Drive', 'Fisk', '6188', 'Krupka', 'Czech Republic');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (8, 'Helli', '222 Sloan Crossing', 'Granby', '9442', 'Sobontoro', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (9, 'Reginauld', '47595 Butterfield Way', 'Clove', '6736', 'Morrelgonj', 'Bangladesh');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (10, 'Dallas', '175 Drewry Place', 'Amoth', '4', 'Anao', 'Philippines');
ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '2' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '3' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '4' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '5' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '6' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '7' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '8' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '9' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '10' for key 'PRIMARY'
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> delete from cust_must;
Query OK, 40 rows affected (0.06 sec)

MariaDB [csd2204s18]> insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (1, 'Britteny', '644 Chive Hill', 'Northridge', '56614', 'Pondokunyur', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (2, 'Rock', '5001 Kenwood Avenue', 'Kipling', '849', 'Majur', 'Serbia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (3, 'Shea', '7 Meadow Ridge Junction', 'Judy', '9520', 'Qiulu', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (4, 'Sigrid', '2803 Shelley Road', 'Farwell', '256', 'Jicun', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (5, 'Kimberley', '7 Holmberg Street', 'Anzinger', '096', 'Arpajon', 'France');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (6, 'Abdel', '79 Lukken Pass', 'Comanche', '46', 'Vardane', 'Russia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (7, 'Mayer', '75059 Golf Point', 'Cambridge', '46', 'Nova Ven‚cia', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (8, 'Morton', '2 Lakeland Court', 'Pepper Wood', '93008', 'Cortinhas', 'Portugal');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (9, 'Angele', '357 Grayhawk Pass', 'Kensington', '447', 'Murovanoye', 'Ukraine');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (10, 'Kissie', '6761 Londonderry Drive', 'Di Loreto', '4039', 'T‚kane', 'Mauritania');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (11, 'Rolf', '182 Sage Hill', 'Autumn Leaf', '3578', 'Cruzeiro', 'Portugal');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (12, 'Frasier', '2 Melody Junction', 'Boyd', '97', 'Liang', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (13, 'Demetre', '95 Scott Lane', 'Eagle Crest', '58532', 'Yangzhen', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (14, 'Hank', '503 Merrick Hill', 'Arrowood', '019', 'Sar-e Pul', 'Afghanistan');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (15, 'Cathrine', '18552 Reinke Alley', 'Elmside', '176', 'La‡', 'Albania');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (16, 'Fraser', '12853 Park Meadow Lane', 'Ronald Regan', '90355', 'Khotynets', 'Russia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (17, 'Manon', '1 Nevada Way', 'Talisman', '786', 'Esperanza', 'Philippines');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (18, 'Noby', '5 Myrtle Terrace', 'Pepper Wood', '6220', 'Nacala', 'Mozambique');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (19, 'Aretha', '2934 Delladonna Circle', 'Maple Wood', '20', 'Huixian Chengguanzhen', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (20, 'Morrie', '3 Briar Crest Circle', 'Crownhardt', '5612', 'Santa Rita', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (21, 'Virgilio', '83 Red Cloud Way', 'Marcy', '9', 'Aachen', 'Germany');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (22, 'Emmi', '8633 Hallows Circle', 'Union', '8334', 'Ziyang', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (23, 'Cathlene', '382 Erie Center', 'Upham', '9', 'Honghe', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (24, 'Hally', '4482 Carey Court', 'Texas', '4', 'Tougan', 'Burkina Faso');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (25, 'Ruthe', '86645 Russell Park', 'Canary', '8', 'Marabahan', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (26, 'Celestine', '15 Fulton Circle', 'Stephen', '561', 'Pereira', 'Portugal');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (27, 'Clair', '4 Saint Paul Plaza', 'Lunder', '3', 'Patroc¡nio', 'Brazil');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (28, 'Faber', '8670 Evergreen Terrace', 'Rigney', '5081', 'Sangiyn Dalay', 'Mongolia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (29, 'Evangelin', '1063 Springs Way', 'Schmedeman', '0', 'Lidk”ping', 'Sweden');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (30, 'Albertine', '690 Clemons Circle', 'Fisk', '49', 'Komsomolsk', 'Ukraine');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (31, 'Modestia', '2323 Jana Lane', 'Continental', '0', 'Wuchagou', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (32, 'Holden', '782 Summerview Point', 'Lunder', '67', 'Hitachi-Naka', 'Japan');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (33, 'Tadeo', '9740 Hollow Ridge Way', 'Lillian', '0', 'Bida', 'Nigeria');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (34, 'Tamar', '29608 Jackson Hill', 'Norway Maple', '83', 'Bajos de Haina', 'Dominican Republic');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (35, 'Dieter', '138 Old Gate Junction', 'Gateway', '92501', 'San Juan', 'Argentina');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (36, 'Annora', '735 Cherokee Circle', 'Spaight', '738', 'Stockholm', 'Sweden');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (37, 'Everett', '226 Corben Plaza', 'Hovde', '23', 'Wenshao', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (38, 'Skipper', '7571 Browning Point', 'Blaine', '970', 'Niort', 'France');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (39, 'Marlon', '85 Oak Way', 'Carey', '37400', 'Mislak', 'Indonesia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (40, 'Janine', '4170 Schiller Crossing', 'Sunbrook', '89617', 'Svalyava', 'Ukraine');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (41, 'Beatrice', '4402 Warrior Park', 'Farmco', '0486', 'Chengxi', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (42, 'See', '48051 Stone Corner Hill', 'Aberg', '6122', 'El Retiro', 'Colombia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (43, 'Hansiain', '34418 Logan Street', 'Sugar', '91448', 'Huainan', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (44, 'Dedra', '4 Dakota Avenue', 'Heath', '9', 'Gostyn', 'Poland');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (45, 'Else', '59 Gulseth Trail', 'Forster', '824', 'Qagan Obo', 'China');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (46, 'Drona', '129 Briar Crest Circle', 'Arizona', '2595', 'Ocuviri', 'Peru');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (47, 'Frederique', '89944 New Castle Drive', 'Marquette', '8', 'Por¡c¡ nad S zavou', 'Czech Republic');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (48, 'Bryon', '9 Bluejay Trail', 'Luster', '0295', 'Kaczory', 'Poland');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (49, 'Robbie', '06 Lyons Point', 'Iowa', '1115', 'Skolkovo', 'Russia');insert into cust_must (cust_no, name, addr1, addr2, addr3, city, state) values (50, 'Edmund', '6083 Miller Pass', 'Almo', '2', 'Alpurai', 'Pakistan');
Query OK, 1 row affected (0.04 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.08 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.13 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.06 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.17 sec)

Query OK, 1 row affected (0.09 sec)

Query OK, 1 row affected (0.09 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> desc cust_must;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cust_no | int(5)      | NO   | PRI | NULL    |       |
| name    | varchar(50) | YES  |     | NULL    |       |
| addr1   | varchar(50) | YES  |     | NULL    |       |
| addr2   | varchar(50) | YES  |     | NULL    |       |
| addr3   | varchar(50) | YES  |     | NULL    |       |
| state   | varchar(20) | YES  |     | NULL    |       |
| city    | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from cust_must;
+---------+------------+-------------------------+--------------+-------+--------------------+-----------------------+
| cust_no | name       | addr1                   | addr2        | addr3 | state              | city                  |
+---------+------------+-------------------------+--------------+-------+--------------------+-----------------------+
|       1 | Britteny   | 644 Chive Hill          | Northridge   | 56614 | Indonesia          | Pondokunyur           |
|       2 | Rock       | 5001 Kenwood Avenue     | Kipling      | 849   | Serbia             | Majur                 |
|       3 | Shea       | 7 Meadow Ridge Junction | Judy         | 9520  | China              | Qiulu                 |
|       4 | Sigrid     | 2803 Shelley Road       | Farwell      | 256   | China              | Jicun                 |
|       5 | Kimberley  | 7 Holmberg Street       | Anzinger     | 096   | France             | Arpajon               |
|       6 | Abdel      | 79 Lukken Pass          | Comanche     | 46    | Russia             | Vardane               |
|       7 | Mayer      | 75059 Golf Point        | Cambridge    | 46    | Brazil             | Nova Ven‚cia          |
|       8 | Morton     | 2 Lakeland Court        | Pepper Wood  | 93008 | Portugal           | Cortinhas             |
|       9 | Angele     | 357 Grayhawk Pass       | Kensington   | 447   | Ukraine            | Murovanoye            |
|      10 | Kissie     | 6761 Londonderry Drive  | Di Loreto    | 4039  | Mauritania         | T‚kane                |
|      11 | Rolf       | 182 Sage Hill           | Autumn Leaf  | 3578  | Portugal           | Cruzeiro              |
|      12 | Frasier    | 2 Melody Junction       | Boyd         | 97    | Indonesia          | Liang                 |
|      13 | Demetre    | 95 Scott Lane           | Eagle Crest  | 58532 | China              | Yangzhen              |
|      14 | Hank       | 503 Merrick Hill        | Arrowood     | 019   | Afghanistan        | Sar-e Pul             |
|      15 | Cathrine   | 18552 Reinke Alley      | Elmside      | 176   | Albania            | La‡                   |
|      16 | Fraser     | 12853 Park Meadow Lane  | Ronald Regan | 90355 | Russia             | Khotynets             |
|      17 | Manon      | 1 Nevada Way            | Talisman     | 786   | Philippines        | Esperanza             |
|      18 | Noby       | 5 Myrtle Terrace        | Pepper Wood  | 6220  | Mozambique         | Nacala                |
|      19 | Aretha     | 2934 Delladonna Circle  | Maple Wood   | 20    | China              | Huixian Chengguanzhen |
|      20 | Morrie     | 3 Briar Crest Circle    | Crownhardt   | 5612  | Brazil             | Santa Rita            |
|      21 | Virgilio   | 83 Red Cloud Way        | Marcy        | 9     | Germany            | Aachen                |
|      22 | Emmi       | 8633 Hallows Circle     | Union        | 8334  | China              | Ziyang                |
|      23 | Cathlene   | 382 Erie Center         | Upham        | 9     | China              | Honghe                |
|      24 | Hally      | 4482 Carey Court        | Texas        | 4     | Burkina Faso       | Tougan                |
|      25 | Ruthe      | 86645 Russell Park      | Canary       | 8     | Indonesia          | Marabahan             |
|      26 | Celestine  | 15 Fulton Circle        | Stephen      | 561   | Portugal           | Pereira               |
|      27 | Clair      | 4 Saint Paul Plaza      | Lunder       | 3     | Brazil             | Patroc¡nio            |
|      28 | Faber      | 8670 Evergreen Terrace  | Rigney       | 5081  | Mongolia           | Sangiyn Dalay         |
|      29 | Evangelin  | 1063 Springs Way        | Schmedeman   | 0     | Sweden             | Lidk”ping             |
|      30 | Albertine  | 690 Clemons Circle      | Fisk         | 49    | Ukraine            | Komsomolsk            |
|      31 | Modestia   | 2323 Jana Lane          | Continental  | 0     | China              | Wuchagou              |
|      32 | Holden     | 782 Summerview Point    | Lunder       | 67    | Japan              | Hitachi-Naka          |
|      33 | Tadeo      | 9740 Hollow Ridge Way   | Lillian      | 0     | Nigeria            | Bida                  |
|      34 | Tamar      | 29608 Jackson Hill      | Norway Maple | 83    | Dominican Republic | Bajos de Haina        |
|      35 | Dieter     | 138 Old Gate Junction   | Gateway      | 92501 | Argentina          | San Juan              |
|      36 | Annora     | 735 Cherokee Circle     | Spaight      | 738   | Sweden             | Stockholm             |
|      37 | Everett    | 226 Corben Plaza        | Hovde        | 23    | China              | Wenshao               |
|      38 | Skipper    | 7571 Browning Point     | Blaine       | 970   | France             | Niort                 |
|      39 | Marlon     | 85 Oak Way              | Carey        | 37400 | Indonesia          | Mislak                |
|      40 | Janine     | 4170 Schiller Crossing  | Sunbrook     | 89617 | Ukraine            | Svalyava              |
|      41 | Beatrice   | 4402 Warrior Park       | Farmco       | 0486  | China              | Chengxi               |
|      42 | See        | 48051 Stone Corner Hill | Aberg        | 6122  | Colombia           | El Retiro             |
|      43 | Hansiain   | 34418 Logan Street      | Sugar        | 91448 | China              | Huainan               |
|      44 | Dedra      | 4 Dakota Avenue         | Heath        | 9     | Poland             | Gostyn                |
|      45 | Else       | 59 Gulseth Trail        | Forster      | 824   | China              | Qagan Obo             |
|      46 | Drona      | 129 Briar Crest Circle  | Arizona      | 2595  | Peru               | Ocuviri               |
|      47 | Frederique | 89944 New Castle Drive  | Marquette    | 8     | Czech Republic     | Por¡c¡ nad S zavou    |
|      48 | Bryon      | 9 Bluejay Trail         | Luster       | 0295  | Poland             | Kaczory               |
|      49 | Robbie     | 06 Lyons Point          | Iowa         | 1115  | Russia             | Skolkovo              |
|      50 | Edmund     | 6083 Miller Pass        | Almo         | 2     | Pakistan           | Alpurai               |
+---------+------------+-------------------------+--------------+-------+--------------------+-----------------------+
50 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc ac_must;
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
MariaDB [csd2204s18]> desc ac_mast;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| ac_type  | varchar(3)  | NO   | PRI | NULL    |       |
| ac_no    | int(4)      | NO   | PRI | NULL    |       |
| cust_no  | int(5)      | YES  |     | NULL    |       |
| od_limit | float(10,2) | YES  |     | NULL    |       |
| bal      | float(10,2) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (56, 'saving', 1, 55, '$7.27');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (27, 'saving', 2, 26, '$1.32');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (70, 'saving', 3, 13, '$2.62');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (68, 'saving', 4, 58, '$0.75');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (6, 'saving', 5, 23, '$3.47');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (43, 'saving', 6, 97, '$2.69');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (11, 'saving', 7, 11, '$3.41');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (11, 'current', 8, 48, '$5.35');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (45, 'saving', 9, 53, '$9.67');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (3, 'current', 10, 94, '$1.03');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (62, 'saving', 11, 10, '$5.02');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (4, 'saving', 12, 89, '$0.03');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (11, 'saving', 13, 44, '$3.87');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (56, 'Voonix', 14, 30, '$1.53');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'Kazu', 15, 74, '$7.55');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (10, 'saving', 16, 3, '$1.10');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (98, 'saving', 17, 16, '$1.86');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (1, 'saving', 18, 46, '$7.36');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'saving', 19, 28, '$8.56');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (51, 'current', 20, 2, '$8.74');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (34, 'saving', 21, 98, '$6.43');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'current', 22, 82, '$9.90');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (84, 'saving', 23, 24, '$9.54');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (52, 'saving', 24, 18, '$8.24');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (64, 'saving', 25, 41, '$6.45');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (17, 'saving', 26, 52, '$0.55');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (46, 'saving', 27, 2, '$9.37');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (71, 'saving', 28, 35, '$7.92');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (80, 'saving', 29, 69, '$2.09');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (5, 'saving', 30, 93, '$9.63');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (93, 'current', 31, 13, '$2.64');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (43, 'saving', 32, 99, '$2.03');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (66, 'saving', 33, 54, '$0.67');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (63, 'saving', 34, 86, '$6.22');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (9, 'current', 35, 35, '$2.49');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (16, 'current', 36, 88, '$5.62');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (24, 'saving', 37, 22, '$9.85');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (91, 'saving', 38, 54, '$6.74');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (50, 'current', 39, 80, '$9.60');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (64, 'current', 40, 98, '$8.75');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (45, 'saving', 41, 2, '$4.16');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (62, 'saving', 42, 68, '$8.36');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'saving', 43, 60, '$6.81');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (79, 'saving', 44, 81, '$9.31');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (36, 'current', 45, 17, '$1.05');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (12, 'saving', 46, 34, '$4.67');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (29, 'current', 47, 46, '$2.30');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (16, 'saving', 48, 67, '$3.52');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (5, 'current', 49, 71, '$2.76');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (95, 'checking', 50, 21, '$7.33');
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
MariaDB [csd2204s18]> delete from ac_mast;
Query OK, 0 rows affected (0.03 sec)

MariaDB [csd2204s18]> insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (56, 'saving', 1, 55, '$7.27');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (27, 'saving', 2, 26, '$1.32');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (70, 'saving', 3, 13, '$2.62');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (68, 'saving', 4, 58, '$0.75');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (6, 'saving', 5, 23, '$3.47');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (43, 'saving', 6, 97, '$2.69');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (11, 'saving', 7, 11, '$3.41');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (11, 'current', 8, 48, '$5.35');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (45, 'saving', 9, 53, '$9.67');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (3, 'current', 10, 94, '$1.03');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (62, 'saving', 11, 10, '$5.02');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (4, 'saving', 12, 89, '$0.03');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (11, 'saving', 13, 44, '$3.87');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (56, 'Voonix', 14, 30, '$1.53');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (56, 'saving', 1, 55, '$7.27');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (27, 'saving', 2, 26, '$1.32');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (70, 'saving', 3, 13, '$2.62');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (68, 'saving', 4, 58, '$0.75');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (6, 'saving', 5, 23, '$3.47');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (43, 'saving', 6, 97, '$2.69');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (11, 'saving', 7, 11, '$3.41');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (11, 'current', 8, 48, '$5.35');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (45, 'saving', 9, 53, '$9.67');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (3, 'current', 10, 94, '$1.03');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (62, 'saving', 11, 10, '$5.02');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (4, 'saving', 12, 89, '$0.03');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (11, 'saving', 13, 44, '$3.87');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (56, 'saving', 14, 30, '$1.53');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'saving', 15, 74, '$7.55');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (10, 'saving', 16, 3, '$1.10');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (98, 'saving', 17, 16, '$1.86');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (1, 'saving', 18, 46, '$7.36');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'saving', 19, 28, '$8.56');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (51, 'current', 20, 2, '$8.74');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (34, 'saving', 21, 98, '$6.43');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'current', 22, 82, '$9.90');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (84, 'saving', 23, 24, '$9.54');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (52, 'saving', 24, 18, '$8.24');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (64, 'saving', 25, 41, '$6.45');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (17, 'saving', 26, 52, '$0.55');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (46, 'saving', 27, 2, '$9.37');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (71, 'saving', 28, 35, '$7.92');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (80, 'saving', 29, 69, '$2.09');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (5, 'saving', 30, 93, '$9.63');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (93, 'current', 31, 13, '$2.64');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (43, 'saving', 32, 99, '$2.03');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (66, 'saving', 33, 54, '$0.67');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (63, 'saving', 34, 86, '$6.22');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (9, 'current', 35, 35, '$2.49');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (16, 'current', 36, 88, '$5.62');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (24, 'saving', 37, 22, '$9.85');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (91, 'saving', 38, 54, '$6.74');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (50, 'current', 39, 80, '$9.60');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (64, 'current', 40, 98, '$8.75');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (45, 'saving', 41, 2, '$4.16');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (62, 'saving', 42, 68, '$8.36');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'saving', 43, 60, '$6.81');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (79, 'saving', 44, 81, '$9.31');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (36, 'current', 45, 17, '$1.05');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (12, 'saving', 46, 34, '$4.67');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (29, 'current', 47, 46, '$2.30');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (16, 'saving', 48, 67, '$3.52');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (5, 'current', 49, 71, '$2.76');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (95, 'checking', 50, 21, '$7.33');', 15, 74, '$7.55');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (10, 'saving', 16, 3, '$1.10');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (98, 'saving', 17, 16, '$1.86');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (1, 'saving', 18, 46, '$7.36');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'saving', 19, 28, '$8.56');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (51, 'current', 20, 2, '$8.74');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (34, 'saving', 21, 98, '$6.43');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'current', 22, 82, '$9.90');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (84, 'saving', 23, 24, '$9.54');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (52, 'saving', 24, 18, '$8.24');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (64, 'saving', 25, 41, '$6.45');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (17, 'saving', 26, 52, '$0.55');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (46, 'saving', 27, 2, '$9.37');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (71, 'saving', 28, 35, '$7.92');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (80, 'saving', 29, 69, '$2.09');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (5, 'saving', 30, 93, '$9.63');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (93, 'current', 31, 13, '$2.64');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (43, 'saving', 32, 99, '$2.03');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (66, 'saving', 33, 54, '$0.67');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (63, 'saving', 34, 86, '$6.22');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (9, 'current', 35, 35, '$2.49');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (16, 'current', 36, 88, '$5.62');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (24, 'saving', 37, 22, '$9.85');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (91, 'saving', 38, 54, '$6.74');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (50, 'current', 39, 80, '$9.60');insert into ac_must (ac_no, ac_type, cust_no, od_limit, bal) values (64, 'current', 40, 98, '$8.75');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (45, 'saving', 41, 2, '$4.16');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (62, 'saving', 42, 68, '$8.36');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'saving', 43, 60, '$6.81');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (79, 'saving', 44, 81, '$9.31');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (36, 'current', 45, 17, '$1.05');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (12, 'saving', 46, 34, '$4.67');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (29, 'current', 47, 46, '$2.30');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (16, 'saving', 48, 67, '$3.52');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (5, 'current', 49, 71, '$2.76');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (95, 'checking', 50, 21, '$7.33');
Query OK, 1 row affected, 2 warnings (0.05 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

ERROR 1062 (23000): Duplicate entry 'sav-11' for key 'PRIMARY'
Query OK, 1 row affected, 2 warnings (0.03 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'saving', 1, 55, '$7.27');insert into ac_mast (ac_no, ac_type, cust_no, od_limit,' at line 1
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
Query OK, 1 row affected, 2 warnings (0.03 sec)

ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.04 sec)

Query OK, 1 row affected, 2 warnings (0.14 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

ERROR 1062 (23000): Duplicate entry 'sav-43' for key 'PRIMARY'
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.04 sec)

ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

ERROR 1146 (42S02): Table 'csd2204s18.ac_must' doesn't exist
ERROR 1062 (23000): Duplicate entry 'sav-45' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry 'sav-62' for key 'PRIMARY'
Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

MariaDB [csd2204s18]> select * from ac_mast;
+---------+-------+---------+----------+------+
| ac_type | ac_no | cust_no | od_limit | bal  |
+---------+-------+---------+----------+------+
| che     |    95 |      50 |    21.00 | 0.00 |
| cur     |     3 |      10 |    94.00 | 0.00 |
| cur     |     5 |      49 |    71.00 | 0.00 |
| cur     |     7 |      22 |    82.00 | 0.00 |
| cur     |     9 |      35 |    35.00 | 0.00 |
| cur     |    11 |       8 |    48.00 | 0.00 |
| cur     |    29 |      47 |    46.00 | 0.00 |
| cur     |    36 |      45 |    17.00 | 0.00 |
| cur     |    50 |      39 |    80.00 | 0.00 |
| cur     |    51 |      20 |     2.00 | 0.00 |
| cur     |    93 |      31 |    13.00 | 0.00 |
| sav     |     1 |      18 |    46.00 | 0.00 |
| sav     |     4 |      12 |    89.00 | 0.00 |
| sav     |     5 |      30 |    93.00 | 0.00 |
| sav     |     6 |       5 |    23.00 | 0.00 |
| sav     |     7 |      43 |    60.00 | 0.00 |
| sav     |    11 |       7 |    11.00 | 0.00 |
| sav     |    12 |      46 |    34.00 | 0.00 |
| sav     |    16 |      48 |    67.00 | 0.00 |
| sav     |    27 |       2 |    26.00 | 0.00 |
| sav     |    34 |      21 |    98.00 | 0.00 |
| sav     |    43 |       6 |    97.00 | 0.00 |
| sav     |    45 |       9 |    53.00 | 0.00 |
| sav     |    52 |      24 |    18.00 | 0.00 |
| sav     |    56 |       1 |    55.00 | 0.00 |
| sav     |    62 |      11 |    10.00 | 0.00 |
| sav     |    63 |      34 |    86.00 | 0.00 |
| sav     |    64 |      25 |    41.00 | 0.00 |
| sav     |    68 |       4 |    58.00 | 0.00 |
| sav     |    70 |       3 |    13.00 | 0.00 |
| sav     |    71 |      28 |    35.00 | 0.00 |
| sav     |    79 |      44 |    81.00 | 0.00 |
| sav     |    80 |      29 |    69.00 | 0.00 |
| sav     |    84 |      23 |    24.00 | 0.00 |
| sav     |    91 |      38 |    54.00 | 0.00 |
| Voo     |    56 |      14 |    30.00 | 0.00 |
+---------+-------+---------+----------+------+
36 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table ac_mast modify ac_type varchar(10);
Query OK, 36 rows affected (0.91 sec)
Records: 36  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc ac_mast;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| ac_type  | varchar(10) | NO   | PRI | NULL    |       |
| ac_no    | int(4)      | NO   | PRI | NULL    |       |
| cust_no  | int(5)      | YES  |     | NULL    |       |
| od_limit | float(10,2) | YES  |     | NULL    |       |
| bal      | float(10,2) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> delete * from ac_mast;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '* from ac_mast' at line 1
MariaDB [csd2204s18]> delete from ac_mast;
Query OK, 36 rows affected (0.03 sec)

MariaDB [csd2204s18]> insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (83, 'saving', 1, 88, '7.17');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (92, 'saving', 2, 38, '3.37');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (1, 'saving', 3, 25, '9.04');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (90, 'current', 4, 19, '3.03');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (20, 'saving', 5, 85, '4.59');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (53, 'current', 6, 97, '5.02');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (2, 'saving', 7, 60, '3.28');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (48, 'saving', 8, 93, '6.52');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (48, 'current', 9, 34, '1.53');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (38, 'saving', 10, 15, '5.10');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (22, 'current', 11, 16, '0.23');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (81, 'saving', 12, 51, '7.62');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (100, 'saving', 13, 14, '1.19');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (43, 'current', 14, 31, '8.55');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (33, 'saving', 15, 6, '8.84');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (55, 'saving', 16, 9, '7.46');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (29, 'current', 17, 77, '1.93');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (62, 'saving', 18, 87, '3.51');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (99, 'current', 19, 13, '5.66');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (5, 'current', 20, 77, '4.08');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (11, 'saving', 21, 76, '1.23');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (53, 'saving', 22, 75, '4.92');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (39, 'saving', 23, 96, '5.99');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (1, 'current', 24, 96, '2.08');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (82, 'saving', 25, 95, '7.62');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (92, 'current', 26, 82, '0.63');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (93, 'saving', 27, 77, '9.53');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (100, 'current', 28, 26, '4.40');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (64, 'saving', 29, 17, '6.86');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (67, 'current', 30, 24, '0.49');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (87, 'saving', 31, 87, '4.68');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (71, 'current', 32, 83, '6.02');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (74, 'saving', 33, 86, '2.03');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (44, 'current', 34, 17, '4.23');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (13, 'saving', 35, 45, '0.71');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (74, 'current', 36, 93, '0.12');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (74, 'saving', 37, 33, '8.36');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (31, 'current', 38, 19, '3.42');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (44, 'saving', 39, 23, '8.67');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (70, 'current', 40, 64, '2.05');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (3, 'saving', 41, 67, '3.32');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (14, 'saving', 42, 47, '0.15');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (39, 'current', 43, 20, '9.81');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (89, 'saving', 44, 99, '0.56');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (100, 'current', 45, 78, '6.11');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (18, 'saving', 46, 71, '3.26');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (79, 'saving', 47, 47, '5.64');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (77, 'saving', 48, 69, '4.21');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (72, 'saving', 49, 50, '7.06');insert into ac_mast (ac_no, ac_type, cust_no, od_limit, bal) values (7, 'saving', 50, 40, '7.79');
Query OK, 1 row affected (0.06 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.07 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.08 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.08 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.06 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.04 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.13 sec)

ERROR 1062 (23000): Duplicate entry 'saving-74' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.04 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry 'current-100' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> select * from ac_mast;
+---------+-------+---------+----------+------+
| ac_type | ac_no | cust_no | od_limit | bal  |
+---------+-------+---------+----------+------+
| current |     1 |      24 |    96.00 | 2.08 |
| current |     5 |      20 |    77.00 | 4.08 |
| current |    22 |      11 |    16.00 | 0.23 |
| current |    29 |      17 |    77.00 | 1.93 |
| current |    31 |      38 |    19.00 | 3.42 |
| current |    39 |      43 |    20.00 | 9.81 |
| current |    43 |      14 |    31.00 | 8.55 |
| current |    44 |      34 |    17.00 | 4.23 |
| current |    48 |       9 |    34.00 | 1.53 |
| current |    53 |       6 |    97.00 | 5.02 |
| current |    67 |      30 |    24.00 | 0.49 |
| current |    70 |      40 |    64.00 | 2.05 |
| current |    71 |      32 |    83.00 | 6.02 |
| current |    74 |      36 |    93.00 | 0.12 |
| current |    90 |       4 |    19.00 | 3.03 |
| current |    92 |      26 |    82.00 | 0.63 |
| current |    99 |      19 |    13.00 | 5.66 |
| current |   100 |      28 |    26.00 | 4.40 |
| saving  |     1 |       3 |    25.00 | 9.04 |
| saving  |     2 |       7 |    60.00 | 3.28 |
| saving  |     3 |      41 |    67.00 | 3.32 |
| saving  |     7 |      50 |    40.00 | 7.79 |
| saving  |    11 |      21 |    76.00 | 1.23 |
| saving  |    13 |      35 |    45.00 | 0.71 |
| saving  |    14 |      42 |    47.00 | 0.15 |
| saving  |    18 |      46 |    71.00 | 3.26 |
| saving  |    20 |       5 |    85.00 | 4.59 |
| saving  |    33 |      15 |     6.00 | 8.84 |
| saving  |    38 |      10 |    15.00 | 5.10 |
| saving  |    39 |      23 |    96.00 | 5.99 |
| saving  |    44 |      39 |    23.00 | 8.67 |
| saving  |    48 |       8 |    93.00 | 6.52 |
| saving  |    53 |      22 |    75.00 | 4.92 |
| saving  |    55 |      16 |     9.00 | 7.46 |
| saving  |    62 |      18 |    87.00 | 3.51 |
| saving  |    64 |      29 |    17.00 | 6.86 |
| saving  |    72 |      49 |    50.00 | 7.06 |
| saving  |    74 |      33 |    86.00 | 2.03 |
| saving  |    77 |      48 |    69.00 | 4.21 |
| saving  |    79 |      47 |    47.00 | 5.64 |
| saving  |    81 |      12 |    51.00 | 7.62 |
| saving  |    82 |      25 |    95.00 | 7.62 |
| saving  |    83 |       1 |    88.00 | 7.17 |
| saving  |    87 |      31 |    87.00 | 4.68 |
| saving  |    89 |      44 |    99.00 | 0.56 |
| saving  |    92 |       2 |    38.00 | 3.37 |
| saving  |    93 |      27 |    77.00 | 9.53 |
| saving  |   100 |      13 |    14.00 | 1.19 |
+---------+-------+---------+----------+------+
48 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc emp;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| empno | int(5)      | YES  |     | NULL    |       |
| name  | varchar(50) | YES  |     | NULL    |       |
| jdate | date        | YES  |     | NULL    |       |
| dept  | int(3)      | YES  |     | NULL    |       |
| desig | varchar(20) | YES  |     | NULL    |       |
| basic | float(10,2) | YES  |     | NULL    |       |
| da    | float(10,2) | YES  |     | NULL    |       |
| hra   | float(10,2) | YES  |     | NULL    |       |
| pf    | float(10,2) | YES  |     | NULL    |       |
| it    | float(10,2) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (81, 'Hebert', '2018/05/05', 65, 'Marketing', 23, 44, 21, 82, 71);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (79, 'Anitra', '2017/08/28', 8, 'Support', 79, 90, 93, 9, 72);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (24, 'Donna', '2017/11/17', 9, 'Sales', 6, 65, 98, 49, 5);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (17, 'Baudoin', '2018/04/01', 34, 'Services', 93, 9, 36, 38, 28);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (82, 'Lennard', '2018/05/01', 61, 'Legal', 16, 99, 54, 59, 77);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (30, 'Sileas', '2018/04/16', 47, 'Accounting', 9, 21, 87, 54, 36);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (54, 'Lynnelle', '2017/08/04', 38, 'Marketing', 58, 53, 88, 16, 57);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (37, 'Starla', '2017/10/12', 82, 'Human Resources', 53, 17, 68, 63, 41);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (44, 'Albrecht', '2017/12/25', 25, 'Legal', 40, 31, 84, 68, 72);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (53, 'Bryce', '2018/03/05', 43, 'Accounting', 38, 77, 29, 80, 54);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (98, 'Wyatan', '2017/12/03', 96, 'Product Management', 96, 41, 90, 35, 96);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (40, 'Budd', '2017/11/09', 47, 'Accounting', 33, 90, 2, 22, 24);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (56, 'Agata', '2017/09/18', 91, 'Legal', 66, 52, 88, 94, 28);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (17, 'Maurene', '2017/09/05', 33, 'Training', 68, 29, 92, 8, 85);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (72, 'Perla', '2018/03/20', 34, 'Accounting', 76, 92, 86, 54, 72);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (32, 'Bettina', '2017/08/01', 93, 'Marketing', 49, 65, 57, 90, 60);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (26, 'Karry', '2018/02/03', 4, 'Engineering', 9, 12, 6, 91, 52);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (2, 'Myrilla', '2018/04/28', 60, 'Research and Development', 57, 39, 67, 67, 2);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (42, 'Bartholomeus', '2018/01/19', 91, 'Human Resources', 35, 98, 75, 67, 6);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (40, 'Tomaso', '2018/03/01', 41, 'Marketing', 64, 65, 88, 100, 28);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (29, 'Massimiliano', '2018/02/26', 72, 'Sales', 38, 14, 47, 61, 27);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (38, 'Jacinthe', '2017/08/27', 94, 'Services', 13, 1, 76, 42, 17);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (20, 'Bev', '2018/04/14', 18, 'Human Resources', 40, 27, 97, 38, 9);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (90, 'Bartlett', '2018/04/08', 89, 'Business Development', 11, 18, 25, 2, 13);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (83, 'Cynthia', '2018/03/30', 84, 'Engineering', 37, 82, 52, 23, 25);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (79, 'Elbertina', '2017/10/31', 95, 'Training', 19, 41, 92, 41, 30);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (20, 'Wilhelmine', '2017/12/26', 6, 'Support', 48, 5, 75, 77, 40);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (46, 'Maurita', '2017/08/24', 99, 'Legal', 24, 83, 34, 87, 81);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (100, 'Heinrik', '2017/10/04', 38, 'Engineering', 69, 20, 97, 93, 14);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (48, 'Alfonse', '2018/03/04', 87, 'Business Development', 5, 83, 68, 20, 58);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (67, 'Joy', '2018/05/20', 65, 'Legal', 97, 58, 86, 33, 33);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (4, 'Cheston', '2017/11/29', 34, 'Marketing', 75, 23, 70, 46, 84);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (14, 'Dorelia', '2018/04/26', 8, 'Services', 93, 10, 2, 97, 71);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (92, 'Winnah', '2018/03/29', 64, 'Services', 77, 58, 66, 28, 36);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (13, 'Seana', '2017/11/13', 33, 'Product Management', 17, 63, 38, 99, 66);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (53, 'Graham', '2018/02/06', 70, 'Legal', 60, 85, 100, 54, 48);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (94, 'Paxon', '2017/06/16', 82, 'Sales', 31, 87, 52, 81, 83);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (2, 'Carolus', '2018/04/24', 17, 'Accounting', 74, 20, 63, 14, 68);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (23, 'Krissie', '2017/11/01', 14, 'Research and Development', 8, 24, 54, 87, 95);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (24, 'Evonne', '2017/06/08', 5, 'Accounting', 18, 49, 70, 66, 31);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (28, 'Tess', '2017/06/10', 61, 'Training', 96, 99, 17, 80, 38);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (15, 'Natalya', '2018/03/29', 13, 'Research and Development', 64, 75, 81, 100, 60);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (44, 'Lura', '2017/07/18', 25, 'Legal', 12, 46, 17, 89, 82);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (80, 'Maia', '2017/09/12', 31, 'Services', 45, 85, 3, 40, 87);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (35, 'Marijn', '2018/03/06', 76, 'Engineering', 5, 60, 91, 93, 81);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (54, 'Stern', '2017/09/24', 81, 'Sales', 47, 60, 97, 30, 72);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (62, 'Danita', '2017/10/09', 44, 'Product Management', 34, 11, 47, 39, 55);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (98, 'Ardelle', '2017/10/27', 65, 'Sales', 96, 78, 56, 55, 22);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (63, 'Menard', '2018/04/08', 69, 'Support', 58, 36, 19, 54, 62);insert into emp (emp_no, name, jdate, dept, desig, basic, da, hra, pf, it) values (71, 'Roseline', '2017/09/22', 13, 'Accounting', 6, 17, 80, 91, 51);
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
ERROR 1054 (42S22): Unknown column 'emp_no' in 'field list'
MariaDB [csd2204s18]> delete from emp;
Query OK, 0 rows affected (0.03 sec)

MariaDB [csd2204s18]> insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (81, 'Neddie', '2018/05/11', 49, 'Engineering', 40, 10, 13, 77, 42);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (35, 'Agustin', '2017/06/08', 2, 'Training', 75, 89, 44, 58, 72);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (26, 'Joel', '2017/07/02', 35, 'Training', 45, 13, 69, 30, 34);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (6, 'Ysabel', '2018/02/16', 36, 'Engineering', 15, 29, 69, 53, 77);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (63, 'Thekla', '2017/05/28', 22, 'Support', 91, 68, 72, 71, 49);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (97, 'Cozmo', '2017/07/05', 44, 'Business Development', 58, 69, 19, 57, 28);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (33, 'Selia', '2018/05/02', 34, 'Accounting', 79, 15, 1, 67, 19);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (87, 'Dasha', '2017/08/22', 94, 'Human Resources', 80, 26, 21, 33, 89);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (98, 'Florette', '2017/10/03', 66, 'Marketing', 93, 79, 34, 36, 73);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (65, 'Otha', '2017/12/07', 91, 'Accounting', 28, 99, 44, 94, 51);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (99, 'Orland', '2017/11/21', 48, 'Support', 59, 68, 27, 76, 97);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (59, 'Lyndell', '2017/08/09', 44, 'Services', 37, 32, 59, 86, 69);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (27, 'Johannes', '2017/09/25', 94, 'Accounting', 26, 11, 56, 55, 9);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (65, 'Dana', '2017/09/24', 59, 'Legal', 35, 44, 76, 23, 40);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (28, 'Lars', '2018/04/10', 79, 'Support', 55, 92, 91, 35, 2);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (92, 'Dane', '2017/08/08', 52, 'Sales', 56, 73, 63, 64, 58);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (73, 'Linnet', '2017/12/04', 55, 'Services', 42, 65, 30, 97, 43);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (11, 'Corry', '2017/06/25', 33, 'Research and Development', 59, 12, 86, 16, 94);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (28, 'Florinda', '2017/11/01', 12, 'Product Management', 29, 59, 46, 1, 43);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (58, 'Lorettalorna', '2017/11/13', 70, 'Business Development', 23, 31, 34, 48, 84);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (73, 'Valdemar', '2017/09/30', 41, 'Research and Development', 46, 27, 73, 16, 9);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (81, 'Ethe', '2017/12/21', 53, 'Training', 22, 9, 43, 93, 25);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (22, 'Inigo', '2018/01/27', 28, 'Marketing', 49, 27, 20, 19, 71);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (6, 'Derron', '2018/05/06', 53, 'Product Management', 32, 72, 88, 74, 67);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (34, 'Lethia', '2017/11/15', 23, 'Research and Development', 10, 83, 80, 21, 98);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (82, 'Leonore', '2018/05/05', 62, 'Human Resources', 52, 63, 9, 32, 95);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (60, 'Doralia', '2017/06/11', 4, 'Research and Development', 35, 98, 67, 96, 22);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (17, 'Madel', '2017/06/21', 98, 'Services', 36, 74, 60, 35, 65);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (21, 'Phyllys', '2017/07/19', 61, 'Engineering', 68, 65, 56, 51, 21);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (8, 'Guilbert', '2017/12/14', 4, 'Product Management', 53, 74, 44, 17, 77);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (83, 'Meara', '2017/07/21', 59, 'Product Management', 40, 43, 18, 56, 86);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (48, 'Judye', '2017/06/21', 1, 'Engineering', 29, 37, 73, 33, 48);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (2, 'Becky', '2018/02/27', 77, 'Research and Development', 83, 69, 78, 68, 8);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (100, 'Fania', '2018/05/11', 67, 'Accounting', 97, 19, 16, 4, 35);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (69, 'Kathe', '2017/11/01', 15, 'Research and Development', 44, 91, 60, 8, 36);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (9, 'Brinna', '2017/11/06', 87, 'Human Resources', 74, 31, 26, 3, 13);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (77, 'Tommi', '2017/11/02', 17, 'Business Development', 82, 53, 97, 66, 59);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (39, 'Arliene', '2018/03/13', 35, 'Marketing', 90, 30, 92, 51, 59);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (10, 'Melisande', '2017/07/02', 78, 'Support', 62, 73, 64, 11, 58);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (3, 'Trula', '2018/04/11', 75, 'Sales', 21, 36, 6, 71, 73);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (97, 'Whittaker', '2017/06/22', 52, 'Research and Development', 3, 48, 61, 99, 13);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (100, 'Cyrillus', '2018/01/30', 10, 'Legal', 25, 83, 11, 53, 51);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (8, 'Marcellus', '2017/05/25', 4, 'Product Management', 52, 10, 45, 27, 66);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (87, 'Christian', '2017/11/27', 69, 'Engineering', 60, 31, 100, 14, 42);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (52, 'Aili', '2017/05/25', 87, 'Accounting', 30, 83, 38, 68, 34);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (45, 'Trudie', '2018/03/29', 56, 'Accounting', 31, 65, 42, 90, 63);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (54, 'Ingeborg', '2018/05/20', 18, 'Legal', 42, 7, 11, 13, 73);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (14, 'Pauli', '2018/03/16', 72, 'Human Resources', 80, 15, 3, 5, 48);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (20, 'Tammi', '2017/12/21', 70, 'Legal', 85, 55, 9, 84, 55);insert into emp (empno, name, jdate, dept, desig, basic, da, hra, pf, it) values (48, 'Hagen', '2017/08/19', 59, 'Product Management', 33, 56, 3, 60, 52);
Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.08 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected, 1 warning (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected, 1 warning (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected, 1 warning (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected, 1 warning (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.06 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected, 1 warning (0.02 sec)

Query OK, 1 row affected (0.22 sec)

Query OK, 1 row affected, 1 warning (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected, 1 warning (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> select * from emp;
+-------+--------------+------------+------+----------------------+-------+-------+--------+-------+-------+
| empno | name         | jdate      | dept | desig                | basic | da    | hra    | pf    | it    |
+-------+--------------+------------+------+----------------------+-------+-------+--------+-------+-------+
|    81 | Neddie       | 2018-05-11 |   49 | Engineering          | 40.00 | 10.00 |  13.00 | 77.00 | 42.00 |
|    35 | Agustin      | 2017-06-08 |    2 | Training             | 75.00 | 89.00 |  44.00 | 58.00 | 72.00 |
|    26 | Joel         | 2017-07-02 |   35 | Training             | 45.00 | 13.00 |  69.00 | 30.00 | 34.00 |
|     6 | Ysabel       | 2018-02-16 |   36 | Engineering          | 15.00 | 29.00 |  69.00 | 53.00 | 77.00 |
|    63 | Thekla       | 2017-05-28 |   22 | Support              | 91.00 | 68.00 |  72.00 | 71.00 | 49.00 |
|    97 | Cozmo        | 2017-07-05 |   44 | Business Development | 58.00 | 69.00 |  19.00 | 57.00 | 28.00 |
|    33 | Selia        | 2018-05-02 |   34 | Accounting           | 79.00 | 15.00 |   1.00 | 67.00 | 19.00 |
|    87 | Dasha        | 2017-08-22 |   94 | Human Resources      | 80.00 | 26.00 |  21.00 | 33.00 | 89.00 |
|    98 | Florette     | 2017-10-03 |   66 | Marketing            | 93.00 | 79.00 |  34.00 | 36.00 | 73.00 |
|    65 | Otha         | 2017-12-07 |   91 | Accounting           | 28.00 | 99.00 |  44.00 | 94.00 | 51.00 |
|    99 | Orland       | 2017-11-21 |   48 | Support              | 59.00 | 68.00 |  27.00 | 76.00 | 97.00 |
|    59 | Lyndell      | 2017-08-09 |   44 | Services             | 37.00 | 32.00 |  59.00 | 86.00 | 69.00 |
|    27 | Johannes     | 2017-09-25 |   94 | Accounting           | 26.00 | 11.00 |  56.00 | 55.00 |  9.00 |
|    65 | Dana         | 2017-09-24 |   59 | Legal                | 35.00 | 44.00 |  76.00 | 23.00 | 40.00 |
|    28 | Lars         | 2018-04-10 |   79 | Support              | 55.00 | 92.00 |  91.00 | 35.00 |  2.00 |
|    92 | Dane         | 2017-08-08 |   52 | Sales                | 56.00 | 73.00 |  63.00 | 64.00 | 58.00 |
|    73 | Linnet       | 2017-12-04 |   55 | Services             | 42.00 | 65.00 |  30.00 | 97.00 | 43.00 |
|    11 | Corry        | 2017-06-25 |   33 | Research and Develop | 59.00 | 12.00 |  86.00 | 16.00 | 94.00 |
|    28 | Florinda     | 2017-11-01 |   12 | Product Management   | 29.00 | 59.00 |  46.00 |  1.00 | 43.00 |
|    58 | Lorettalorna | 2017-11-13 |   70 | Business Development | 23.00 | 31.00 |  34.00 | 48.00 | 84.00 |
|    73 | Valdemar     | 2017-09-30 |   41 | Research and Develop | 46.00 | 27.00 |  73.00 | 16.00 |  9.00 |
|    81 | Ethe         | 2017-12-21 |   53 | Training             | 22.00 |  9.00 |  43.00 | 93.00 | 25.00 |
|    22 | Inigo        | 2018-01-27 |   28 | Marketing            | 49.00 | 27.00 |  20.00 | 19.00 | 71.00 |
|     6 | Derron       | 2018-05-06 |   53 | Product Management   | 32.00 | 72.00 |  88.00 | 74.00 | 67.00 |
|    34 | Lethia       | 2017-11-15 |   23 | Research and Develop | 10.00 | 83.00 |  80.00 | 21.00 | 98.00 |
|    82 | Leonore      | 2018-05-05 |   62 | Human Resources      | 52.00 | 63.00 |   9.00 | 32.00 | 95.00 |
|    60 | Doralia      | 2017-06-11 |    4 | Research and Develop | 35.00 | 98.00 |  67.00 | 96.00 | 22.00 |
|    17 | Madel        | 2017-06-21 |   98 | Services             | 36.00 | 74.00 |  60.00 | 35.00 | 65.00 |
|    21 | Phyllys      | 2017-07-19 |   61 | Engineering          | 68.00 | 65.00 |  56.00 | 51.00 | 21.00 |
|     8 | Guilbert     | 2017-12-14 |    4 | Product Management   | 53.00 | 74.00 |  44.00 | 17.00 | 77.00 |
|    83 | Meara        | 2017-07-21 |   59 | Product Management   | 40.00 | 43.00 |  18.00 | 56.00 | 86.00 |
|    48 | Judye        | 2017-06-21 |    1 | Engineering          | 29.00 | 37.00 |  73.00 | 33.00 | 48.00 |
|     2 | Becky        | 2018-02-27 |   77 | Research and Develop | 83.00 | 69.00 |  78.00 | 68.00 |  8.00 |
|   100 | Fania        | 2018-05-11 |   67 | Accounting           | 97.00 | 19.00 |  16.00 |  4.00 | 35.00 |
|    69 | Kathe        | 2017-11-01 |   15 | Research and Develop | 44.00 | 91.00 |  60.00 |  8.00 | 36.00 |
|     9 | Brinna       | 2017-11-06 |   87 | Human Resources      | 74.00 | 31.00 |  26.00 |  3.00 | 13.00 |
|    77 | Tommi        | 2017-11-02 |   17 | Business Development | 82.00 | 53.00 |  97.00 | 66.00 | 59.00 |
|    39 | Arliene      | 2018-03-13 |   35 | Marketing            | 90.00 | 30.00 |  92.00 | 51.00 | 59.00 |
|    10 | Melisande    | 2017-07-02 |   78 | Support              | 62.00 | 73.00 |  64.00 | 11.00 | 58.00 |
|     3 | Trula        | 2018-04-11 |   75 | Sales                | 21.00 | 36.00 |   6.00 | 71.00 | 73.00 |
|    97 | Whittaker    | 2017-06-22 |   52 | Research and Develop |  3.00 | 48.00 |  61.00 | 99.00 | 13.00 |
|   100 | Cyrillus     | 2018-01-30 |   10 | Legal                | 25.00 | 83.00 |  11.00 | 53.00 | 51.00 |
|     8 | Marcellus    | 2017-05-25 |    4 | Product Management   | 52.00 | 10.00 |  45.00 | 27.00 | 66.00 |
|    87 | Christian    | 2017-11-27 |   69 | Engineering          | 60.00 | 31.00 | 100.00 | 14.00 | 42.00 |
|    52 | Aili         | 2017-05-25 |   87 | Accounting           | 30.00 | 83.00 |  38.00 | 68.00 | 34.00 |
|    45 | Trudie       | 2018-03-29 |   56 | Accounting           | 31.00 | 65.00 |  42.00 | 90.00 | 63.00 |
|    54 | Ingeborg     | 2018-05-20 |   18 | Legal                | 42.00 |  7.00 |  11.00 | 13.00 | 73.00 |
|    14 | Pauli        | 2018-03-16 |   72 | Human Resources      | 80.00 | 15.00 |   3.00 |  5.00 | 48.00 |
|    20 | Tammi        | 2017-12-21 |   70 | Legal                | 85.00 | 55.00 |   9.00 | 84.00 | 55.00 |
|    48 | Hagen        | 2017-08-19 |   59 | Product Management   | 33.00 | 56.00 |   3.00 | 60.00 | 52.00 |
+-------+--------------+------------+------+----------------------+-------+-------+--------+-------+-------+
50 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc trans;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ac_type | varchar(3)  | NO   | PRI | NULL    |       |
| ac_no   | int(4)      | NO   | PRI | NULL    |       |
| tdate   | date        | NO   | PRI | NULL    |       |
| counter | int(2)      | YES  |     | NULL    |       |
| amount  | float(10,2) | YES  |     | NULL    |       |
| descr   | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 67934, '2017/11/14', 860, '857605.68', 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 88181, '2018/01/10', 40, '330774.69', 'suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 25090, '2017/12/07', 146, '117804.92', 'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 68461, '2017/10/05', 226, '980926.49', 'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 53881, '2018/01/06', 746, '215387.55', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 28831, '2018/02/12', 229, '240168.47', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 85264, '2017/07/14', 257, '942672.57', 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 34508, '2017/07/08', 377, '303072.67', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 96501, '2018/02/13', 956, '193240.27', 'id nisl venenatis lacinia aenean sit amet justo morbi ut odio');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 56627, '2017/08/14', 774, '799606.58', 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 29794, '2017/11/29', 414, '22834.71', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 10412, '2017/07/20', 196, '6588.77', 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 29847, '2017/09/16', 856, '229123.62', 'amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 17298, '2017/09/12', 366, '630886.06', 'non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 90715, '2018/05/20', 359, '437431.08', 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 17519, '2017/05/28', 512, '566493.53', 'mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 15764, '2017/08/15', 64, '979320.38', 'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 81963, '2018/03/01', 193, '452310.62', 'donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 75523, '2018/04/18', 124, '548231.89', 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 57511, '2017/06/17', 466, '565127.81', 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 32849, '2017/10/08', 198, '745240.57', 'eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 33603, '2018/04/29', 987, '376447.50', 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 71791, '2017/12/17', 899, '66418.86', 'velit eu est congue elementum in hac habitasse platea dictumst morbi');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 37160, '2018/02/17', 235, '870722.07', 'luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 96767, '2018/01/14', 293, '227184.70', 'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 38758, '2017/12/15', 513, '119962.45', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 30431, '2018/03/17', 628, '821607.24', 'semper rutrum nulla nunc purus phasellus in felis donec semper');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 2594, '2018/03/10', 116, '813443.32', 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 53232, '2017/09/10', 118, '786373.10', 'libero nam dui proin leo odio porttitor id consequat in');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 66090, '2017/12/11', 308, '72975.78', 'integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 2136, '2017/06/23', 157, '673871.49', 'pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 6776, '2017/08/27', 877, '371112.11', 'mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 26194, '2017/12/18', 995, '783852.00', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 37254, '2017/06/16', 115, '808733.94', 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 17487, '2018/02/14', 113, '145854.55', 'nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 68529, '2017/06/07', 688, '140490.50', 'id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 38016, '2018/02/01', 494, '730706.63', 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 10622, '2017/12/14', 591, '188864.61', 'ligula in lacus curabitur at ipsum ac tellus semper interdum');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 63239, '2017/05/25', 207, '870278.22', 'luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 86113, '2017/11/12', 608, '844433.24', 'sit amet nulla quisque arcu libero rutrum ac lobortis vel');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 90149, '2018/04/06', 89, '920834.61', 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 68366, '2017/07/27', 150, '271533.54', 'curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 70124, '2018/04/25', 212, '872963.35', 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 91157, '2017/09/04', 402, '93657.73', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 28767, '2017/08/18', 328, '302657.59', 'lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 80739, '2018/04/21', 963, '71739.20', 'in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 28029, '2017/09/09', 351, '22426.68', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 94474, '2017/09/14', 322, '58924.97', 'gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 86630, '2018/02/14', 920, '770401.09', 'donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis');insert into emp (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 69594, '2018/04/26', 954, '882770.24', 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna');
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
ERROR 1054 (42S22): Unknown column 'ac_type' in 'field list'
MariaDB [csd2204s18]> delete from trans;
Query OK, 0 rows affected (0.02 sec)

MariaDB [csd2204s18]> insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 80369, '2017/07/02', 856, '629004.90', 'a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 77919, '2018/05/08', 301, '201930.94', 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 14774, '2017/05/24', 610, '67649.69', 'sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 52896, '2017/12/07', 505, '432650.42', 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 75452, '2018/03/29', 19, '371988.98', 'varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 901, '2017/06/04', 203, '770293.79', 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 19155, '2018/03/05', 492, '856608.76', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 11744, '2017/07/28', 284, '62620.98', 'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 80752, '2017/10/21', 445, '853300.72', 'in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 51201, '2018/03/19', 999, '323654.63', 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 79083, '2018/01/02', 296, '938591.89', 'consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 10269, '2017/09/03', 245, '78547.27', 'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 7271, '2017/07/28', 407, '318196.05', 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit a');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 88169, '2017/07/12', 605, '906509.51', 'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 69249, '2017/08/06', 897, '622241.61', 'viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 80916, '2017/06/22', 564, '358407.43', 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 13749, '2017/06/08', 915, '48047.14', 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 16912, '2018/01/17', 821, '958940.87', 'urna ut tellus nulla ut erat id mauris vulputate elementum nullam');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 61590, '2018/04/11', 555, '110660.38', 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 15297, '2017/11/04', 404, '935433.74', 'cursus id turpis integer aliquet massa id lobortis convallis tortor');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 23509, '2018/01/09', 422, '415776.99', 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 83546, '2017/10/22', 312, '536542.31', 'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 39475, '2017/09/04', 413, '835163.51', 'ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 74823, '2018/04/14', 744, '162939.57', 'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 35943, '2017/06/21', 601, '592198.39', 'augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 56020, '2017/06/16', 947, '702359.82', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 52894, '2017/06/12', 525, '384628.24', 'molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 1989, '2018/05/07', 159, '592349.94', 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 59199, '2018/01/03', 985, '353557.40', 'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 87799, '2017/11/05', 511, '982732.39', 'quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 55947, '2017/12/16', 204, '252253.20', 'nunc purus phasellus in felis donec semper sapien a libero');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 62190, '2017/11/20', 342, '79055.57', 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 22602, '2018/02/26', 320, '694886.48', 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 1992, '2017/09/12', 988, '821223.96', 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 53673, '2017/10/12', 223, '86935.17', 'convallis nunc proin at turpis a pede posuere nonummy integer non velit');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 76910, '2017/07/17', 547, '438839.40', 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 73164, '2018/05/20', 784, '202818.32', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 21667, '2018/05/09', 97, '940634.28', 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 69223, '2018/02/05', 550, '877140.08', 'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 90156, '2017/06/18', 595, '367213.18', 'turpis enim blandit mi in porttitor pede justo eu massa donec dapibus');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 46955, '2017/11/23', 968, '733017.20', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 35650, '2017/09/17', 575, '226604.45', 'lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 28229, '2018/04/25', 664, '440209.10', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 61299, '2017/09/30', 512, '669151.89', 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 28154, '2018/02/02', 699, '927965.82', 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 29645, '2018/02/23', 830, '976066.81', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 65650, '2017/06/12', 581, '463867.30', 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('current', 76379, '2018/02/05', 318, '718580.48', 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 72106, '2018/04/15', 307, '655829.40', 'potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum');insert into trans (ac_type, ac_no, tdate, counter, amount, descr) values ('saving', 19791, '2017/05/23', 131, '423458.44', 'mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus');
Query OK, 1 row affected, 2 warnings (0.06 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.08 sec)

Query OK, 1 row affected, 2 warnings (0.05 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.06 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.04 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.01 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.13 sec)

Query OK, 1 row affected, 2 warnings (0.05 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.02 sec)

Query OK, 1 row affected, 2 warnings (0.03 sec)

MariaDB [csd2204s18]> select * from trans;
+---------+-------+------------+---------+-----------+--------------------------------+
| ac_type | ac_no | tdate      | counter | amount    | descr                          |
+---------+-------+------------+---------+-----------+--------------------------------+
| cur     |  1989 | 2018-05-07 |     159 | 592349.94 | nulla eget eros elementum pell |
| cur     | 14774 | 2017-05-24 |     610 |  67649.69 | sit amet eros suspendisse accu |
| cur     | 16912 | 2018-01-17 |     821 | 958940.88 | urna ut tellus nulla ut erat i |
| cur     | 22602 | 2018-02-26 |     320 | 694886.50 | semper interdum mauris ullamco |
| cur     | 56020 | 2017-06-16 |     947 | 702359.81 | mattis pulvinar nulla pede ull |
| cur     | 61299 | 2017-09-30 |     512 | 669151.88 | dictumst aliquam augue quam so |
| cur     | 75452 | 2018-03-29 |      19 | 371988.97 | varius nulla facilisi cras non |
| cur     | 76379 | 2018-02-05 |     318 | 718580.50 | quisque ut erat curabitur grav |
| cur     | 76910 | 2017-07-17 |     547 | 438839.41 | id ornare imperdiet sapien urn |
| cur     | 79083 | 2018-01-02 |     296 | 938591.88 | consequat nulla nisl nunc nisl |
| cur     | 87799 | 2017-11-05 |     511 | 982732.38 | quam nec dui luctus rutrum nul |
| cur     | 88169 | 2017-07-12 |     605 | 906509.50 | nam ultrices libero non mattis |
| cur     | 90156 | 2017-06-18 |     595 | 367213.19 | turpis enim blandit mi in port |
| sav     |   901 | 2017-06-04 |     203 | 770293.81 | iaculis congue vivamus metus a |
| sav     |  1992 | 2017-09-12 |     988 | 821223.94 | sit amet consectetuer adipisci |
| sav     |  7271 | 2017-07-28 |     407 | 318196.06 | dapibus dolor vel est donec od |
| sav     | 10269 | 2017-09-03 |     245 |  78547.27 | ultricies eu nibh quisque id j |
| sav     | 11744 | 2017-07-28 |     284 |  62620.98 | vitae ipsum aliquam non mauris |
| sav     | 13749 | 2017-06-08 |     915 |  48047.14 | est lacinia nisi venenatis tri |
| sav     | 15297 | 2017-11-04 |     404 | 935433.75 | cursus id turpis integer aliqu |
| sav     | 19155 | 2018-03-05 |     492 | 856608.75 | convallis eget eleifend luctus |
| sav     | 19791 | 2017-05-23 |     131 | 423458.44 | mauris ullamcorper purus sit a |
| sav     | 21667 | 2018-05-09 |      97 | 940634.25 | rhoncus mauris enim leo rhoncu |
| sav     | 23509 | 2018-01-09 |     422 | 415777.00 | sapien arcu sed augue aliquam  |
| sav     | 28154 | 2018-02-02 |     699 | 927965.81 | quam sollicitudin vitae consec |
| sav     | 28229 | 2018-04-25 |     664 | 440209.09 | tempus vel pede morbi porttito |
| sav     | 29645 | 2018-02-23 |     830 | 976066.81 | condimentum neque sapien place |
| sav     | 35650 | 2017-09-17 |     575 | 226604.45 | lobortis est phasellus sit ame |
| sav     | 35943 | 2017-06-21 |     601 | 592198.38 | augue a suscipit nulla elit ac |
| sav     | 39475 | 2017-09-04 |     413 | 835163.50 | ultrices posuere cubilia curae |
| sav     | 46955 | 2017-11-23 |     968 | 733017.19 | odio donec vitae nisi nam ultr |
| sav     | 51201 | 2018-03-19 |     999 | 323654.62 | primis in faucibus orci luctus |
| sav     | 52894 | 2017-06-12 |     525 | 384628.25 | molestie hendrerit at vulputat |
| sav     | 52896 | 2017-12-07 |     505 | 432650.41 | blandit non interdum in ante v |
| sav     | 53673 | 2017-10-12 |     223 |  86935.17 | convallis nunc proin at turpis |
| sav     | 55947 | 2017-12-16 |     204 | 252253.20 | nunc purus phasellus in felis  |
| sav     | 59199 | 2018-01-03 |     985 | 353557.41 | ultrices posuere cubilia curae |
| sav     | 61590 | 2018-04-11 |     555 | 110660.38 | habitasse platea dictumst maec |
| sav     | 62190 | 2017-11-20 |     342 |  79055.57 | consectetuer eget rutrum at lo |
| sav     | 65650 | 2017-06-12 |     581 | 463867.31 | quam sollicitudin vitae consec |
| sav     | 69223 | 2018-02-05 |     550 | 877140.06 | a ipsum integer a nibh in quis |
| sav     | 69249 | 2017-08-06 |     897 | 622241.62 | viverra dapibus nulla suscipit |
| sav     | 72106 | 2018-04-15 |     307 | 655829.38 | potenti nullam porttitor lacus |
| sav     | 73164 | 2018-05-20 |     784 | 202818.31 | tempus sit amet sem fusce cons |
| sav     | 74823 | 2018-04-14 |     744 | 162939.56 | proin interdum mauris non ligu |
| sav     | 77919 | 2018-05-08 |     301 | 201930.94 | quisque ut erat curabitur grav |
| sav     | 80369 | 2017-07-02 |     856 | 629004.88 | a pede posuere nonummy integer |
| sav     | 80752 | 2017-10-21 |     445 | 853300.75 | in magna bibendum imperdiet nu |
| sav     | 80916 | 2017-06-22 |     564 | 358407.44 | dui vel sem sed sagittis nam c |
| sav     | 83546 | 2017-10-22 |     312 | 536542.31 | hac habitasse platea dictumst  |
+---------+-------+------------+---------+-----------+--------------------------------+
50 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc dept;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| dno   | int(3)      | NO   | PRI | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
| loc   | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into dept (dno, name, loc) values (53, 'Merry', 'Colombia');insert into dept (dno, name, loc) values (94, 'Craig', 'China');insert into dept (dno, name, loc) values (54, 'Staford', 'China');insert into dept (dno, name, loc) values (55, 'Brandice', 'Argentina');insert into dept (dno, name, loc) values (81, 'Ambrose', 'Dominican Republic');insert into dept (dno, name, loc) values (28, 'Joscelin', 'Poland');insert into dept (dno, name, loc) values (27, 'Curt', 'Israel');insert into dept (dno, name, loc) values (4, 'Valina', 'China');insert into dept (dno, name, loc) values (63, 'Ferrel', 'Syria');insert into dept (dno, name, loc) values (95, 'Carol-jean', 'New Zealand');insert into dept (dno, name, loc) values (51, 'Alida', 'Mexico');insert into dept (dno, name, loc) values (24, 'Hansiain', 'Russia');insert into dept (dno, name, loc) values (60, 'Eugine', 'Poland');insert into dept (dno, name, loc) values (39, 'Clemens', 'Vietnam');insert into dept (dno, name, loc) values (65, 'Nickolai', 'Sweden');insert into dept (dno, name, loc) values (35, 'Johannah', 'Argentina');insert into dept (dno, name, loc) values (94, 'Melisande', 'Bulgaria');insert into dept (dno, name, loc) values (4, 'Jemimah', 'Colombia');insert into dept (dno, name, loc) values (41, 'Gwenore', 'Indonesia');insert into dept (dno, name, loc) values (24, 'Clemente', 'Brazil');insert into dept (dno, name, loc) values (79, 'Aurelie', 'Japan');insert into dept (dno, name, loc) values (32, 'Shena', 'Yemen');insert into dept (dno, name, loc) values (49, 'Olivia', 'United States');insert into dept (dno, name, loc) values (98, 'Diane', 'Botswana');insert into dept (dno, name, loc) values (49, 'Marnie', 'Czech Republic');insert into dept (dno, name, loc) values (96, 'Gabbey', 'Indonesia');insert into dept (dno, name, loc) values (95, 'Tymon', 'Brazil');insert into dept (dno, name, loc) values (93, 'Maressa', 'Albania');insert into dept (dno, name, loc) values (24, 'Khalil', 'Burundi');insert into dept (dno, name, loc) values (40, 'Winny', 'Latvia');insert into dept (dno, name, loc) values (53, 'Romain', 'Ukraine');insert into dept (dno, name, loc) values (44, 'Nancie', 'Portugal');insert into dept (dno, name, loc) values (45, 'Cordula', 'China');insert into dept (dno, name, loc) values (77, 'Niki', 'Argentina');insert into dept (dno, name, loc) values (12, 'Gwendolyn', 'Ukraine');insert into dept (dno, name, loc) values (16, 'Ruthi', 'Indonesia');insert into dept (dno, name, loc) values (74, 'Legra', 'New Zealand');insert into dept (dno, name, loc) values (64, 'Yuma', 'China');insert into dept (dno, name, loc) values (85, 'Sigismund', 'Czech Republic');insert into dept (dno, name, loc) values (44, 'Elinor', 'Burkina Faso');insert into dept (dno, name, loc) values (62, 'Jorey', 'Portugal');insert into dept (dno, name, loc) values (6, 'Leonerd', 'Poland');insert into dept (dno, name, loc) values (14, 'Stephannie', 'Russia');insert into dept (dno, name, loc) values (5, 'Dannel', 'Russia');insert into dept (dno, name, loc) values (12, 'Hans', 'China');insert into dept (dno, name, loc) values (80, 'Aldric', 'China');insert into dept (dno, name, loc) values (37, 'Robinet', 'Afghanistan');insert into dept (dno, name, loc) values (85, 'Nils', 'Indonesia');insert into dept (dno, name, loc) values (84, 'Ramsay', 'France');insert into dept (dno, name, loc) values (23, 'Winny', 'United States');
Query OK, 1 row affected (0.07 sec)

Query OK, 1 row affected (0.04 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.06 sec)

Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.06 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

ERROR 1062 (23000): Duplicate entry '94' for key 'PRIMARY'
ERROR 1062 (23000): Duplicate entry '4' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '24' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '49' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

ERROR 1062 (23000): Duplicate entry '95' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

ERROR 1062 (23000): Duplicate entry '24' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '53' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

ERROR 1062 (23000): Duplicate entry '44' for key 'PRIMARY'
Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.06 sec)

ERROR 1062 (23000): Duplicate entry '12' for key 'PRIMARY'
Query OK, 1 row affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

ERROR 1062 (23000): Duplicate entry '85' for key 'PRIMARY'
Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> select * from dept;
+-----+------------+--------------------+
| dno | name       | loc                |
+-----+------------+--------------------+
|   4 | Valina     | China              |
|   5 | Dannel     | Russia             |
|   6 | Leonerd    | Poland             |
|  12 | Gwendolyn  | Ukraine            |
|  14 | Stephannie | Russia             |
|  16 | Ruthi      | Indonesia          |
|  23 | Winny      | United States      |
|  24 | Hansiain   | Russia             |
|  27 | Curt       | Israel             |
|  28 | Joscelin   | Poland             |
|  32 | Shena      | Yemen              |
|  35 | Johannah   | Argentina          |
|  37 | Robinet    | Afghanistan        |
|  39 | Clemens    | Vietnam            |
|  40 | Winny      | Latvia             |
|  41 | Gwenore    | Indonesia          |
|  44 | Nancie     | Portugal           |
|  45 | Cordula    | China              |
|  49 | Olivia     | United States      |
|  51 | Alida      | Mexico             |
|  53 | Merry      | Colombia           |
|  54 | Staford    | China              |
|  55 | Brandice   | Argentina          |
|  60 | Eugine     | Poland             |
|  62 | Jorey      | Portugal           |
|  63 | Ferrel     | Syria              |
|  64 | Yuma       | China              |
|  65 | Nickolai   | Sweden             |
|  74 | Legra      | New Zealand        |
|  77 | Niki       | Argentina          |
|  79 | Aurelie    | Japan              |
|  80 | Aldric     | China              |
|  81 | Ambrose    | Dominican Republic |
|  84 | Ramsay     | France             |
|  85 | Sigismund  | Czech Republic     |
|  93 | Maressa    | Albania            |
|  94 | Craig      | China              |
|  95 | Carol-jean | New Zealand        |
|  96 | Gabbey     | Indonesia          |
|  98 | Diane      | Botswana           |
+-----+------------+--------------------+
40 rows in set (0.00 sec)

MariaDB [csd2204s18]> exit;
