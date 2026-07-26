## Database Overview

The Inventory Automation System follows a relational database design to ensure data consistency, minimize redundancy, and maintain referential integrity. The database is organized around the core business entities involved in managing products, customers, suppliers, inventory, and orders.

---

## Entity Relationships

The database consists of the following tables:

### Supplier

Stores supplier information such as supplier name, address, contact number, and email.

**Primary Key:** SID

---

### Product

Stores product details including description, price, category, and supplier.

Each product belongs to one supplier.

**Primary Key:** PID

**Foreign Key:** SID → Supplier

---

### Customer

Stores customer information including contact details and date of birth.

**Primary Key:** CID

---

### Orders

Stores customer purchase transactions.

Each order is associated with one customer and one product.

**Primary Key:** OID

**Foreign Keys:**

- CID → Customer
    
- PID → Product
    

---

### Stock

Maintains inventory levels for each product.

Stores:

- Current Stock Quantity
    
- Reorder Level
    
- Minimum Order Quantity
    

**Foreign Key:** PID → Product

---

## Database Relationships

|Parent Table|Primary Key (PK)|Child Table|Foreign Key (FK)|
|---|---|---|---|
|Supplier|SID|Product|SID|
|Product|PID|Stock|PID|
|Customer|CID|Orders|CID|
|Product|PID|Orders|PID|

## Relationship Summary

- **Supplier → Product** : One supplier can supply multiple products.
    
- **Product → Stock** : Each product has one corresponding inventory record.
    
- **Customer → Orders** : One customer can place multiple orders.
    
- **Product → Orders** : One product can appear in multiple customer orders.

---

## Data Integrity

The database maintains integrity using:

- Primary Keys
    
- Foreign Keys
    
- CHECK Constraints
    
- UNIQUE Constraints
    
- Default Values
    

These constraints help prevent duplicate records, invalid values, and broken relationships between tables.

---

## Design Principles

The database was designed to:

- Reduce data redundancy through normalization.
    
- Maintain referential integrity between related tables.
    
- Support inventory tracking and order processing.
    
- Enable reusable reporting through SQL views.
    
- Support business automation using stored procedures, functions, and triggers.