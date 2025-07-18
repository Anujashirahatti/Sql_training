
CREATE TABLE flights (
    FLIGHT_ID INT PRIMARY KEY,
    AIRPLANE_ID INT,
    DEPARTURE_DATE DATE,
    DEPARTURE_TIME VARCHAR(10),
    ARRIVAL_DATE DATE,
    ARRIVAL_TIME VARCHAR(10),
    DESTINATION VARCHAR(50),
    FLIGHT_FROM VARCHAR(50)
);

CREATE TABLE cabincrew (
    CABINCREW_ID INT PRIMARY KEY,
    FLIGHT_ID INT,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    CONTACT VARCHAR(20),
    FOREIGN KEY (FLIGHT_ID) REFERENCES flights(FLIGHT_ID)
);

INSERT INTO flights (FLIGHT_ID, AIRPLANE_ID, DEPARTURE_DATE, DEPARTURE_TIME, ARRIVAL_DATE, ARRIVAL_TIME, DESTINATION, FLIGHT_FROM) VALUES
(101, 1, '2024-02-10', '08:00', '2024-02-10', '10:00', 'Paris', 'London'),
(102, 2, '2024-02-11', '09:00', '2024-02-11', '11:00', 'Berlin', 'Rome'),
(123, 3, '2024-02-11', '10:00', '2024-02-11', '12:00', 'Paris', 'Madrid'),
(131, 4, '2024-02-12', '07:00', '2024-02-12', '09:00', 'Delhi', 'Dubai');


INSERT INTO cabincrew (CABINCREW_ID, FLIGHT_ID, FIRST_NAME, LAST_NAME, CONTACT) VALUES
(1, 101, 'Alice', 'Smith', '1234567890'),
(2, 102, 'Alex', 'Johnson', '2345678901'),
(3, 123, 'Bob', 'Brown', '3456789012'),
(4, 131, 'Anita', 'Williams', '4567890123'),
(5, 102, 'Charlie', 'Davis', '5678901234');

select CABINCREW_ID,FIRST_NAME,LAST_NAME,CONTACT,FLIGHT_ID
from cabincrew
where FIRST_NAME like 'A%' and FLIGHT_ID like '%1';

select c.CABINCREW_ID,c.FIRST_NAME,c.LAST_NAME,c.CONTACT,c.FLIGHT_ID
from cabincrew c
join flights f on c.FLIGHT_ID=f.FLIGHT_ID
where c.FIRST_NAME like 'A%'
and c.FLIGHT_ID %10 =1;

CREATE TABLE student (
    student_id DECIMAL(10, 0) PRIMARY KEY,
    last_name VARCHAR(40),
    first_name VARCHAR(40),
    email VARCHAR(100),
    phone DECIMAL(20, 0)
);
CREATE TABLE registration (
    reg_id DECIMAL(10, 0) PRIMARY KEY,
    student_id DECIMAL(10, 0),
    reg_date DATE,
    section_id DECIMAL(10, 0),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

INSERT INTO student VALUES
(1, 'Smith', 'John', 'john.smith@email.com', 1234567890),
(2, 'Doe', 'Jane', 'jane.doe@email.com', 9876543210),
(3, 'Brown', 'Charlie', 'charlie.brown@email.com', 1122334455);

INSERT INTO registration VALUES
(101, 1, '2012-03-15', 10),
(102, 2, '2011-07-20', 11),
(103, 3, '2012-11-30', 12);
