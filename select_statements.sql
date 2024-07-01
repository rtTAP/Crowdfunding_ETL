-- Import data into category table
\CHOOSE FROM crowdfunding_db menu SCHEMAS(2) crowdfunding_schema TABLES(4) category(category_id, category) left click select Import/ExportData 
SELECT Import SELECT category in filename field then SELECT Format field CSV CLICK on OK;

-- Import data into contacts table
\CHOOSE FROM crowdfunding_db menu SCHEMAS(2) crowdfunding_schema TABLES(4) subcategory(subcategory_id, subcategory) left click select Import/ExportData 
SELECT Import SELECT subcategory in filename field then SELECT Format field CSV CLICK on OK;

-- Import data into subcategory table
\CHOOSE FROM crowdfunding_db menu SCHEMAS(2) crowdfunding_schema TABLES(4) contacts(contact_id, first_name, last_name, email) left click select Import/ExportData 
SELECT Import SELECT contacts in filename field then SELECT Format field CSV CLICK on OK;

-- Import data into campaign table
\CHOOSE crowdfunding_db menu SCHEMAS(2) crowdfunding_schema TABLES(4) campaign(cf_id, contact_id, company_name, description, goal, pledged, outcome, backers_count, 
country, currency, launch_date, end_date, category_id, subcategory_id) left click select Import/ExportData SELECT Import 
SELECT contacts in filename field then SELECT Format field CSV CLICK on OK;

-- Verify contacts table
SELECT * FROM crowdfunding_schema.contacts LIMIT 5;

-- Verify category table
SELECT * FROM crowdfunding_schema.category LIMIT 5;

-- Verify subcategory table
SELECT * FROM crowdfunding_schema.subcategory LIMIT 5;

-- Verify campaign table
SELECT * FROM crowdfunding_schema.campaign LIMIT 5;