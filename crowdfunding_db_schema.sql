--- Create database
CREATE DATABASE IF NOT EXISTS crowdfunding_db;

--- Create crowdfunding schema
CREATE SCHEMA crowdfunding_schema;

--- Set search path to new schema
SET search_path TO crowdfunding_schema;

--- Create contacts table
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Create category table
CREATE TABLE category (
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(255) NOT NULL UNIQUE
);

-- Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL UNIQUE
);

-- Create table campaign
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description TEXT,
    goal NUMERIC(10,1) NOT NULL,
    pledged NUMERIC(10,1) NOT NULL,
    outcome VARCHAR(20) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(20) NOT NULL,
    currency CHAR(3),
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL,

    -- Foreign key constraints
    CONSTRAINT fk_campaign_contact_id FOREIGN KEY (contact_id)
        REFERENCES contacts (contact_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_campaign_category_id FOREIGN KEY (category_id)
        REFERENCES category (category_id)
        ON DELETE RESTRICT, 

    CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY (subcategory_id)
        REFERENCES subcategory (subcategory_id)
        ON DELETE RESTRICT  
);

