select project_id, ROUND(avg(experience_years),2) as average_years
FROM Project P JOIN Employee E On P.employee_id=E.employee_id GROUP BY project_id;
