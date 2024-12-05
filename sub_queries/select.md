### SELECT h.id, (SELECT ht.name FROM deanery.hardware_types ht WHERE ht.id = h.type_id) FROM deanery.hardwares h;
| id | name |
| :--- | :--- |
| 1 | Laptop |
| 2 | Desktop |
| 3 | Projector |
| 4 | Printer |
| 5 | Scanner |
| 6 | Laptop |
| 7 | Desktop |
| 8 | Projector |
