INSERT INTO "deanery"."positions"
VALUES (1, 'lecturer'),
       (2, 'engineer'),
       (3, 'dean'),
       (4, 'rector'),
       (5, 'department head');

INSERT INTO "deanery"."staff" (id, phone, email)
VALUES (1, '+375447832190', 'alexander@uni.by'),
       (2, '+375293145678', 'maria@uni.by'),
       (3, '+375333254981', 'sergey@uni.by'),
       (4, '+375447654320', 'dmitry@uni.by'),
       (5, '+375292345678', 'anna@uni.by'),
       (6, '+375333987654', 'nikolay@uni.by'),
       (7, '+375447123456', 'olga@uni.by'),
       (8, '+375291234567', 'igor@uni.by'),
       (9, '+375334567891', 'svetlana@uni.by'),
       (10, '+375445678901', 'tatiana@uni.by');

INSERT INTO "deanery"."staff_info" (staff_id, first_name, last_name, middle_name)
VALUES (1, 'Alexander', 'Ivanov', 'Petrovich'),
       (2, 'Maria', 'Sidorova', 'Ivanovna'),
       (3, 'Sergey', 'Petrov', 'Nikolaevich'),
       (4, 'Dmitry', 'Orlov', 'Alexandrovich'),
       (5, 'Anna', 'Smirnova', 'Pavlovna'),
       (6, 'Nikolay', 'Fedorov', 'Vladimirovich'),
       (7, 'Olga', 'Kuznetsova', 'Igorevna'),
       (8, 'Igor', 'Popov', 'Sergeevich'),
       (9, 'Svetlana', 'Vasileva', 'Anatolievna'),
       (10, 'Tatiana', 'Mikhailova', 'Dmitrievna');

INSERT INTO "deanery"."staff_positions" (position_id, staff_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (1, 6),
       (2, 7),
       (3, 8),
       (4, 9),
       (5, 10);

INSERT INTO "deanery"."audiences" (id, number, name, responsible_staff_id)
VALUES (1, 101, 'Lecture Hall 1', 1),
       (2, 201, 'Computer Lab', 3),
       (3, 301, 'Deans Office', 4),
       (4, 401, 'Conference Room', 5),
       (5, 102, 'Seminar Room 1', 6),
       (6, 202, 'Seminar Room 2', 8),
       (7, 302, 'Seminar Room 3', 9),
       (8, 402, 'Seminar Room 4', 10);

INSERT INTO "deanery"."hardware_types" (id, name)
VALUES (1, 'Laptop'),
       (2, 'Desktop'),
       (3, 'Projector'),
       (4, 'Printer'),
       (5, 'Scanner');

INSERT INTO "deanery"."states" (id, name)
VALUES (1, 'Operational'),
       (2, 'Under Maintenance'),
       (3, 'Out of Service'),
       (4, 'In Repair');

INSERT INTO "deanery"."hardwares" (id, type_id, date_of_last_service, state_id, audience_id, inventory_number)
VALUES (1, 1, '2024-11-01 10:00:00', 1, 1, 'A1001'),
       (2, 2, '2024-10-15 14:30:00', 2, 2, 'A2002'),
       (3, 3, '2024-09-20 09:00:00', 3, 3, 'A3003'),
       (4, 4, '2024-11-05 12:45:00', 1, 4, 'A4004'),
       (5, 5, '2024-10-10 16:00:00', 1, 5, 'A5005'),
       (6, 1, '2024-08-25 11:15:00', 4, 6, 'A6006'),
       (7, 2, '2024-07-30 08:30:00', 2, 7, 'A7007'),
       (8, 3, '2024-06-22 15:00:00', 1, 8, 'A8008');

INSERT INTO "deanery"."repairs" (id, start_date, end_date, responsible_staff_id, hardware_id, description)
VALUES
    (1, '2024-11-01 09:00:00', '2024-11-01 11:00:00', 2, 1, 'Laptop repair: screen replacement'),
    (2, '2024-11-10 14:00:00', '2024-11-10 17:00:00', 7, 2, 'Desktop repair: hard drive upgrade'),
    (3, '2024-11-12 08:30:00', '2024-11-12 12:30:00', 2, 4, 'Printer repair: ink cartridge replacement'),
    (4, '2024-11-15 10:00:00', '2024-11-15 13:00:00', 7, 6, 'Scanner repair: sensor cleaning'),
    (5, '2024-11-20 13:00:00', '2024-11-20 15:00:00', 2, 3, 'Projector repair: lamp replacement'),
    (6, '2024-11-22 16:00:00', '2024-11-22 18:00:00', 7, 5, 'Desktop repair: memory upgrade');
