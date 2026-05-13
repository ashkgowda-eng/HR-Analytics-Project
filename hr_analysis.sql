USE hr_analytics;

-- View dataset
SELECT * FROM employees;

-- Total Employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- Attrition Count
SELECT COUNT(*) AS attrition_count
FROM employees
WHERE Attrition = 'Yes';

-- Attrition by Department
SELECT Department,
COUNT(*) AS attrition_count
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department;

-- Attrition by Gender
SELECT Gender,
COUNT(*) AS attrition_count
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Gender;

-- Average Salary
SELECT AVG(MonthlyIncome) AS avg_salary
FROM employees;

-- Salary by Job Role
SELECT JobRole,
AVG(MonthlyIncome) AS avg_salary
FROM employees
GROUP BY JobRole;

-- Overtime Impact
SELECT OverTime,
COUNT(*) AS attrition_count
FROM employees
WHERE Attrition = 'Yes'
GROUP BY OverTime;

-- Job Satisfaction Analysis
SELECT JobSatisfaction,
COUNT(*) AS employee_count
FROM employees
GROUP BY JobSatisfaction;