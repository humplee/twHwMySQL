# 1.创建数据库employee_db

# 2.在数据库employee_db中创建table：`Employee`

# 3.将`employee-data.csv`文件中的数据导入数据表Employee中

# 4.在数据库employee_db中创建table：`Company`

# 5.将`company-data.csv`文件中的数据导入Company数据表中

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息

# ps:本练习中只需要将6的结果复制到`result.txt`文件中

#create database employee_db;

#use employee_db;

#create table Employee(
#id int primary key,
#eName char(40),
#age int,
#gender char(10),
#companyId int,
#salary int 
#);
#LOAD DATA LOCAL INFILE 'C:/Users/kl/Desktop/MySQL-Quiz-2019-3-14-7-49-4-960-master/employee-data.csv' INTO TABLE Employee FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (id, eName, age, gender, companyId, salary);
#create table Company(
#    id int PRIMARY KEY,
#    companyName char(100),
#    employeesNumber int
#);

#LOAD DATA LOCAL INFILE 'C:/Users/kl/Desktop/MySQL-Quiz-2019-3-14-7-49-4-960-master/company-data.csv' INTO TABLE Company FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (id, companyName, employeesNumber);

SELECT * FROM Employee WHERE eName LIKE '%n%' AND salary > 6000;
