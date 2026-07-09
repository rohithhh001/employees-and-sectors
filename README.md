
# Employees and Sectors

A simple SQL project that demonstrates how to manage Employees and Sectors using a relational database. This project includes database schema creation, sample data insertion, and SQL queries to perform common operations.

📌 Project Overview
This project is designed to help beginners understand database concepts such as:

#### Creating tables

Defining primary and foreign keys

Establishing relationships between tables

Inserting sample records

Retrieving data using SQL queries

Performing JOIN operations

🛠️ Technologies Used
#### SQL

#### MySQL

### 📂 Database Structure
Employees Table
Column	Description
employee_id	Unique employee ID,
employee_name	Employee name,
salary	Employee salary.
sector_id	References the sector tabl,e
Sectors Table
Column	Description
sector_id	Unique sector ID,
sector_name	Name of the sector,
 🔗 Relationship
One Sector can have multiple Employees.

Each Employee belongs to one Sector.

🚀 Features
Create Employees and Sectors tables

Insert sample records

View employee details

Retrieve employees by sector

Perform JOIN queries

Practice SQL relationships

### ▶️ How to Run
##### Clone the repository:

#### git clone https://github.com/rohithhh001/employees-and-sectors.git
Open MySQL Workbench (or any SQL client).

Import or execute the SQL script.

Run the SQL queries to explore the database.

### 📸 Sample Query
SELECT e.employee_name,
       s.sector_name
FROM employees e
JOIN sectors s
ON e.sector_id = s.sector_id;

📁 Repository Structure
employees-and-sectors/
│── employees_and_sectors.sql
│── README.md

### 🎯 Learning Outcomes
After completing this project, you will understand:

SQL table creation

Primary and Foreign Keys

One-to-Many Relationships

INNER JOIN

Data insertion

Basic SQL queries

#### 👨‍💻 Author
### Rohith Ummalla

#### GitHub: https://github.com/rohithhh001

⭐ Support
If you found this project helpful, consider giving the repository a Star ⭐.



