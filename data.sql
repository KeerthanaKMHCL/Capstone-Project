mysql> show tables;
+----------------------+
| Tables_in_rentaplace |
+----------------------+
| emaildet             |
| hibernate_sequence   |
| owner                |
| property             |
| reserved             |
| user                 |
| userreview           |
+----------------------+
7 rows in set (0.00 sec)

mysql> desc owner;
+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| owner_id       | bigint       | NO   | PRI | NULL    | auto_increment |
| owner_email    | varchar(255) | YES  |     | NULL    |                |
| owner_name     | varchar(255) | YES  |     | NULL    |                |
| owner_password | varchar(255) | YES  |     | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> desc user;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| user_id       | bigint       | NO   | PRI | NULL    | auto_increment |
| user_name     | varchar(255) | YES  |     | NULL    |                |
| user_password | varchar(255) | YES  |     | NULL    |                |
| user_email    | varchar(255) | YES  |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> desc property;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| property_id   | bigint       | NO   | PRI | NULL    | auto_increment |
| address       | varchar(255) | YES  |     | NULL    |                |
| amenities     | varchar(255) | YES  |     | NULL    |                |
| availability  | varchar(255) | YES  |     | NULL    |                |
| city          | varchar(255) | YES  |     | NULL    |                |
| owner_id      | bigint       | NO   |     | NULL    |                |
| property_type | varchar(255) | YES  |     | NULL    |                |
| rating        | double       | NO   |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> desc reserved;
+-------------+--------+------+-----+---------+----------------+
| Field       | Type   | Null | Key | Default | Extra          |
+-------------+--------+------+-----+---------+----------------+
| property_id | bigint | NO   | PRI | NULL    | auto_increment |
| user_id     | bigint | NO   | PRI | NULL    |                |
| check_in    | date   | YES  |     | NULL    |                |
| check_out   | date   | YES  |     | NULL    |                |
+-------------+--------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> desc emaildet;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| message   | varchar(255) | YES  |     | NULL    |       |
| subject   | varchar(255) | YES  |     | NULL    |       |
| recipient | varchar(255) | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc userreview;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| uid      | bigint       | YES  | MUL | NULL    |       |
| uname    | varchar(20)  | YES  |     | NULL    |       |
| comments | varchar(256) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from user;
+---------+-----------+---------------+---------------------+
| user_id | user_name | user_password | user_email          |
+---------+-----------+---------------+---------------------+
|       1 | Rajath    | raj123        | raj@gmail.com       |
|       2 | Keerthana | keerthana     | keerthana@gmail.com |
+---------+-----------+---------------+---------------------+
2 rows in set (0.00 sec)