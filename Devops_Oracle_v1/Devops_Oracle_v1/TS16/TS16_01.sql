CREATE TABLE TS16_01.COURSES_TBL (COURSE_NUMBER NUMBER(10), COURSE_NAME VARCHAR2(20));

CREATE OR REPLACE FUNCTION TS16_01.FINDCOURSE
( NAME_IN IN VARCHAR2 )
RETURN NUMBER
IS
CNUMBER NUMBER;

CURSOR C1 IS
SELECT CT.COURSE_NUMBER
FROM TS16_01.COURSES_TBL CT
WHERE CT.COURSE_NAME = NAME_IN;

BEGIN
	
OPEN C1;
FETCH C1 INTO CNUMBER;

IF C1%NOTFOUND THEN
CNUMBER := 9999;
END IF;

CLOSE C1;

RETURN CNUMBER;

EXCEPTION
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20001,'AN ERROR WAS ENCOUNTERED - '||SQLCODE||' -ERROR- '||SQLERRM);
END;
/