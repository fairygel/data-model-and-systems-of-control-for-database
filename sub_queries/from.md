### SELECT sub.a_id, a_name FROM (SELECT a.id AS a_id, a.name AS a_name, h.id AS h_id FROM deanery.audiences a LEFT JOIN deanery.hardwares h on a.id = h.audience_id) sub WHERE h_id IS NOT NULL;
| a\_id | a\_name |
| :--- | :--- |
| 1 | Lecture Hall 1 |
| 2 | Computer Lab |
| 3 | Deans Office |
| 4 | Conference Room |
| 5 | Seminar Room 1 |
| 6 | Seminar Room 2 |
| 7 | Seminar Room 3 |
| 8 | Seminar Room 4 |
