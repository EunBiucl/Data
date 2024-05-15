# Write your MySQL query statement below
select
 project.project_id,
 round (avg (Employee.experience_years), 2) as average_years
 from Project
 Inner Join Employee
 using (employee_id)
 group by 1;