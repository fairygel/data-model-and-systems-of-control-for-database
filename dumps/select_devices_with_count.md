### SELECT count(h.type_id), ht.name FROM deanery.hardwares h <br /> INNER JOIN deanery.hardware_types ht on h.type_id = ht.id <br /> GROUP BY h.type_id, ht.name HAVING count(h.type_id) > 1;
| count | name |
| :--- | :--- |
| 2 | Desktop |
| 2 | Projector |
| 2 | Laptop |
