-- Give me the first and last names of all students who take comp 219.
select s.fname, s.lname
from unidb_students s, unidb_attend a
where a.dept = 'comp'
and a.num = 219
and a.id = s.id;

-- Give me the name of the student mentor for comp 219.
select s.fname, s.lname
from unidb_students s, unidb_courses c
where c.dept = 'comp'
and c.num = 219
and s.id = c.rep_id;

-- Give me the names of all students taught by Barney Rubble
select distinct s.fname, s.lname
from unidb_students s, unidb_lecturers l, unidb_teach t, unidb_attend a
where l.fname = 'Barney' and l.lname = 'Rubble'
and l.staff_no = t.staff_no
and t.dept = a.dept
and t.num = a.num
and s.id = a.id;

-- Give me the first and last names of all students and all lecturers
select fname, lname
from unidb_students
union
select fname, lname
from unidb_lecturers;

-- Give me the name of each student, along with the number of courses they take. Order by last name of students.
select s.fname, s.lname, count(*) as 'Num courses taken'
from unidb_students s, unidb_attend a
where s.id = a.id
group by s.fname, s.lname
order by s.lname asc;