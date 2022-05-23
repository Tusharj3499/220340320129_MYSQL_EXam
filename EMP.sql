Create table EMP 
(
EMPNO int(4),
ENAME varchar(10),
JOB varchar(9),
HIREDATE date,
SAL float(7,2),
COMM float(7,2),
DEPTNO int(2)
);
 desc EMP;
Insert  into  EMP  values
(7839, 'KING' ,'MANAGER', '1991-11-17' ,5000 ,NULL, 10),
(7698 ,'BLAKE', 'CLERK' ,'1981-05-01' ,2850 ,NULL ,30),
(7782, 'CLARK' ,'MANAGER', '1981-06-09', '2450', NULL, 10),
(7566 ,'JONES', 'CLERK' ,'1981-04-02', 2975 ,NULL, 20),
(7654, 'MARTIN', 'SALESMAN' ,'1981-09-28', 1250, 1400, 30),
(7499, 'ALLEN' ,'SALESMAN', '1981-02-20' ,1600, 300, 30);

select * from EMP;

#-----------------------------------------------------------------------------------

/*Write SELECT statements to achieve the following:-
3. Display all the employees where SAL between 2500 and 5000 (inclusive of both).
4. Display all the ENAMEs in descending order of ENAME.
5. Display all the JOBs in lowercase.
6. Display the ENAMEs and the lengths of the ENAMEs.
7. Display the DEPTNO and the count of employees who belong to that DEPTNO .
8. Display the DNAMEs and the ENAMEs who belong to that DNAME.
9. Display the position at which the string ‘AR’ occurs in the ename.
10. Display the HRA for each employee given that HRA is 20% of SAL.*/

#---------------------------------------------------------------------------------------------

#3. Display all the employees where SAL between 2500 and 5000 (inclusive of both).
select sal from EMP
where SAL between 2500 AND  5000;

#---------------------------------------------------------------------------------------------

#4. Display all the ENAMEs in descending order of ENAME.

select * from EMP 
ORDER BY ENAME DESC;

#---------------------------------------------------------------------------------------------
#5. Display all the JOBs in lowercase.
SELECT LOWER(JOB) FROM EMP;

#---------------------------------------------------------------------------------------------

#6. Display the ENAMEs and the lengths of the ENAMEs.
SELECT ENAME,LENGTH(ENAME) AS LENGTH FROM EMP;

#----------------------------------------------------------------------------------------------
#7. Display the DEPTNO and the count of employees who belong to that DEPTNO .
SELECT DEPTNO,COUNT(DEPTNO) FROM EMP
GROUP BY DEPTNO;

#------------------------------------------------------------------------------------------------
#8. Display the DNAMEs and the ENAMEs who belong to that DNAME.
SELECT DNAME , ENAME FROM emp,dept 
WHERE emp.deptno = dept.deptno; 

#-------------------------------------------------------------------------------------------------

#9. Display the position at which the string ‘AR’ occurs in the ename.
SELECT ENAME FROM EMP 
WHERE  ENAME LIKE '%AR%';

#------------------------------------------------------------------------------------------------

#10. Display the HRA for each employee given that HRA is 20% of SAL.*/
SELECT ENAME,sal , SAL*(1.20) AS HRA FROM EMP;

#------------------------------------------------------------------------------------------------
