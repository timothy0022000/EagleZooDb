/*REVIEWS*/

/*RESEARCH*/
CREATE VIEW v_emp_research AS
SELECT e.*
FROM					employee e, department d
WHERE					d.dept_no   =   e.dept_no 
AND						d.dept_name = 'Research'
WITH CHECK OPTION


/*ACCOUNTING*/
CREATE VIEW v_emp_accounting AS
SELECT e.*
FROM					employee e, department d
WHERE					d.dept_no   =   e.dept_no 
AND						d.dept_name = 'Accounting'
WITH CHECK OPTION


/*MARKETING*/
CREATE VIEW v_emp_marketing AS
SELECT e.*
FROM					employee e, department d
WHERE					d.dept_no   =   e.dept_no 
AND						d.dept_name = 'Marketing'
WITH CHECK OPTION
	

CREATE VIEW v_project AS 
SELECT		p.project_no , p.project_name 
FROM		project P
WITH CHECK OPTION

INSERT INTO v_emp_marketing VALUES (1234,'Lopez','George',’d3’ )
INSERT INTO v_emp_marketing VALUES (1235,'Rogers','Joe',’d2’ )
Did they both work? Check the employee table to see if either one is there.  Explain why this worked or didn’t work.
Can only add to their own department, d3 can add into marketing but not d2(Accounting).

DROP v_emp_marketing;
Did this work? Check the employee table to see what happened.  Explain why this worked or didn’t work.
YES 
