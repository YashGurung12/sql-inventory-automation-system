## Overview

The Inventory Automation System uses SQL automation to reduce manual database operations while ensuring data integrity and enforcing business rules. Automation was implemented using stored procedures, user-defined functions, transactions, exception handling, views, and triggers.

---

# Automatic ID Generation

A reusable SQL function was developed to automatically generate unique IDs for business entities.

The following entities support automatic ID generation:

- Supplier
    
- Product
    
- Customer
    
- Orders
    

Users are not required to manually create IDs before inserting records.

---

# Stored Procedures

Stored procedures simplify common database operations by providing a controlled interface for inserting new records.

Procedures were developed for:

- Adding Suppliers
    
- Adding Products
    
- Adding Customers
    
- Creating Orders
    

These procedures reduce repetitive SQL statements while improving consistency.

---

# Transaction Management

All record creation procedures execute within database transactions.

This ensures that:

- Successful operations are committed.
    
- Failed operations are rolled back.
    
- Partial inserts do not occur.
    

This maintains database consistency during data insertion.

---

# Exception Handling

Exception handling was implemented inside stored procedures using SQL handlers.

Instead of allowing incomplete transactions or unexpected failures, the procedures return meaningful error messages while automatically rolling back unsuccessful operations.

---

# Inventory Validation

Inventory availability is validated before an order is accepted.

The system automatically:

- Retrieves current stock.
    
- Compares available quantity with the requested order quantity.
    
- Rejects orders when sufficient inventory is unavailable.
    

This prevents negative inventory levels.

---

# Automatic Inventory Updates

After a successful order is created, inventory quantities are updated automatically.

Stock levels remain synchronized without requiring manual intervention.

---

# Inventory Adjustment During Order Updates

When an existing order is modified, inventory quantities are automatically recalculated.

The system correctly restores previous stock and deducts the updated quantity whenever required.

---

# Product Deletion Automation

When a product is deleted, dependent inventory and order records are removed automatically.

This prevents orphan records and maintains referential integrity.

---

# Reporting Automation

A reusable database view was created to simplify billing and reporting queries.

The view combines customer, product, and order information into a single reporting layer, reducing the need for repetitive joins across multiple tables.

---

# Automation Summary

The project demonstrates practical SQL automation through:

- Automatic ID generation
    
- Stored procedures
    
- User-defined functions
    
- Transactions
    
- Exception handling
    
- Inventory validation
    
- Automatic stock updates
    
- Trigger-based business rules
    
- Reusable reporting views