Name: Sonam Dhall						Role applied: Full stack Developer
________________________________________________________________________________________________________________________________________________
1.	Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

 Ans:-  Basically , there are three types of relationship in database:-
•	One to one
•	One to many
•	Many to many
The relationship between the "Product" and "Product_Category" entities typically follows a one-to-many relationship. It means that One product can belong to only one category so one to one relationship . In one product category there can be multiple products so one to many relationship.
________________________________________________________________________________________________________________________________________________

2.	How could you ensure that each product in the "Product" table has a valid category assigned to it?

Ans:- We can implement foreign key constraints or referential integrity which ensures that category_id in “PRODUCT” table must be available in “PRODUCT_CATEGORY” table.
If any product is updated and deleted with category_id and that is not available in the “PRODUCT_CATEGORY” table, then database will raise an error and particular operation will not be completed.

________________________________________________________________________________________________________________________________________________



