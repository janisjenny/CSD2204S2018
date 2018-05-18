MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > (select salary from employees where last_name like 'BELL');
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 |
| Neena       | Kochhar    | 17000.00 |
| Lex         | De Haan    | 17000.00 |
| Alexander   | Hunold     |  9000.00 |
| Bruce       | Ernst      |  6000.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Diana       | Lorentz    |  4200.00 |
| Nancy       | Greenberg  | 12000.00 |
| Daniel      | Faviet     |  9000.00 |
| John        | Chen       |  8200.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Luis        | Popp       |  6900.00 |
| Den         | Raphaely   | 11000.00 |
| Matthew     | Weiss      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| Payam       | Kaufling   |  7900.00 |
| Shanta      | Vollman    |  6500.00 |
| Kevin       | Mourgos    |  5800.00 |
| John        | Russell    | 14000.00 |
| Karen       | Partners   | 13500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Gerald      | Cambrault  | 11000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Peter       | Tucker     | 10000.00 |
| David       | Bernstein  |  9500.00 |
| Peter       | Hall       |  9000.00 |
| Christopher | Olsen      |  8000.00 |
| Nanette     | Cambrault  |  7500.00 |
| Oliver      | Tuvault    |  7000.00 |
| Janette     | King       | 10000.00 |
| Patrick     | Sully      |  9500.00 |
| Allan       | McEwen     |  9000.00 |
| Lindsey     | Smith      |  8000.00 |
| Louise      | Doran      |  7500.00 |
| Sarath      | Sewall     |  7000.00 |
| Clara       | Vishney    | 10500.00 |
| Danielle    | Greene     |  9500.00 |
| Mattea      | Marvins    |  7200.00 |
| David       | Lee        |  6800.00 |
| Sundar      | Ande       |  6400.00 |
| Amit        | Banda      |  6200.00 |
| Lisa        | Ozer       | 11500.00 |
| Harrison    | Bloom      | 10000.00 |
| Tayler      | Fox        |  9600.00 |
| William     | Smith      |  7400.00 |
| Elizabeth   | Bates      |  7300.00 |
| Sundita     | Kumar      |  6100.00 |
| Ellen       | Abel       | 11000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jack        | Livingston |  8400.00 |
| Kimberely   | Grant      |  7000.00 |
| Charles     | Johnson    |  6200.00 |
| Nandita     | Sarchand   |  4200.00 |
| Alexis      | Bull       |  4100.00 |
| Jennifer    | Whalen     |  4400.00 |
| Michael     | Hartstein  | 13000.00 |
| Pat         | Fay        |  6000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
64 rows in set (0.01 sec)

MariaDB [csd2204s18]> SHOW TABLES;
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
+----------------------+
20 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * from jobs;
+------------+---------------------------------+------------+------------+
| JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
+------------+---------------------------------+------------+------------+
| AD_PRES    | President                       |      20000 |      40000 |
| AD_VP      | Administration Vice President   |      15000 |      30000 |
| AD_ASST    | Administration Assistant        |       3000 |       6000 |
| FI_MGR     | Finance Manager                 |       8200 |      16000 |
| FI_ACCOUNT | Accountant                      |       4200 |       9000 |
| AC_MGR     | Accounting Manager              |       8200 |      16000 |
| AC_ACCOUNT | Public Accountant               |       4200 |       9000 |
| SA_MAN     | Sales Manager                   |      10000 |      20000 |
| SA_REP     | Sales Representative            |       6000 |      12000 |
| PU_MAN     | Purchasing Manager              |       8000 |      15000 |
| PU_CLERK   | Purchasing Clerk                |       2500 |       5500 |
| ST_MAN     | Stock Manager                   |       5500 |       8500 |
| ST_CLERK   | Stock Clerk                     |       2000 |       5000 |
| SH_CLERK   | Shipping Clerk                  |       2500 |       5500 |
| IT_PROG    | Programmer                      |       4000 |      10000 |
| MK_MAN     | Marketing Manager               |       9000 |      15000 |
| MK_REP     | Marketing Representative        |       4000 |       9000 |
| HR_REP     | Human Resources Representative  |       4000 |       9000 |
| PR_REP     | Public Relations Representative |       4500 |      10500 |
+------------+---------------------------------+------------+------------+
19 rows in set, 3 warnings (0.03 sec)

MariaDB [csd2204s18]> select MIN (min_salary)+1000 from jobs;
ERROR 1630 (42000): FUNCTION csd2204s18.MIN does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
MariaDB [csd2204s18]> select MIN(min_salary)+1000 from jobs;
+----------------------+
| MIN(min_salary)+1000 |
+----------------------+
|                 3000 |
+----------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary =  (select MIN(min_salary)+1000 from jobs);
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| Anthony    | Cabrio    | 3000.00 |
| Kevin      | Feeney    | 3000.00 |
+------------+-----------+---------+
2 rows in set (0.02 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > ALL (select avg(salary) from employees group by department_id);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> select salary, job_id from employees where job_id = 'SH_CLERK';
+---------+----------+
| salary  | job_id   |
+---------+----------+
| 3200.00 | SH_CLERK |
| 3100.00 | SH_CLERK |
| 2500.00 | SH_CLERK |
| 2800.00 | SH_CLERK |
| 4200.00 | SH_CLERK |
| 4100.00 | SH_CLERK |
| 3400.00 | SH_CLERK |
| 3000.00 | SH_CLERK |
| 3800.00 | SH_CLERK |
| 3600.00 | SH_CLERK |
| 2900.00 | SH_CLERK |
| 2500.00 | SH_CLERK |
| 4000.00 | SH_CLERK |
| 3900.00 | SH_CLERK |
| 3200.00 | SH_CLERK |
| 2800.00 | SH_CLERK |
| 3100.00 | SH_CLERK |
| 3000.00 | SH_CLERK |
| 2600.00 | SH_CLERK |
| 2600.00 | SH_CLERK |
+---------+----------+
20 rows in set (0.00 sec)

MariaDB [csd2204s18]> select MAX(salary) from employees where job_id = 'SH_CLERK'
    -> select MAX(salary) from employees where job_id = 'SH_CLERK';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select MAX(salary) from employees where job_id = 'SH_CLERK'' at line 2
MariaDB [csd2204s18]> select MAX(salary) from employees where job_id = 'SH_CLERK';
+-------------+
| MAX(salary) |
+-------------+
|     4200.00 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary FROM EMPLOYEES where salary > (select sum(salary) from employees where job_id = 'SH_CLERK') ORDER BY SALARY;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM EMPLOYEES where salary > (select sum(salary) from employees where job_id = ' at line 1
MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary  > (select sum(salary) from employees where job_id = 'SH_CLERK') ORDER BY SALARY;
Empty set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary  > any(select sum(salary) from employees where job_id = 'SH_CLERK') ORDER BY SALARY;
Empty set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary  < any(select sum(salary) from employees where job_id = 'SH_CLERK') ORDER BY SALARY;
+-------------+-------------+----------+
| first_name  | last_name   | salary   |
+-------------+-------------+----------+
| TJ          | Olson       |  2100.00 |
| Hazel       | Philtanker  |  2200.00 |
| Steven      | Markle      |  2200.00 |
| Ki          | Gee         |  2400.00 |
| James       | Landry      |  2400.00 |
| Karen       | Colmenares  |  2500.00 |
| Randall     | Perkins     |  2500.00 |
| Joshua      | Patel       |  2500.00 |
| Martha      | Sullivan    |  2500.00 |
| James       | Marlow      |  2500.00 |
| Peter       | Vargas      |  2500.00 |
| Randall     | Matos       |  2600.00 |
| Douglas     | Grant       |  2600.00 |
| Guy         | Himuro      |  2600.00 |
| Donald      | OConnell    |  2600.00 |
| Irene       | Mikkilineni |  2700.00 |
| John        | Seo         |  2700.00 |
| Sigal       | Tobias      |  2800.00 |
| Vance       | Jones       |  2800.00 |
| Mozhe       | Atkinson    |  2800.00 |
| Girard      | Geoni       |  2800.00 |
| Michael     | Rogers      |  2900.00 |
| Shelli      | Baida       |  2900.00 |
| Timothy     | Gates       |  2900.00 |
| Kevin       | Feeney      |  3000.00 |
| Anthony     | Cabrio      |  3000.00 |
| Jean        | Fleaur      |  3100.00 |
| Curtis      | Davies      |  3100.00 |
| Alana       | Walsh       |  3100.00 |
| Alexander   | Khoo        |  3100.00 |
| Julia       | Nayer       |  3200.00 |
| Stephen     | Stiles      |  3200.00 |
| Samuel      | McCain      |  3200.00 |
| Winston     | Taylor      |  3200.00 |
| Laura       | Bissot      |  3300.00 |
| Jason       | Mallin      |  3300.00 |
| Julia       | Dellinger   |  3400.00 |
| Trenna      | Rajs        |  3500.00 |
| Renske      | Ladwig      |  3600.00 |
| Jennifer    | Dilly       |  3600.00 |
| Kelly       | Chung       |  3800.00 |
| Britney     | Everett     |  3900.00 |
| Sarah       | Bell        |  4000.00 |
| Alexis      | Bull        |  4100.00 |
| Diana       | Lorentz     |  4200.00 |
| Nandita     | Sarchand    |  4200.00 |
| Jennifer    | Whalen      |  4400.00 |
| David       | Austin      |  4800.00 |
| Valli       | Pataballa   |  4800.00 |
| Kevin       | Mourgos     |  5800.00 |
| Pat         | Fay         |  6000.00 |
| Bruce       | Ernst       |  6000.00 |
| Sundita     | Kumar       |  6100.00 |
| Charles     | Johnson     |  6200.00 |
| Amit        | Banda       |  6200.00 |
| Sundar      | Ande        |  6400.00 |
| Susan       | Mavris      |  6500.00 |
| Shanta      | Vollman     |  6500.00 |
| David       | Lee         |  6800.00 |
| Luis        | Popp        |  6900.00 |
| Oliver      | Tuvault     |  7000.00 |
| Kimberely   | Grant       |  7000.00 |
| Sarath      | Sewall      |  7000.00 |
| Mattea      | Marvins     |  7200.00 |
| Elizabeth   | Bates       |  7300.00 |
| William     | Smith       |  7400.00 |
| Louise      | Doran       |  7500.00 |
| Nanette     | Cambrault   |  7500.00 |
| Ismael      | Sciarra     |  7700.00 |
| Jose Manuel | Urman       |  7800.00 |
| Payam       | Kaufling    |  7900.00 |
| Christopher | Olsen       |  8000.00 |
| Matthew     | Weiss       |  8000.00 |
| Lindsey     | Smith       |  8000.00 |
| John        | Chen        |  8200.00 |
| Adam        | Fripp       |  8200.00 |
| William     | Gietz       |  8300.00 |
| Jack        | Livingston  |  8400.00 |
| Jonathon    | Taylor      |  8600.00 |
| Alyssa      | Hutton      |  8800.00 |
| Peter       | Hall        |  9000.00 |
| Allan       | McEwen      |  9000.00 |
| Daniel      | Faviet      |  9000.00 |
| Alexander   | Hunold      |  9000.00 |
| Patrick     | Sully       |  9500.00 |
| Danielle    | Greene      |  9500.00 |
| David       | Bernstein   |  9500.00 |
| Tayler      | Fox         |  9600.00 |
| Janette     | King        | 10000.00 |
| Hermann     | Baer        | 10000.00 |
| Harrison    | Bloom       | 10000.00 |
| Peter       | Tucker      | 10000.00 |
| Eleni       | Zlotkey     | 10500.00 |
| Clara       | Vishney     | 10500.00 |
| Den         | Raphaely    | 11000.00 |
| Ellen       | Abel        | 11000.00 |
| Gerald      | Cambrault   | 11000.00 |
| Lisa        | Ozer        | 11500.00 |
| Shelley     | Higgins     | 12000.00 |
| Nancy       | Greenberg   | 12000.00 |
| Alberto     | Errazuriz   | 12000.00 |
| Michael     | Hartstein   | 13000.00 |
| Karen       | Partners    | 13500.00 |
| John        | Russell     | 14000.00 |
| Neena       | Kochhar     | 17000.00 |
| Lex         | De Haan     | 17000.00 |
| Steven      | King        | 24000.00 |
+-------------+-------------+----------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary  > all(select sum(salary) from employees where job_id = 'SH_CLERK') ORDER BY SALARY;
Empty set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary  > all(select salary from employees where job_id = 'SH_CLERK') ORDER BY SALARY;
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Jennifer    | Whalen     |  4400.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Kevin       | Mourgos    |  5800.00 |
| Bruce       | Ernst      |  6000.00 |
| Pat         | Fay        |  6000.00 |
| Sundita     | Kumar      |  6100.00 |
| Amit        | Banda      |  6200.00 |
| Charles     | Johnson    |  6200.00 |
| Sundar      | Ande       |  6400.00 |
| Susan       | Mavris     |  6500.00 |
| Shanta      | Vollman    |  6500.00 |
| David       | Lee        |  6800.00 |
| Luis        | Popp       |  6900.00 |
| Sarath      | Sewall     |  7000.00 |
| Oliver      | Tuvault    |  7000.00 |
| Kimberely   | Grant      |  7000.00 |
| Mattea      | Marvins    |  7200.00 |
| Elizabeth   | Bates      |  7300.00 |
| William     | Smith      |  7400.00 |
| Nanette     | Cambrault  |  7500.00 |
| Louise      | Doran      |  7500.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Payam       | Kaufling   |  7900.00 |
| Lindsey     | Smith      |  8000.00 |
| Matthew     | Weiss      |  8000.00 |
| Christopher | Olsen      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| John        | Chen       |  8200.00 |
| William     | Gietz      |  8300.00 |
| Jack        | Livingston |  8400.00 |
| Jonathon    | Taylor     |  8600.00 |
| Alyssa      | Hutton     |  8800.00 |
| Allan       | McEwen     |  9000.00 |
| Peter       | Hall       |  9000.00 |
| Alexander   | Hunold     |  9000.00 |
| Daniel      | Faviet     |  9000.00 |
| Patrick     | Sully      |  9500.00 |
| Danielle    | Greene     |  9500.00 |
| David       | Bernstein  |  9500.00 |
| Tayler      | Fox        |  9600.00 |
| Hermann     | Baer       | 10000.00 |
| Harrison    | Bloom      | 10000.00 |
| Janette     | King       | 10000.00 |
| Peter       | Tucker     | 10000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Clara       | Vishney    | 10500.00 |
| Gerald      | Cambrault  | 11000.00 |
| Ellen       | Abel       | 11000.00 |
| Den         | Raphaely   | 11000.00 |
| Lisa        | Ozer       | 11500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Shelley     | Higgins    | 12000.00 |
| Nancy       | Greenberg  | 12000.00 |
| Michael     | Hartstein  | 13000.00 |
| Karen       | Partners   | 13500.00 |
| John        | Russell    | 14000.00 |
| Lex         | De Haan    | 17000.00 |
| Neena       | Kochhar    | 17000.00 |
| Steven      | King       | 24000.00 |
+-------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where employee_id in(select distinct(manager_id) from employees where manager_id!=0;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [csd2204s18]> select b.first_name,b.last_name
    -> from employee b where not exists
    -> (select 'X' from employees a
    -> where a.manager_id = b.employee_id);
ERROR 1146 (42S02): Table 'csd2204s18.employee' doesn't exist
MariaDB [csd2204s18]> select b.first_name,b.last_name
    -> from employees b where not exists
    -> (select 'X' from employees a
    -> where a.manager_id = b.employee_id);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| William     | Gietz       |
+-------------+-------------+
89 rows in set (0.01 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where employee_id in(select distinct(manager_id) from employees where manager_id!=0);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
| Neena      | Kochhar   | 17000.00 |
| Lex        | De Haan   | 17000.00 |
| Alexander  | Hunold    |  9000.00 |
| Nancy      | Greenberg | 12000.00 |
| Den        | Raphaely  | 11000.00 |
| Matthew    | Weiss     |  8000.00 |
| Adam       | Fripp     |  8200.00 |
| Payam      | Kaufling  |  7900.00 |
| Shanta     | Vollman   |  6500.00 |
| Kevin      | Mourgos   |  5800.00 |
| John       | Russell   | 14000.00 |
| Karen      | Partners  | 13500.00 |
| Alberto    | Errazuriz | 12000.00 |
| Gerald     | Cambrault | 11000.00 |
| Eleni      | Zlotkey   | 10500.00 |
| Michael    | Hartstein | 13000.00 |
| Shelley    | Higgins   | 12000.00 |
+------------+-----------+----------+
18 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where employee_id not in(select distinct(manager_id) from employees where manager_id!=0);
+-------------+-------------+----------+
| first_name  | last_name   | salary   |
+-------------+-------------+----------+
| Bruce       | Ernst       |  6000.00 |
| David       | Austin      |  4800.00 |
| Valli       | Pataballa   |  4800.00 |
| Diana       | Lorentz     |  4200.00 |
| Daniel      | Faviet      |  9000.00 |
| John        | Chen        |  8200.00 |
| Ismael      | Sciarra     |  7700.00 |
| Jose Manuel | Urman       |  7800.00 |
| Luis        | Popp        |  6900.00 |
| Alexander   | Khoo        |  3100.00 |
| Shelli      | Baida       |  2900.00 |
| Sigal       | Tobias      |  2800.00 |
| Guy         | Himuro      |  2600.00 |
| Karen       | Colmenares  |  2500.00 |
| Julia       | Nayer       |  3200.00 |
| Irene       | Mikkilineni |  2700.00 |
| James       | Landry      |  2400.00 |
| Steven      | Markle      |  2200.00 |
| Laura       | Bissot      |  3300.00 |
| Mozhe       | Atkinson    |  2800.00 |
| James       | Marlow      |  2500.00 |
| TJ          | Olson       |  2100.00 |
| Jason       | Mallin      |  3300.00 |
| Michael     | Rogers      |  2900.00 |
| Ki          | Gee         |  2400.00 |
| Hazel       | Philtanker  |  2200.00 |
| Renske      | Ladwig      |  3600.00 |
| Stephen     | Stiles      |  3200.00 |
| John        | Seo         |  2700.00 |
| Joshua      | Patel       |  2500.00 |
| Trenna      | Rajs        |  3500.00 |
| Curtis      | Davies      |  3100.00 |
| Randall     | Matos       |  2600.00 |
| Peter       | Vargas      |  2500.00 |
| Peter       | Tucker      | 10000.00 |
| David       | Bernstein   |  9500.00 |
| Peter       | Hall        |  9000.00 |
| Christopher | Olsen       |  8000.00 |
| Nanette     | Cambrault   |  7500.00 |
| Oliver      | Tuvault     |  7000.00 |
| Janette     | King        | 10000.00 |
| Patrick     | Sully       |  9500.00 |
| Allan       | McEwen      |  9000.00 |
| Lindsey     | Smith       |  8000.00 |
| Louise      | Doran       |  7500.00 |
| Sarath      | Sewall      |  7000.00 |
| Clara       | Vishney     | 10500.00 |
| Danielle    | Greene      |  9500.00 |
| Mattea      | Marvins     |  7200.00 |
| David       | Lee         |  6800.00 |
| Sundar      | Ande        |  6400.00 |
| Amit        | Banda       |  6200.00 |
| Lisa        | Ozer        | 11500.00 |
| Harrison    | Bloom       | 10000.00 |
| Tayler      | Fox         |  9600.00 |
| William     | Smith       |  7400.00 |
| Elizabeth   | Bates       |  7300.00 |
| Sundita     | Kumar       |  6100.00 |
| Ellen       | Abel        | 11000.00 |
| Alyssa      | Hutton      |  8800.00 |
| Jonathon    | Taylor      |  8600.00 |
| Jack        | Livingston  |  8400.00 |
| Kimberely   | Grant       |  7000.00 |
| Charles     | Johnson     |  6200.00 |
| Winston     | Taylor      |  3200.00 |
| Jean        | Fleaur      |  3100.00 |
| Martha      | Sullivan    |  2500.00 |
| Girard      | Geoni       |  2800.00 |
| Nandita     | Sarchand    |  4200.00 |
| Alexis      | Bull        |  4100.00 |
| Julia       | Dellinger   |  3400.00 |
| Anthony     | Cabrio      |  3000.00 |
| Kelly       | Chung       |  3800.00 |
| Jennifer    | Dilly       |  3600.00 |
| Timothy     | Gates       |  2900.00 |
| Randall     | Perkins     |  2500.00 |
| Sarah       | Bell        |  4000.00 |
| Britney     | Everett     |  3900.00 |
| Samuel      | McCain      |  3200.00 |
| Vance       | Jones       |  2800.00 |
| Alana       | Walsh       |  3100.00 |
| Kevin       | Feeney      |  3000.00 |
| Donald      | OConnell    |  2600.00 |
| Douglas     | Grant       |  2600.00 |
| Jennifer    | Whalen      |  4400.00 |
| Pat         | Fay         |  6000.00 |
| Susan       | Mavris      |  6500.00 |
| Hermann     | Baer        | 10000.00 |
| William     | Gietz       |  8300.00 |
+-------------+-------------+----------+
89 rows in set (0.01 sec)

MariaDB [csd2204s18]> desc departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  | MUL | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.05 sec)

MariaDB [csd2204s18]> select first_name, last_name (select department_name from departments d where d.department_id = e.dea=partment_id) "department name" from employees e; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments d where d.department_id = e.dea=partment' at line 1
MariaDB [csd2204s18]> select first_name, last_name (select department_name from departments d where d.department_id = e.department_id) "department name" from employees e; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments d where d.department_id = e.department_i' at line 1
MariaDB [csd2204s18]> select first_name, last_name, (select department_name from departments d where d.department_id = e.department_id) "department name" from employees e; 
+-------------+-------------+------------------+
| first_name  | last_name   | department name  |
+-------------+-------------+------------------+
| Steven      | King        | Executive        |
| Neena       | Kochhar     | Executive        |
| Lex         | De Haan     | Executive        |
| Alexander   | Hunold      | IT               |
| Bruce       | Ernst       | IT               |
| David       | Austin      | IT               |
| Valli       | Pataballa   | IT               |
| Diana       | Lorentz     | IT               |
| Nancy       | Greenberg   | Finance          |
| Daniel      | Faviet      | Finance          |
| John        | Chen        | Finance          |
| Ismael      | Sciarra     | Finance          |
| Jose Manuel | Urman       | Finance          |
| Luis        | Popp        | Finance          |
| Den         | Raphaely    | Purchasing       |
| Alexander   | Khoo        | Purchasing       |
| Shelli      | Baida       | Purchasing       |
| Sigal       | Tobias      | Purchasing       |
| Guy         | Himuro      | Purchasing       |
| Karen       | Colmenares  | Purchasing       |
| Matthew     | Weiss       | Shipping         |
| Adam        | Fripp       | Shipping         |
| Payam       | Kaufling    | Shipping         |
| Shanta      | Vollman     | Shipping         |
| Kevin       | Mourgos     | Shipping         |
| Julia       | Nayer       | Shipping         |
| Irene       | Mikkilineni | Shipping         |
| James       | Landry      | Shipping         |
| Steven      | Markle      | Shipping         |
| Laura       | Bissot      | Shipping         |
| Mozhe       | Atkinson    | Shipping         |
| James       | Marlow      | Shipping         |
| TJ          | Olson       | Shipping         |
| Jason       | Mallin      | Shipping         |
| Michael     | Rogers      | Shipping         |
| Ki          | Gee         | Shipping         |
| Hazel       | Philtanker  | Shipping         |
| Renske      | Ladwig      | Shipping         |
| Stephen     | Stiles      | Shipping         |
| John        | Seo         | Shipping         |
| Joshua      | Patel       | Shipping         |
| Trenna      | Rajs        | Shipping         |
| Curtis      | Davies      | Shipping         |
| Randall     | Matos       | Shipping         |
| Peter       | Vargas      | Shipping         |
| John        | Russell     | Sales            |
| Karen       | Partners    | Sales            |
| Alberto     | Errazuriz   | Sales            |
| Gerald      | Cambrault   | Sales            |
| Eleni       | Zlotkey     | Sales            |
| Peter       | Tucker      | Sales            |
| David       | Bernstein   | Sales            |
| Peter       | Hall        | Sales            |
| Christopher | Olsen       | Sales            |
| Nanette     | Cambrault   | Sales            |
| Oliver      | Tuvault     | Sales            |
| Janette     | King        | Sales            |
| Patrick     | Sully       | Sales            |
| Allan       | McEwen      | Sales            |
| Lindsey     | Smith       | Sales            |
| Louise      | Doran       | Sales            |
| Sarath      | Sewall      | Sales            |
| Clara       | Vishney     | Sales            |
| Danielle    | Greene      | Sales            |
| Mattea      | Marvins     | Sales            |
| David       | Lee         | Sales            |
| Sundar      | Ande        | Sales            |
| Amit        | Banda       | Sales            |
| Lisa        | Ozer        | Sales            |
| Harrison    | Bloom       | Sales            |
| Tayler      | Fox         | Sales            |
| William     | Smith       | Sales            |
| Elizabeth   | Bates       | Sales            |
| Sundita     | Kumar       | Sales            |
| Ellen       | Abel        | Sales            |
| Alyssa      | Hutton      | Sales            |
| Jonathon    | Taylor      | Sales            |
| Jack        | Livingston  | Sales            |
| Kimberely   | Grant       | NULL             |
| Charles     | Johnson     | Sales            |
| Winston     | Taylor      | Shipping         |
| Jean        | Fleaur      | Shipping         |
| Martha      | Sullivan    | Shipping         |
| Girard      | Geoni       | Shipping         |
| Nandita     | Sarchand    | Shipping         |
| Alexis      | Bull        | Shipping         |
| Julia       | Dellinger   | Shipping         |
| Anthony     | Cabrio      | Shipping         |
| Kelly       | Chung       | Shipping         |
| Jennifer    | Dilly       | Shipping         |
| Timothy     | Gates       | Shipping         |
| Randall     | Perkins     | Shipping         |
| Sarah       | Bell        | Shipping         |
| Britney     | Everett     | Shipping         |
| Samuel      | McCain      | Shipping         |
| Vance       | Jones       | Shipping         |
| Alana       | Walsh       | Shipping         |
| Kevin       | Feeney      | Shipping         |
| Donald      | OConnell    | Shipping         |
| Douglas     | Grant       | Shipping         |
| Jennifer    | Whalen      | Administration   |
| Michael     | Hartstein   | Marketing        |
| Pat         | Fay         | Marketing        |
| Susan       | Mavris      | Human Resources  |
| Hermann     | Baer        | Public Relations |
| Shelley     | Higgins     | Accounting       |
| William     | Gietz       | Accounting       |
+-------------+-------------+------------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from departments;
+---------------+----------------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |
|            80 | Sales                |        145 |        2500 |
|            90 | Executive            |        100 |        1700 |
|           100 | Finance              |        108 |        1700 |
|           110 | Accounting           |        205 |        1700 |
|           120 | Treasury             |          0 |        1700 |
|           130 | Corporate Tax        |          0 |        1700 |
|           140 | Control And Credit   |          0 |        1700 |
|           150 | Shareholder Services |          0 |        1700 |
|           160 | Benefits             |          0 |        1700 |
|           170 | Manufacturing        |          0 |        1700 |
|           180 | Construction         |          0 |        1700 |
|           190 | Contracting          |          0 |        1700 |
|           200 | Operations           |          0 |        1700 |
|           210 | IT Support           |          0 |        1700 |
|           220 | NOC                  |          0 |        1700 |
|           230 | IT Helpdesk          |          0 |        1700 |
|           240 | Government Sales     |          0 |        1700 |
|           250 | Retail Sales         |          0 |        1700 |
|           260 | Recruiting           |          0 |        1700 |
|           270 | Payroll              |          0 |        1700 |
+---------------+----------------------+------------+-------------+
27 rows in set (0.00 sec)

MariaDB [csd2204s18]> select avg(salary) from employees AS a where salary > (select avg(salary) from employees where department_id = A.department_id);
+-------------+
| avg(salary) |
+-------------+
| 9031.578947 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select avg(salary) from employees group by department_id;
+--------------+
| avg(salary)  |
+--------------+
|  7000.000000 |
|  4400.000000 |
|  9500.000000 |
|  4150.000000 |
|  6500.000000 |
|  3475.555556 |
|  5760.000000 |
| 10000.000000 |
|  8955.882353 |
| 19333.333333 |
|  8600.000000 |
| 10150.000000 |
+--------------+
12 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees e where salary >(select avg(salary 
    -> select first_name, last_name, salary from employees e where salary >(select avg(salary) 
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select first_name, last_name, salary from employees e where salary >(select avg(' at line 2
MariaDB [csd2204s18]> select first_name, last_name, salary from employees e where salary >(select avg(salary) from employees group by department_id having department_id = e.department_id); 
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
| Alexander  | Hunold    |  9000.00 |
| Bruce      | Ernst     |  6000.00 |
| Nancy      | Greenberg | 12000.00 |
| Daniel     | Faviet    |  9000.00 |
| Den        | Raphaely  | 11000.00 |
| Matthew    | Weiss     |  8000.00 |
| Adam       | Fripp     |  8200.00 |
| Payam      | Kaufling  |  7900.00 |
| Shanta     | Vollman   |  6500.00 |
| Kevin      | Mourgos   |  5800.00 |
| Renske     | Ladwig    |  3600.00 |
| Trenna     | Rajs      |  3500.00 |
| John       | Russell   | 14000.00 |
| Karen      | Partners  | 13500.00 |
| Alberto    | Errazuriz | 12000.00 |
| Gerald     | Cambrault | 11000.00 |
| Eleni      | Zlotkey   | 10500.00 |
| Peter      | Tucker    | 10000.00 |
| David      | Bernstein |  9500.00 |
| Peter      | Hall      |  9000.00 |
| Janette    | King      | 10000.00 |
| Patrick    | Sully     |  9500.00 |
| Allan      | McEwen    |  9000.00 |
| Clara      | Vishney   | 10500.00 |
| Danielle   | Greene    |  9500.00 |
| Lisa       | Ozer      | 11500.00 |
| Harrison   | Bloom     | 10000.00 |
| Tayler     | Fox       |  9600.00 |
| Ellen      | Abel      | 11000.00 |
| Nandita    | Sarchand  |  4200.00 |
| Alexis     | Bull      |  4100.00 |
| Kelly      | Chung     |  3800.00 |
| Jennifer   | Dilly     |  3600.00 |
| Sarah      | Bell      |  4000.00 |
| Britney    | Everett   |  3900.00 |
| Michael    | Hartstein | 13000.00 |
| Shelley    | Higgins   | 12000.00 |
+------------+-----------+----------+
38 rows in set (0.02 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees e1
    -> where 5 = (select count(distinct salary)
    -> from employees e2
    -> where e2.salary >=e1.salary);
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees e1
    -> where 3 = (select count(distinct salary)
    -> from employees e2
    -> where e2.salary >=e1.salary);
+----------+
| salary   |
+----------+
| 14000.00 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees e1
    -> where 3 = (select count(distinct salary)
    -> from employees e2
    -> where e2.salary <=e1.salary);
+---------+
| salary  |
+---------+
| 2400.00 |
+---------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> select * from (select * from employees order by employee_id desc limit 10)e1 order by employee_id asc;
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
|         197 | Kevin      | Feeney    | KFEENEY  | 650.507.9822 | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald     | OConnell  | DOCONNEL | 650.507.9833 | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas    | Grant     | DGRANT   | 650.507.9844 | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer   | Whalen    | JWHALEN  | 515.123.4444 | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael    | Hartstein | MHARTSTE | 515.123.5555 | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat        | Fay       | PFAY     | 603.123.6666 | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777 | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann    | Baer      | HBAER    | 515.123.8888 | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080 | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William    | Gietz     | WGIETZ   | 515.123.8181 | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select department_id,department_name from departments where department_id not IN(select distinct(department_id) from employees);
+---------------+----------------------+
| department_id | department_name      |
+---------------+----------------------+
|           120 | Treasury             |
|           130 | Corporate Tax        |
|           140 | Control And Credit   |
|           150 | Shareholder Services |
|           160 | Benefits             |
|           170 | Manufacturing        |
|           180 | Construction         |
|           190 | Contracting          |
|           200 | Operations           |
|           210 | IT Support           |
|           220 | NOC                  |
|           230 | IT Helpdesk          |
|           240 | Government Sales     |
|           250 | Retail Sales         |
|           260 | Recruiting           |
|           270 | Payroll              |
+---------------+----------------------+
16 rows in set (0.00 sec)

MariaDB [csd2204s18]> select salary from employees order by salary asc;
+----------+
| salary   |
+----------+
|  2100.00 |
|  2200.00 |
|  2200.00 |
|  2400.00 |
|  2400.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2700.00 |
|  2700.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2900.00 |
|  2900.00 |
|  2900.00 |
|  3000.00 |
|  3000.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3300.00 |
|  3300.00 |
|  3400.00 |
|  3500.00 |
|  3600.00 |
|  3600.00 |
|  3800.00 |
|  3900.00 |
|  4000.00 |
|  4100.00 |
|  4200.00 |
|  4200.00 |
|  4400.00 |
|  4800.00 |
|  4800.00 |
|  5800.00 |
|  6000.00 |
|  6000.00 |
|  6100.00 |
|  6200.00 |
|  6200.00 |
|  6400.00 |
|  6500.00 |
|  6500.00 |
|  6800.00 |
|  6900.00 |
|  7000.00 |
|  7000.00 |
|  7000.00 |
|  7200.00 |
|  7300.00 |
|  7400.00 |
|  7500.00 |
|  7500.00 |
|  7700.00 |
|  7800.00 |
|  7900.00 |
|  8000.00 |
|  8000.00 |
|  8000.00 |
|  8200.00 |
|  8200.00 |
|  8300.00 |
|  8400.00 |
|  8600.00 |
|  8800.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  9500.00 |
|  9500.00 |
|  9500.00 |
|  9600.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
| 10500.00 |
| 10500.00 |
| 11000.00 |
| 11000.00 |
| 11000.00 |
| 11500.00 |
| 12000.00 |
| 12000.00 |
| 12000.00 |
| 13000.00 |
| 13500.00 |
| 14000.00 |
| 17000.00 |
| 17000.00 |
| 24000.00 |
+----------+
107 rows in set (0.00 sec)

