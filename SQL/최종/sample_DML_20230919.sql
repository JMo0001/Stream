-- create sequence
CREATE SEQUENCE project_sequence
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE task_sequence
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE schedule_sequence
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE chat_sequence
START WITH 1
INCREMENT BY 1;




-- TABLE COMPANY
INSERT INTO COMPANY (CCODE, CNAME, CPHONE, CADDRESS, CPASSWORD)
VALUES ('AA', 'KH정보교육원', '01099998888', '서울시 강남구', '123123');

INSERT INTO COMPANY (CCODE, CNAME, CPHONE, CADDRESS, CPASSWORD)
VALUES ('C001', 'KH정보교육원', '02-234-5678', '서울시 강남구', '123123');

INSERT INTO COMPANY (CCODE, CNAME, CPHONE, CADDRESS, CPASSWORD)
VALUES ('C002', 'TESTCOMPANY', '031-456-7891', '경기도 남양주시', '100200');

-- TABLE DEPT
INSERT INTO DEPT (DEPTNO, CCODE, DEPTNAME)
VALUES ('A', 'AA', 'lclass');

INSERT INTO DEPT (DEPTNO, CCODE, DEPTNAME)
VALUES ('D001', 'C001', '행정부');

INSERT INTO DEPT (DEPTNO, CCODE, DEPTNAME)
VALUES ('D002', 'C001', '교육부');

INSERT INTO DEPT (DEPTNO, CCODE, DEPTNAME)
VALUES ('D001', 'C002', '인사부');

INSERT INTO DEPT (DEPTNO, CCODE, DEPTNAME)
VALUES ('D002', 'C002', '영업부');

--TABLE USERS
INSERT INTO USERS (USERID, DEPTNO, CCODE, PASSWORD, ENABLED, AUTHORITY, MNAME, MPHONE, MRANK)
VALUES ('kh0001@kh.com', 'A', 'AA', 'khkhkhkh', 0, 'RC', '황대경', '01012341234', 'AAA');

INSERT INTO USERS (USERID, DEPTNO, CCODE, PASSWORD, ENABLED, AUTHORITY, MNAME, MPHONE, MRANK)
VALUES ('kh0002@kh.com', 'A', 'AA', 'khkhkhkh', 0, 'RC', '이지영', '01012341234', 'AAA');

INSERT INTO USERS ( USERID, DEPTNO, CCODE, PASSWORD, ENABLED, AUTHORITY, MNAME, MPHONE, MRANK)
VALUES ('sample@kh.co.kr', 'D001', 'C001', '12345', '1', 'RC', '김사장', '010-2345-6789', NULL);

INSERT INTO USERS ( USERID, DEPTNO, CCODE, PASSWORD, ENABLED, AUTHORITY, MNAME, MPHONE, MRANK)
VALUES ('sple@kh.co.kr', 'D001', 'C001', '12345', '1', 'RM', '박사원', '010-2344-5667', NULL);

INSERT INTO USERS ( USERID, DEPTNO, CCODE, PASSWORD, ENABLED, AUTHORITY, MNAME, MPHONE, MRANK)
VALUES ('spam@kh.co.kr', 'D002', 'C001', '11111', '1', 'RM', '이사원', '010-3456-8874', NULL);

INSERT INTO USERS ( USERID, DEPTNO, CCODE, PASSWORD, ENABLED, AUTHORITY, MNAME, MPHONE, MRANK)
VALUES ('mplsam@kh.co.kr', 'D002', 'C001', '11111', '1', 'RM', '정사원', '010-4566-8877', NULL);

INSERT INTO USERS ( USERID, DEPTNO, CCODE, PASSWORD, ENABLED, AUTHORITY, MNAME, MPHONE, MRANK)
VALUES ('fffll@ctest.co.kr', 'D001', 'C002', '00000', '1', 'RC', '나사장', '010-8552-5665', NULL);

INSERT INTO USERS ( USERID, DEPTNO, CCODE, PASSWORD, ENABLED, AUTHORITY, MNAME, MPHONE, MRANK)
VALUES ('react@ctest.co.kr', 'D001', 'C002', '00000', '1', 'RM', '너사원', '010-6543-2100', NULL);

INSERT INTO USERS ( USERID, DEPTNO, CCODE, PASSWORD, ENABLED, AUTHORITY, MNAME, MPHONE, MRANK)
VALUES ('spring@ctest.co.kr', 'D002', 'C002', '00011', '1', 'RM', '너도사원', '010-9852-1200', NULL);

INSERT INTO USERS ( USERID, DEPTNO, CCODE, PASSWORD, ENABLED, AUTHORITY, MNAME, MPHONE, MRANK)
VALUES ('sql@ctest.co.kr', 'D002', 'C002', '00011', '1', 'RM', '김사원', '010-2589-9852', NULL);


--TABLE PROJECT
INSERT INTO PROJECT (PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'kh0001@kh.com', '황스트림', '프로젝트 해야합니다.', 'ACCESS', TO_DATE('2023-09-06', 'YYYY-MM-DD'), TO_DATE('2023-09-10', 'YYYY-MM-DD'), TO_DATE('2023-10-30', 'YYYY-MM-DD'), '완료');

INSERT INTO PROJECT (PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'kh0001@kh.com', '이건2번째야', '프로젝트 해야합니다.', 'ACCESS', TO_DATE('2023-09-06', 'YYYY-MM-DD'), TO_DATE('2023-09-10', 'YYYY-MM-DD'), TO_DATE('2023-10-30', 'YYYY-MM-DD'), '진행 중');

INSERT INTO PROJECT (PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'kh0001@kh.com', '3번째입니다', '프로젝트 해야합니다.', 'ACCESS', TO_DATE('2023-09-06', 'YYYY-MM-DD'), TO_DATE('2023-09-10', 'YYYY-MM-DD'), TO_DATE('2023-10-30', 'YYYY-MM-DD'), '진행 중');

INSERT INTO PROJECT (PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'kh0002@kh.com', '지영님번째입니다', '프로젝트 해야합니다.', 'ACCESS', TO_DATE('2023-09-06', 'YYYY-MM-DD'), TO_DATE('2023-09-10', 'YYYY-MM-DD'), TO_DATE('2023-10-30', 'YYYY-MM-DD'), '진행 중');

INSERT INTO PROJECT (PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'kh0002@kh.com', '지영님입니다', '프로젝트 해야합니다.', 'ACCESS', TO_DATE('2023-09-06', 'YYYY-MM-DD'), TO_DATE('2023-09-10', 'YYYY-MM-DD'), TO_DATE('2023-10-30', 'YYYY-MM-DD'), '진행 중');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'sample@kh.co.kr', '테스트케이스1', '테스트용입니다.', 'ACCESS', TO_DATE('2023-09-12', 'YYYY-MM-DD'), TO_DATE('2023-09-12', 'YYYY-MM-DD'), TO_DATE('2023-09-22', 'YYYY-MM-DD'), '진행중');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'sample@kh.co.kr', '테스트케이스2', '테스트용입니다2.', 'ACCESS', TO_DATE('2023-09-12', 'YYYY-MM-DD'), TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2023-09-22', 'YYYY-MM-DD'), '진행중');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'sple@kh.co.kr', 'USER가 늘었어요', '테스트용입니다.', 'ACCESS', TO_DATE('2023-09-14', 'YYYY-MM-DD'), TO_DATE('2023-09-14', 'YYYY-MM-DD'), TO_DATE('2023-09-22', 'YYYY-MM-DD'), '진행중');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'sple@kh.co.kr', '프로젝트명1', '테스트중입니다.', 'ACCESS', TO_DATE('2023-09-14', 'YYYY-MM-DD'), TO_DATE('2023-09-14', 'YYYY-MM-DD'), TO_DATE('2023-09-27', 'YYYY-MM-DD'), '진행중');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'spam@kh.co.kr', 'USER가 늘었어요', '테스트용입니다.', 'ACCESS', TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2023-09-14', 'YYYY-MM-DD'), TO_DATE('2023-09-29', 'YYYY-MM-DD'), '진행중');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'spam@kh.co.kr', '프로젝트명2', '테스트중입니다.', 'ACCESS', TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2023-09-14', 'YYYY-MM-DD'), TO_DATE('2023-09-29', 'YYYY-MM-DD'), '미정');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'mplsam@kh.co.kr', '이름', '테스트용입니다.', 'ACCESS', TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2023-09-14', 'YYYY-MM-DD'), TO_DATE('2023-09-29', 'YYYY-MM-DD'), '미정');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'mplsam@kh.co.kr', '이름름', '테스트용입니다.', 'ACCESS', TO_DATE('2023-09-11', 'YYYY-MM-DD'), TO_DATE('2023-09-12', 'YYYY-MM-DD'), TO_DATE('2023-09-29', 'YYYY-MM-DD'), '완료');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'fffll@ctest.co.kr', '이이름름', '테스트용입니다.', 'ACCESS', TO_DATE('2023-09-12', 'YYYY-MM-DD'), TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2023-10-11', 'YYYY-MM-DD'), '완료');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'fffll@ctest.co.kr', 'PNAME자리', 'PCOMENT자리', 'ACCESS', TO_DATE('2023-09-12', 'YYYY-MM-DD'), TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2023-10-11', 'YYYY-MM-DD'), '완료');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'react@ctest.co.kr', 'PNAME자리입니다', 'PCOMENT자리입니다', 'ACCESS', TO_DATE('2023-09-12', 'YYYY-MM-DD'), TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2023-10-11', 'YYYY-MM-DD'), '숨김');

INSERT INTO PROJECT ( PNO, USERID, PNAME, PCOMENT, PACCESS, PDATE, PSTARTDATE, PENDDATE, PSTATUS)
VALUES (project_sequence.NEXTVAL, 'spring@ctest.co.kr', '피네임', '피코멘트', 'ACCESS', TO_DATE('2023-09-12', 'YYYY-MM-DD'), TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2023-10-11', 'YYYY-MM-DD'), '진행중');


--TABLE TASK
INSERT INTO TASK (TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, 1, 'kh0001@kh.com', 'kh0001@kh.com', '점심 정하기', '정말 고르기 어렵습니다', '완료', SYSDATE, TO_DATE('2023-09-10 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK (TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, 2, 'kh0001@kh.com', 'kh0001@kh.com', 'CSS 보완하기', '어렵네 이거...', '진행 중' , SYSDATE, TO_DATE('2023-09-12 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-29 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK (TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, 2, 'kh0001@kh.com', 'kh0001@kh.com', '설계 끝내기', '귀찮네 이거...', '진행 중' , SYSDATE, TO_DATE('2023-09-12 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-29 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK (TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, 2, 'kh0001@kh.com', 'kh0001@kh.com', '하기싫네', '머지 이거...', '진행 중' , SYSDATE, TO_DATE('2023-09-12 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-29 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '6', 'sample@kh.co.kr', 'sple@kh.co.kr', '업무1', '내용1', '진행 중', SYSDATE, TO_DATE('2023-09-14 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-09-16 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '6', 'sample@kh.co.kr', 'mplsam@kh.co.kr', '업무2', '업무내용', '진행 중', SYSDATE, TO_DATE('2023-09-14 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-09-19 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '6', 'sample@kh.co.kr', 'sple@kh.co.kr', '업무3', '일해라 일', '진행 중', SYSDATE, TO_DATE('2023-09-19 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-09-20 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '7', 'sample@kh.co.kr', 'mplsam@kh.co.kr', '밥줘', '배고파 밥줘', '진행 중', SYSDATE, TO_DATE('2023-09-13 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-09-13 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '11', 'spam@kh.co.kr', 'mplsam@kh.co.kr', '퇴근', '빛의속도로 집에가기', '진행 중', SYSDATE, TO_DATE('2023-09-13 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-09-13 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '11', 'spam@kh.co.kr', 'sample@kh.co.kr', '사장님 월급주세요', '왜 월급이 밀리지요?', '진행 중', SYSDATE, TO_DATE('2023-09-17 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-09-18 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '11', 'spam@kh.co.kr', 'mplsam@kh.co.kr', '일해라 일', '노예처럼 일을 해라', '진행 중', SYSDATE, TO_DATE('2023-09-14 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-09-29 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '13', 'mplsam@kh.co.kr', 'sple@kh.co.kr', '휴가를 가고싶다', '사수가 괴롭혀요', '진행 중', SYSDATE, TO_DATE('2023-09-12 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-09-22 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '13', 'mplsam@kh.co.kr', 'mplsam@kh.co.kr', '업무과다', '내 몸은 하난데', '진행 중', SYSDATE, TO_DATE('2023-09-13 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-09-24 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '13', 'fffll@ctest.co.kr', 'react@ctest.co.kr', '업무1', '당신을 위한 일이 있어.', '진행 중', SYSDATE, TO_DATE('2023-09-13 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-09-24 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '15', 'fffll@ctest.co.kr', 'spring@ctest.co.kr', '너 내 사원이 되라', '가족같은 분위기의 기업에서 꿈의 직장생활', '진행 중', SYSDATE, TO_DATE('2023-09-13 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-11 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '15', 'fffll@ctest.co.kr', 'spring@ctest.co.kr', '너 내 노동력이 되라', '가족같은 분위기의 기업에서 꿈의 직장생활', '진행 중', SYSDATE, TO_DATE('2023-09-13 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-11 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '17', 'spring@ctest.co.kr', 'spring@ctest.co.kr', '업무1', '일이 참 많지요?', '진행 중', SYSDATE, TO_DATE('2023-09-13 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-11 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '17', 'spring@ctest.co.kr', 'spring@ctest.co.kr', '업무2', '일이 참 많지요?', '진행 중', SYSDATE, TO_DATE('2023-09-13 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-11 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '17', 'spring@ctest.co.kr', 'spring@ctest.co.kr', '업무3', '일이 정말 많지요?', '진행 중', SYSDATE, TO_DATE('2023-09-13 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-11 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);

INSERT INTO TASK ( TNO, PNO, USERID, TMEMBER, TTITLE, TCONTENT, TSTATUS, TDATE, TSTARTDATE, TENDDATE, BREF, BRESTEP, BRELEVEL)
VALUES (task_sequence.NEXTVAL, '17', 'spring@ctest.co.kr', 'spring@ctest.co.kr', '업무4', '일이 정말 많지요?', '진행 중', SYSDATE, TO_DATE('2023-09-13 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-11 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), task_sequence.NEXTVAL, 0, 0);


--TABLE SCHEDULE
INSERT INTO SCHEDULE (SNO, USERID, SSTART, SEND, SPLACE, SMEMO, STITLE, SCOLOR)
VALUES (schedule_sequence.NEXTVAL, 'sple@kh.co.kr', TO_DATE('2023-09-14', 'YYYY-MM-DD'), TO_DATE('2023-09-16', 'YYYY-MM-DD'), '강남구', '일하기', '업무1', '#'||lpad(trim(to_char(floor(dbms_random.value(0,16777216)),'XXXXXX')),6,'0'));

INSERT INTO SCHEDULE (SNO, USERID, SSTART, SEND, SPLACE, SMEMO, STITLE, SCOLOR)
VALUES (schedule_sequence.NEXTVAL, 'sample@kh.co.kr', TO_DATE('2023-09-14', 'YYYY-MM-DD'), TO_DATE('2023-09-19', 'YYYY-MM-DD'), '강남구', '업무내용', '업무2', '#'||lpad(trim(to_char(floor(dbms_random.value(0,16777216)),'XXXXXX')),6,'0'));

INSERT INTO SCHEDULE (SNO, USERID, SSTART, SEND, SPLACE, SMEMO, STITLE, SCOLOR)
VALUES (schedule_sequence.NEXTVAL, 'mplsam@kh.co.kr', TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2023-09-13', 'YYYY-MM-DD'), '역삼동', '배고파 밥줘', '밥줘', '#'||lpad(trim(to_char(floor(dbms_random.value(0,16777216)),'XXXXXX')),6,'0'));

INSERT INTO SCHEDULE (SNO, USERID, SSTART, SEND, SPLACE, SMEMO, STITLE, SCOLOR)
VALUES (schedule_sequence.NEXTVAL, 'sample@kh.co.kr', TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2023-09-13', 'YYYY-MM-DD'), '성내동', '빛의속도로 집에가기', '퇴근', '#'||lpad(trim(to_char(floor(dbms_random.value(0,16777216)),'XXXXXX')),6,'0'));

INSERT INTO SCHEDULE (SNO, USERID, SSTART, SEND, SPLACE, SMEMO, STITLE, SCOLOR)
VALUES (schedule_sequence.NEXTVAL, 'fffll@ctest.co.kr', TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2023-09-13', 'YYYY-MM-DD'), '역삼동', '당신을 위한 일이 있어', '업무1', '#'||lpad(trim(to_char(floor(dbms_random.value(0,16777216)),'XXXXXX')),6,'0'));

INSERT INTO chatLIST( CHATNO,CHATNAME) VALUES (chat_sequence.NEXTVAL,'채팅방이름1');
INSERT INTO chatLIST( CHATNO,CHATNAME) VALUES (chat_sequence.NEXTVAL,'채팅방이름2');

INSERT INTO chat_member( CHATNO,USERID) VALUES (1,'kh0001@kh.com');
INSERT INTO chat_member( CHATNO,USERID) VALUES (2,'kh0002@kh.com');


COMMIT;