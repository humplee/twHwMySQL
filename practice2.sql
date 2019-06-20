# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name

select companyName,eName from(
select companyName,eName,max(salary)
from Company,Employee
where Company.id=Employee.companyId
group by Company.id)as a
