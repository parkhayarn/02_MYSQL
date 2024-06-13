SELECT
    tb_student.STUDENT_NO 학번,
    tb_student.STUDENT_NAME 이름,
    DATE(tb_student.ENTRANCE_DATE) 입학년도
FROM
    tb_student
WHERE
    DEPARTMENT_NO = 002
ORDER BY
    ENTRANCE_DATE;

SELECT
    tb_professor.PROFESSOR_NAME,
    tb_professor.PROFESSOR_SSN
FROM
    tb_professor
WHERE
    CHAR_LENGTH(PROFESSOR_NAME)<>3;

SELECT
    tb_professor.PROFESSOR_NAME 교수이름,
    PROFESSOR_SSN 나이

FROM
    tb_professor
ORDER BY PROFESSOR_SSN DESC;


