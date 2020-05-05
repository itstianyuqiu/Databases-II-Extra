-- I want to get all countries our students come from.
-- I only want each country to appear in the results once.
select distinct country
from unidb_students;

-- I want to get the surnames and first names of all students,
-- in ascending alphabetical order according to surname.
select lname, fname
from unidb_students
order by lname asc;

-- I want to get the last names and first names of all students.
-- I want teh columns in the result table to be "Last Name" and "First Name",
-- rather than "lname" and "fname".
select lname as 'Last Name', fname as 'First Name'
from unidb_students;

-- I want to get the surnames and first names of all students,
-- in ascending alphabetical order according to surname.
-- I'm referring to the students table as "s" in this case.
select s.lname, s.fname
from unidb_students s
order by s.lname asc;

-- Can combine renaming columns and tables.
select s.lname as 'Last Name', s.fname as 'First Name'
from unidb_students s
order by s.lname asc;

-- I want to get all AU and NZ students
select *
from unidb_students
where country in ('AU', 'NZ');

-- I want to get all students with ids between 1500 - 2000 (v1)
select *
from unidb_students
where id >= 1500 and id <= 2000;

-- I want to get all students with ids between 1500 - 2000 (v2)
select *
from unidb_students
where id between 1500 and 2000;

-- I want to get the total number of students
select count(id) from unidb_students;

-- I want to get the total number of students from each country.
select country, count(*) from unidb_students
group by country;