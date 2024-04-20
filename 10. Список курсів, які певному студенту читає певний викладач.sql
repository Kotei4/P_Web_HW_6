SELECT s.name AS student_name, sub.name AS subject_name, t.name AS teacher_name
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects sub ON g.subject_id = sub.id
JOIN teachers t ON sub.teacher_id = t.id
WHERE s.name = 'Aaron Hebert' AND t.name = 'Cheryl Russell';
