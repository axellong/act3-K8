Postgres y MySQL

CREATE TABLE Test (
idTest SERIAL NOT NULL PRIMARY KEY,
TestName varchar(200),
TestNumericInteger numeric(20, 0),
TestDecimal numeric(20, 3),
TestTimestamp date,
TestDate date,
TestFloat float,
TestInteger int,
TestComment varchar(500)
)

INSERT INTO Test
(TestName,TestNumericInteger,TestDecimal,TestTimestamp,TestDate,TestFloat,TestInteger,TestComment)
VALUES
('Test',1234567,123567.220,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,12345678.22,345678,'Prueba test')

SELECT * from Test


Mongo

db.createCollection("Test")
db.Test.insert({TestName:'Test',TestNumericInteger:1234567,TestDecimal:123567.220,TestTimestamp:Date(),TestDate:Date(),TestFloat:12345678.22,TestInteger:345678,TestComment:'Prueba test'})
db.Test.find();

Redis
HMSET Test:1 TestName Test TestNumericInteger 1234567 TestDecimal 1234567.220 TestTimestamp "2021.02.28" TestDate "2021.02.28" TestFloat 12345678.22 TestInteger 34567 TestComment pruebatest