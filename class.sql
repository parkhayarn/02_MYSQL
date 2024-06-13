create database ogclass;

show databases;

grant all privileges on ogclass.* to 'ohgiraffers'@'%';

show grants for 'ohgiraffers'@'%';

use ogclass;

-- favorite_subject 테이블 생성
create table favorite_subject
(
    subject_no int primary key auto_increment,
    subject_name varchar(255) not null unique
);

-- class 테이블 생성
create table class
(
    student_no int primary key auto_increment,
    student_name varchar(255) not null,
    gender varchar(5) not null check(gender in ('남','여')),
    github_id varchar(255) not null unique,
    email varchar(255) not null unique,
    mbti varchar(10), -- null 허용
    subject_no int,
    foreign key (subject_no) references favorite_subject (subject_no)
);

describe class; -- 테이블 구성 확인
describe favorite_subject;

-- favorite_subject 데이터 삽입
insert into favorite_subject (subject_name)
values ('spring'),
       ('jdbc'),
       ('java'),
       ('mysql'),
       ('mybatis'),
       ('react');

-- favorite_subject 데이터 조회
select * from favorite_subject
order by subject_no;

-- class 테이블에 데이터 삽입
insert into class
(/*no 안넣어도됨*/ student_name, gender, github_id, email, mbti, subject_no)
values ('박태근', '남', 'ohgiraffers-bear', 'bear.ohgiraffers@gmail.com', null, 1),
       ('지동현', '남', 'bring2it2on', 'yjkl0516@gmail.com', null, 2),
       ('김강현', '남', 'kimkinghyeon', 'modan8199@gmail.com', null, 3),
       ('이득규', '남', 'mantiskyu', 'asdaron44@gmail.com', null, 4),
       ('홍주연', '여', 'juyeon99', 'juyeon0806@gmail.com', null, 3),
       ('양혜연', '여', 'yanghyeyeon', 'yhy4058@gmail.com', null, 1),
       ('이규섭', '남', 'lks9616', 'lks609591@gmail.com', null, 4),
       ('전유안', '여', 'euuuuuuan', 'euan.may24@gmail.com', null, 5),
       ('박성은', '여', 'seongeun223', 'jklun080921@gmail.com', null, 4),
       ('위성민', '남', 'wdh970616', 'wdh970616@naver.com', null, 6),
       ('박하얀', '여', 'parkhayarn', 's0224y92@gmail.com', null, 4),
       ('박호찬', '남', 'qwes5674', 'qwes5674@gmail.com', null, 4),
       ('이의정', '남', 'himisterlee', 'lejje100418@gmail.com', null, 4),
       ('권은혜', '여', 'dmsgpk237', 'a01027947353@gmail.com', null, 4),
       ('권보현', '여', 'kwonbohyun', 'kwon18923@gmail.com', null, 4),
       ('배하은', '여', 'heun0420', 'usialeta@gmail.com', null, 4),
       ('강연진', '여', 'kangyeonjin', 'yeonjin917.n.n@gmail.com', null, 1),
       ('강진영', '여', 'weed97', 'weed9935@gmail.com', null, 4);

select * from class
order by student_no;