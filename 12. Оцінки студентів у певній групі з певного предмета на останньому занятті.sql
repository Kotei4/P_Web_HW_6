SELECT s.name AS student_name, g.grade AS grade, g.date_received AS date_received
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects sub ON g.subject_id = sub.id
WHERE s.group_id = (SELECT id FROM groups WHERE name = 'goal')
AND sub.name = 'include'
AND g.date_received = (SELECT MAX(date_received) FROM grades WHERE subject_id = sub.id AND student_id = s.id);
