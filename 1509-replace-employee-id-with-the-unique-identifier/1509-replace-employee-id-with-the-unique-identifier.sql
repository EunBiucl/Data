select
EmployeeUNI.unique_id,
employees.name
from employees
left join EmployeeUNI
using (id);