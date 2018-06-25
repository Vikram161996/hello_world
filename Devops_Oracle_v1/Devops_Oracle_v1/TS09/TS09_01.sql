CREATE TABLE TS09_01.STUDENTS1
(
STUDENT_ID1 NUMBER(5) NOT NULL,
STUDENT_NAME VARCHAR2(20),
GROUP_ID FLOAT(5),
GROUP_ID1 BINARY_FLOAT,
GROUP_ID2 BINARY_DOUBLE
);

CREATE TABLE TS09_01.STUDENTS2
(
STUDENT_ID2 NUMBER(5) NOT NULL,
STUDENT_NAME VARCHAR2(20),
GROUP_ID FLOAT(5),
GROUP_ID1 BINARY_FLOAT,
GROUP_ID2 BINARY_DOUBLE
);

CREATE OR REPLACE PROCEDURE TS09_01.DELETE_TAB_STU3 
IS
BEGIN

DELETE FROM TS09_01.STUDENTS3 WHERE STUDENT_ID3 = (SELECT S1.STUDENT_ID1 FROM TS09_01.STUDENTS1 S1, TS09_01.STUDENTS2 S2 
WHERE S1.STUDENT_ID1 = S2.STUDENT_ID2);

END;
/

