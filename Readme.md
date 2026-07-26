# 📦 SQL Inventory Automation System

_A MySQL project demonstrating database automation using Stored Procedures, Functions, Transactions, Views, and Triggers._

![MySQL](https://img.shields.io/badge/MySQL-Database-blue)  
![SQL](https://img.shields.io/badge/SQL-Automation-green)  
![Status](https://img.shields.io/badge/Project-Completed-brightgreen)

---

# Project Overview

The **SQL Inventory Automation System** is a relational database project that demonstrates how SQL can automate day-to-day inventory management operations.

The system manages suppliers, products, customers, orders, inventory, and reporting while enforcing business rules directly at the database level. Instead of simply storing data, it automates repetitive operations, validates inventory, maintains data integrity, and simplifies reporting using core MySQL features.

---
# Skills Demonstrated

- Relational Database Design
- Database Normalization
- Primary & Foreign Key Relationships
- Stored Procedures
- User-Defined Functions
- Trigger-Based Automation
- Transaction Management
- Rollback & Exception Handling
- Business Rule Enforcement
- SQL Views
- Inventory Management Logic
---
# Business Objectives

- Manage supplier, product, customer, inventory, and order information.
    
- Reduce manual database operations through SQL automation.
    
- Maintain accurate inventory levels.
    
- Enforce business rules at the database level.
    
- Generate reusable reports using SQL Views.
    

---

# Key Features

## 🗄️ Database Design

- Relational Database Schema
    
- Primary & Foreign Keys
    
- CHECK Constraints
    
- Referential Integrity
    

## ⚙️ SQL Automation

- Automatic ID Generation
    
- Stored Procedures
    
- User-Defined Functions
    
- Transactions & Rollback
    
- Exception Handling
    
- Trigger-Based Business Rules
    
- Automatic Inventory Updates
    
- Inventory Validation
    
- Product Deletion Automation
    

## 📊 Reporting

- BILL View
    
- Simplified Business Queries
    

---

# SQL Automation Workflow

```text
New Record
      │
      ▼
Generate ID Automatically
      │
      ▼
Stored Procedure
      │
      ▼
Transaction Starts
      │
      ▼
Business Validation
      │
      ▼
Success ─────────► Commit
      │
      └──────────► Error → Rollback
```

---

# Inventory Automation Workflow

```text
Customer Places Order
          │
          ▼
Check Available Stock
          │
     Enough Stock?
      │        │
     Yes       No
      │        │
      ▼        ▼
Accept      Reject Order
Order
      │
      ▼
Update Inventory Automatically
      │
      ▼
Maintain Stock Consistency
```

---

# Project Structure

```text
SQL_Inventory_Automation_System

Documentation
    Business_Requirements.md
    Database_Design.md
    Automation_Features.md
    Data_Dictionary.md

SQL
    01_Database_Schema_&_Sample_Data.sql
    02_Views.sql
    03_Database_Automation.sql
    04_Inventory_Triggers.sql

Images

README.md
```

|SQL File|Purpose|
|---|---|
|`01_Database_Schema_&_Sample_Data.sql`|Creates the relational database schema and loads sample business data.|
|`02_Views.sql`|Creates reusable reporting views for simplified business queries.|
|`03_Database_Automation.sql`|Implements automatic ID generation, stored procedures, transactions, rollback, and exception handling.|
|`04_Inventory_Triggers.sql`|Implements trigger-based inventory validation, stock updates, and business rule enforcement.|

---

# Automation Highlights

This project automates several common database operations:

- Automatic ID generation for Suppliers, Products, Customers, and Orders.
    
- Order creation with automatic date assignment.
    
- Transaction management with rollback and exception handling.
    
- Inventory validation before accepting customer orders.
    
- Automatic stock deduction after successful order placement.
    
- Automatic inventory adjustment when existing orders are modified.
    
- Automatic cleanup of dependent records when products are deleted.
    
- Reusable reporting through SQL Views.
    

---

# Documentation

Detailed project documentation is available in the **Documentation** folder.

- Business Requirements
    
- Database Design
    
- Automation Features
    
- Data Dictionary
    

---

# Screenshots

## Entity Relationship Diagram

_(Add ER Diagram here)_

---

## Database Schema

_(Add Schema Screenshot here)_

---

## Trigger Execution

_(Add Trigger Screenshot here)_

---

## BILL View

_(Add BILL View Screenshot here)_

---

# Tech Stack

- MySQL
    
- SQL
    
- Stored Procedures
    
- User-Defined Functions
    
- Triggers
    
- Views
    
- Transactions
    
- Relational Database Design
    

---

# Learning Outcomes

Through this project, I gained hands-on experience in:

- Designing normalized relational databases.
    
- Implementing SQL automation using stored procedures, functions, and triggers.
    
- Managing transactions with rollback and exception handling.
    
- Enforcing business rules at the database level.
    
- Maintaining referential integrity and inventory consistency.
    
- Simplifying reporting through reusable database views.
    

---

# Author

**Yash Gurung**

**Data Analyst | SQL | Python | Tableau | Machine Learning**
