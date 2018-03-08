-- THE INNER JOIN

-- Inner join using the inner join command
SELECT user.name AS StudentName, course.name AS CourseName
FROM user
INNER JOIN course ON user.courseID = course.ID;

-- Inner join using the from command to declare two table, and the where command to join them.
SELECT user.name as StudentName, course.name as CourseName 
FROM user, course
WHERE user.courseID = course.ID;

-- LEFT JOIN
SELECT user.name AS StudentName, course.name AS CourseName
FROM user
LEFT JOIN course ON user.courseID = course.ID;

-- RIGHT JOIN
SELECT user.name AS StudentName, course.name AS CourseName
FROM user
RIGHT JOIN course ON user.courseID = course.ID;

-- OUTER JOIN- no longer supported in MySql, is done by using union to combine a left and right join
SELECT user.name AS StudentName, course.name AS CourseName
FROM user
LEFT JOIN course ON user.courseID = course.ID

UNION

SELECT user.name AS StudentName, course.name AS CourseName
FROM user
RIGHT JOIN course ON user.courseID = course.ID;

