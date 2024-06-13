select * from TB_DEPARTMENT; --  학과테이블
select * from TB_STUDENT; -- 학생테이블
select * from TB_PROFESSOR; -- 교수테이블
select * from TB_CLASS; -- 수업테이블
select * from TB_CLASS_PROFESSOR; -- 수업교수테이블
select * from TB_GRADE; -- 학점테이블


select
    DEPARTMENT_NAME 학과명,
    CATEGORY 계열
from
    tb_department;

select
    concat(DEPARTMENT_NAME,'의 정원은 ',CAPACITY, ' 명 입니다.')
from
    tb_department;

select
    tb_student.STUDENT_NAME
from
    tb_student inner join tb_department using(department_no)
where
    DEPARTMENT_NAME = '국어국문학과' and ABSENCE_YN = 'Y'
    and  substring(STUDENT_SSN,8,1) in (2,4);

select
    tb_student.STUDENT_NAME
from
    tb_student
where
    STUDENT_NO in('A513079', 'A513090', 'A513091', 'A513110', 'A513119');

select
    tb_department.DEPARTMENT_NAME,
    tb_department.CATEGORY
from
    tb_department
where CAPACITY between 20 and 30;

select
    PROFESSOR_NAME
from
    tb_PROFESSOR
where DEPARTMENT_NO is null;

select
    tb_student.STUDENT_NAME
from
    tb_student
where DEPARTMENT_NO is null;

select
    CLASS_NO
from
    tb_class
WHERE
    PREATTENDING_CLASS_NO IS NOT NULL;

SELECT DISTINCT
    CATEGORY
FROM
    tb_department
ORDER BY CATEGORY;

SELECT
    STUDENT_NO,
    STUDENT_NAME,
    STUDENT_SSN
FROM
    tb_student
WHERE
   ABSENCE_YN = 'N'
  AND SUBSTRING(STUDENT_ADDRESS,1,2) IN ('전주')
  AND SUBSTRING(ENTRANCE_DATE,1,4) IN (2019)

ORDER BY STUDENT_NAME;







