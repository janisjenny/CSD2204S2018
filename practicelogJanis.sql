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
    -> 