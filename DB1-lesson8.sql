-- Задание 1
select distinct courses.name,
       sum(g.students_count) over (partition by courses.id)
from courses left join groups g
        on courses.id = g.id_course;

-- Задание 2
select distinct
                teachers.id,
                teachers.surname,
                teachers.name,
                avg(r.rate) over(partition by teachers.id)
from teachers left join rate r on teachers.id = r.id_teacher;

