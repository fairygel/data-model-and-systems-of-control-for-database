### SELECT h.id, (SELECT ht.name FROM deanery.hardware_types ht WHERE ht.id = h.type_id) FROM deanery.hardwares h;
| id | type\_id | date\_of\_last\_service | state\_id | audience\_id | inventory\_number |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 6 | 1 | 2024-08-25 11:15:00.000000 | 4 | 6 | A6006 |
