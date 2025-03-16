
---1. Create Table Statement

CREATE TABLE fast_food(
	Date date,
	Vendor varchar(50),
	Price money,
	Bates_Number varchar(50)
	  
); 




/* 

Taking a look at the data and it is noted that the bates-stamps will need to be updated
as well as several of the vendors.

*/

SELECT * FROM fast_food;

--- Getting a closer look at the vendor names to identify mispellings
--- and to consolidate what we can. 

SELECT DISTINCT vendor FROM fast_food;


-- Updating  all iterations to Kentucky Fried Chicken so that all the data is consistent 
UPDATE fast_food SET vendor = 'KFC' WHERE vendor = 'Kentucky Fried Chicken ';
UPDATE fast_food SET vendor = 'KFC' WHERE vendor = 'kfc';

--  Several more statements to correct or make the vendors more consistent.
UPDATE fast_food SET vendor = 'Panera Bread' WHERE vendor = 'Panera ';

UPDATE fast_food SET vendor = 'Burger King' WHERE vendor = 'Burger Kling';


-- Making captialization consistent for this value
UPDATE fast_food SET vendor = 'Wawa' WHERE UPPER(vendor) = 'WAWA';



/* Since there were several different spellings of this vendor, an ILIKE
 statment is utilized, after finding the string of letters that was 
 contained in all the values. 

*/

UPDATE fast_food SET vendor = 'McDonald''s' WHERE vendor ILIKE '%donal%';

-- The leading part of the bates number was replaced with the correct value. 

UPDATE fast_food SET bates_number = REPLACE(bates_number, 'APC','ABC')
WHERE bates_number LIKE 'APC%';

-- Now that the data is updated, it will integrated into Python so 
-- we can add two new columns based on the bates_number value.