### SELECT r.id, s.id FROM deanery.repairs r FULL OUTER JOIN deanery.staff s ON r.responsible_staff_id = s.id;
| id | id |
| :--- | :--- |
| 1 | 2 |
| 2 | 7 |
| 3 | 2 |
| 4 | 7 |
| 5 | 2 |
| 6 | 7 |
| null | 10 |
| null | 5 |
| null | 8 |
| null | 6 |
| null | 4 |
| null | 1 |
| null | 3 |
| null | 9 |
