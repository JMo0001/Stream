desc task;
desc project;

select pname from project;

select pname, count(tno) cnt
    from project
    join task using(pno)
    group by (pno, pname)
    ;
    
select ttitle, userid, tstatus, tdate, tstartdate, tenddate
    from task 
    
    where pno in (select pno from project)
    ;
select  pname, pno, cnt, ttitle, userid, tstatus, tdate, tstartdate, tenddate
    from (select pname, pno, count(tno) cnt 
            from project 
            join task using(pno)
            group by (pno,pname))
            join task using(pno)
            where pno=pno
    ;

select pname, pno, ttitle, userid, tstatus, tdate, tstartdate, tenddate
    from project join task using(pno, userid)
    ;

--원본글, 답글 확인하기 
--bref=tno : 원본글 bref <> tno : 답글
select bref from task where tno =1;

--brefstep = 1~N : 하위 업무들의 순서
select brestep+1 from task where tno =1;

--brelevel=0 : 원본글, =1 : 하위 업무
select brelevel+1 from task where tno = 1;


