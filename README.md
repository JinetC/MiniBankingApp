# MiniBankingApp
### Servlet Project

# Overview

The MiniBanking application is a comprehensive web-based banking system
developed to facilitate the management of basic banking operations within a
small to medium scale financial institution. This system allows bank personnel to
efficiently handle customer information, manage savings accounts, and process
financial transactions such as deposits and withdrawals. It serves as a
centralized platform that integrates customer data management with
transactional capabilities, ensuring accuracy, security, and ease of use.
This application supports several core functionalities essential to daily banking
operations: registering new customers, maintaining and updating customer
records, opening savings accounts tied to customer profiles, and managing
money flow through deposit and withdrawal transactions. Additionally, the system
provides transaction history views, enabling users to track account activity over
specific periods, thus enhancing transparency and customer service.
Built using Java Servlet technology and JSP for the frontend, the MiniBanking
application is backed by a MySQL relational database, which stores all customer,
account, and transaction data securely. The project incorporates essential
security measures such as user login authentication to restrict access to
authorized personnel. The interface is designed for simplicity and clarity, ensuring
that bank staff can navigate and operate the system with minimal training.
This solution is ideal for banks or financial institutions seeking to automate and
streamline their customer and account management workflows, reducing manual
paperwork and improving operational efficiency. The modular structure of the
application allows for future enhancements, including integration with external
systems or the addition of new features.

# Description

The MiniBanking system is developed as a practical project to simulate a
real-world banking environment focusing on core banking functions. It
demonstrates the use of Java EE technologies, MVC architecture, and database
integration to build a robust and maintainable web application.
The system’s architecture separates concerns into distinct layers:

● Presentation Layer uses JSP pages for user interaction and forms.

● Controller Layer uses Java Servlets to process user requests, perform
validations, and direct traffic between views and business logic.

● Data Access Layer consists of repository classes handling communication
with the MySQL database.

Customers are represented with detailed profiles including personal information
such as name, address, identification numbers, contact details, and account
type. The savings account feature allows customers to deposit money, withdraw
funds (with balance validation), and track all transactions via an intuitive history
interface.

Transactions are carefully recorded with relevant metadata such as transaction
type (deposit or withdrawal), amounts, dates, and resulting balances, providing
an auditable trail for account activities. The system ensures data integrity and
security through controlled access and validation checks.

Overall, MiniBanking is designed to illustrate fundamental banking operations
within a software application, offering a user-friendly interface combined with a
powerful backend database structure. It is a practical demonstration of software
development principles including client-server interaction, persistent storage, and
secure session management, which are vital in financial software development.

# MiniBanking System - User Guide & Deployment Instructions

User Guide for MiniBanking System

### 1. Overview
MiniBanking is a web-based application that allows users to manage customers, savings accounts, and
transactions including deposits, withdrawals, and viewing transaction history.
### 2. Features
- Add, view, edit, and delete customers.
- Open and view savings accounts.
- Deposit and withdraw money for customers.
- View transaction history by customer and date range.
- User login/logout for access control.
### 3. Accessing the Application
- Open your browser and go to:
http://localhost:8085/MiniBanking/login
- Login using your credentials.
### 4. Customer Management
- Add Customer: Fill in personal and account details and submit.
- View Customers: Lists all customers.
- Edit Customer: Enter customer ID, edit details, and submit.
- Delete Customer: Enter customer ID and confirm deletion.
### 5. Account Management
- Open Savings Account: Select existing customer, provide initial deposit and date.
- View Savings Accounts: List all savings accounts.
- Deposit Money: Select customer account, enter deposit amount and date.
- Withdraw Money: Select customer account, enter withdrawal amount and date (checks balance).
- View Transaction History: Enter customer ID and date range to see transactions.
MiniBanking System - User Guide & Deployment Instructions
### 6. Logout
- Use the Logout button to end your session securely.

## Deployment Instructions for MiniBanking System
### 1. Prerequisites
- Java Development Kit (JDK 8 or above)
- Apache Tomcat Server (version 9 or above)
- MySQL Server
- Maven (for building the project)
### 2. Database Setup
- Create a MySQL database named 'online_banking'.
- Import the provided SQL script (online_banking_backup.sql) into MySQL to create tables and sample data:
mysql -u root -p online_banking < online_banking_backup.sql
- Ensure MySQL username/password in DatabaseConnection.java matches your setup (root / 1234).
### 3. Build Project
- Navigate to the project directory in your terminal.
- Run:
mvn clean package
- This will generate a WAR file MiniBanking.war inside the target folder.
### 4. Deploy WAR to Tomcat
- Copy MiniBanking.war to Tomcat's webapps folder.
- Start Tomcat server:
MiniBanking System - User Guide & Deployment Instructions
cd /path/to/tomcat/bin
./startup.sh # or startup.bat on Windows
- Tomcat will auto-deploy the WAR.
### 5. Access Application
- Open browser and go to:
http://localhost:8085/MiniBanking/login
- Login and start using the system.
### 6. Stopping Tomcat
- To stop the server:
./shutdown.sh # or shutdown.bat on Windows
