select*from courses.coursesinfo;

with sciencecurses as(
select course_name 
from courses.coursesinfo
where course_name like '%Science'
)
select*from sciencecurses;

-- am learning on the process of cte's which is common table extensions
--synthax with cte name as(
-- select __ rows that are to be displayed
-- from schema.table/ table
-- where condition to be met
--)
-- then we display the data using select*from (*)all  then the cte

with sciencestutors as(
select course_tutor, course_name 
from courses.coursesinfo
where course_name like '%Science'
)
select*from sciencestutors;