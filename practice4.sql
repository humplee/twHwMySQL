# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal
select Employee.id, Employee.eName,Employee.gender, Employee.companyId, Employee.salary, companyName, CompanyAvgSalary.avgs from
(select companyName,companyId,avg(Salary) as avgs
from Company,Employee
where Company.id=Employee.companyId
group by company.id) as CompanyAvgSalary,Employee
where CompanyAvgSalary.companyId=Employee.companyId and Employee.salary>=CompanyAvgSalary.avgs