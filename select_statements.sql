-- Import data into contacts table
\COPY crowdfunding_schema.contacts(contact_id, first_name, last_name, email) FROM 'Resources/contacts.csv' DELIMITER ',' CSV HEADER;

-- Import data into category table
\COPY crowdfunding_schema.category(category_id, category) FROM 'Resources/category.csv' DELIMITER ',' CSV HEADER;

-- Import data into subcategory table
\COPY crowdfunding_schema.subcategory(subcategory_id, subcategory) FROM 'Resources/subcategory.csv' DELIMITER ',' CSV HEADER;

-- Import data into campaign table
\COPY crowdfunding_schema.campaign(cf_id, contact_id, company_name, description, goal, pledged, outcome, backers_count, country, currency, launch_date, end_date, category_id, subcategory_id) FROM 'Resources/campaign.csv' DELIMITER ',' CSV HEADER;

-- Verify contacts table
SELECT * FROM crowdfunding_schema.contacts LIMIT 5;

-- Verify category table
SELECT * FROM crowdfunding_schema.category LIMIT 5;

-- Verify subcategory table
SELECT * FROM crowdfunding_schema.subcategory LIMIT 5;

-- Verify campaign table
SELECT * FROM crowdfunding_schema.campaign LIMIT 5;