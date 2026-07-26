## Project Overview

This project simulates a simple inventory automation system for a retail business. It was designed to demonstrate database design, SQL automation, inventory validation, and business rule enforcement using MySQL.

The system manages suppliers, products, customers, orders, stock levels, and billing while reducing manual database operations through stored procedures, functions, and triggers.

---

## Business Objectives

The inventory automation system should enable the business to:

- Maintain supplier, product, customer, stock, and order information.
    
- Automatically generate unique IDs for new records.
    
- Simplify data entry using stored procedures.
    
- Ensure data integrity through transactions and error handling.
    
- Prevent orders when sufficient stock is unavailable.
    
- Automatically update inventory after successful order placement.
    
- Maintain accurate stock levels when orders are modified.
    
- Remove dependent records when products are deleted.
    
- Simplify reporting using reusable database views.
    

---

## Functional Requirements

The system should provide the following capabilities:

### Supplier Management

- Add new suppliers.
    
- Store supplier contact information.
    
- Generate supplier IDs automatically.
    

### Product Management

- Add new products.
    
- Associate products with suppliers.
    
- Maintain pricing and category information.
    
- Generate product IDs automatically.
    

### Customer Management

- Register customers.
    
- Store customer information.
    
- Generate customer IDs automatically.
    

### Order Management

- Create customer orders.
    
- Automatically assign the current order date.
    
- Validate stock availability before accepting an order.
    
- Automatically update stock after successful order creation.
    

### Inventory Management

- Track available stock.
    
- Prevent negative inventory.
    
- Update stock automatically after order creation.
    
- Adjust stock correctly when orders are modified.
    
- Remove dependent inventory records when products are deleted.
    

### Reporting

- Generate consolidated billing information using database views.
    
- Reduce query complexity for reporting users.
    

---

## Non-Functional Requirements

- Ensure data consistency through transactions.
    
- Prevent invalid data using constraints.
    
- Handle database errors gracefully.
    
- Maintain referential integrity.
    
- Reduce manual database operations through SQL automation.
    
- Keep reporting queries simple and reusable.