### SELECT * FROM deanery.hardwares h WHERE h.state_id = (SELECT s.id FROM deanery.states s WHERE s.name = 'In Repair');
| id | type\_id | date\_of\_last\_service | state\_id | audience\_id | inventory\_number |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 6 | 1 | 2024-08-25 11:15:00.000000 | 4 | 6 | A6006 |
