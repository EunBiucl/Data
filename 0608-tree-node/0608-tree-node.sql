# Write your MySQL query statement below
select distinct Parent.id,
( Case
when Parent.p_id is null then 'Root'
when parent.p_id is not null and Child.p_id is not null then 'Inner'
when Parent.p_id is not null and Child.p_id is null then 'Leaf'
end)As type
from Tree As Parent
Left join Tree As Child
on (Parent.id =child.p_id);