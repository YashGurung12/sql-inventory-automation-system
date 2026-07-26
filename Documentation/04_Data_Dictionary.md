# Data Dictionary

## Overview

The Inventory Automation System consists of five core business entities and one reporting view. Each table was designed to support inventory tracking, order processing, and business automation while maintaining referential integrity.

---

## Supplier

**Purpose**

Stores supplier information for products available in the inventory.

**Primary Key**

- SID
    

**Key Attributes**

- Supplier Name
    
- Address
    
- City
    
- Phone Number
    
- Email
    

---

## Product

**Purpose**

Stores product information, pricing, category, and supplier details.

**Primary Key**

- PID
    

**Foreign Key**

- SID → Supplier
    

**Key Attributes**

- Product Description
    
- Price
    
- Category
    
- Supplier
    

---

## Customer

**Purpose**

Stores customer information required for order processing.

**Primary Key**

- CID
    

**Key Attributes**

- Customer Name
    
- Address
    
- City
    
- Phone Number
    
- Email
    
- Date of Birth
    

---

## Orders

**Purpose**

Stores customer purchase transactions.

**Primary Key**

- OID
    

**Foreign Keys**

- CID → Customer
    
- PID → Product
    

**Key Attributes**

- Order Date
    
- Ordered Quantity
    

---

## Stock

**Purpose**

Maintains inventory levels for each product.

**Foreign Key**

- PID → Product
    

**Key Attributes**

- Stock Quantity
    
- Reorder Level
    
- Minimum Order Quantity
    

---

## BILL (View)

**Purpose**

Provides a consolidated reporting view by combining customer, product, and order information into a single dataset for billing and business reporting.

---

## Database Summary

| Table       | Purpose                                     |
| ----------- | ------------------------------------------- |
| Supplier    | Stores supplier information                 |
| Product     | Stores product details and supplier mapping |
| Customer    | Stores customer information                 |
| Orders      | Stores customer purchase transactions       |
| Stock       | Tracks product inventory levels             |
| BILL (View) | Simplifies billing and reporting queries    |
