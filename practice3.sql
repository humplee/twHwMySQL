#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary

select companyName,avg(Salary) as avgs
from Company,Employee
where Company.id=Employee.companyId
group by company.id
order by avg(Salary) desc limit 1

