CREATE SCHEMA Talento_ABC_Corporation;
USE Talento_ABC_Corporation;
CREATE TABLE employees (
    employeenumber INT PRIMARY KEY ,
    gender VARCHAR(10),
    maritalstatus VARCHAR(20),
    datebirth DATE,
    children INT,
    distancefromhome INT,
    numcompaniesworked INT,
    totalworkingyears DECIMAL(5, 2),
    yearsatcompany INT,
    yearsincurrentrole INT,
    yearssincelastpromotion DECIMAL(5, 2),
    yearswithcurrmanager INT,
    attrition VARCHAR(10),
    overtime VARCHAR(10),
    standardhours VARCHAR(30),
    remotework VARCHAR(10),
    -- Claves foráneas (FK) a otras tablas
    education_id INT, -- FK a Education_Levels
    job_role_id INT -- FK a Job_Roles
);

CREATE TABLE job_roles (job_role_id INT PRIMARY KEY AUTO_INCREMENT,
    jobrole VARCHAR(100) UNIQUE,
    department VARCHAR(100),
    joblevel INT,
    roledepartamentnumber VARCHAR(50)
);

CREATE TABLE background (
	employeenumber INT UNIQUE,
	education INT,
	educationfield VARCHAR(100),
	trainingtimeslastyear INT,
	numcompaniesworked TINYINT,
	totalworkingyears INT,
    CONSTRAINT fk_employees_background
	FOREIGN KEY (employeenumber) 
    REFERENCES employees (employeenumber)
);

CREATE TABLE compensation (
    employeenumber INT PRIMARY KEY, -- Clave Foránea y Primaria
    dailyrate DECIMAL(10, 2),
    hourlyrate DECIMAL(10, 2),
    monthlyincome DECIMAL(10, 2),
    monthlyrate DECIMAL(10, 2),
    salary DECIMAL(10, 2),
    percentsalaryhike DECIMAL(5, 2),
    stockoptionlevel INT,
    sameasmonthlyincome DECIMAL(10, 2), -- Se podría eliminar si es un duplicado exacto de monthlyincome
    CONSTRAINT fk_employees_Compensation
    FOREIGN KEY (employeenumber) 
    REFERENCES Employees(employeenumber)
);
CREATE TABLE ratings (
	employeenumber INT,
	environmentsatisfaction TINYINT,
	jobinvolvement TINYINT,
	jobsatisfaction TINYINT,
	relationshipsatisfaction TINYINT,
	performancerating TINYINT,
	worklifebalance TINYINT,
	CONSTRAINT fk_employees_ratings
	FOREIGN KEY (employeenumber) 
    REFERENCES employees(employeenumber)
);

