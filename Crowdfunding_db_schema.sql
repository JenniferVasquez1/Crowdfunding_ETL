CREATE TABLE category(
    category_id         VARCHAR(4)      NOT NULL        PRIMARY KEY,
    category            VARCHAR(16)     NOT NULL 
);

CREATE TABLE contacts(
    contact_id          INT             NOT NULL        PRIMARY KEY,
    first_name          VARCHAR(16)     NOT NULL,
    last_name           VARCHAR(16)     NOT NULL, 
    email               VARCHAR(50)     NOT NULL       
);

CREATE TABLE subcategory(
    subcategory_id      VARCHAR(8)      NOT NULL        PRIMARY KEY,
    subcategory         VARCHAR(20)     NOT NULL        
);

CREATE TABLE campaign(
    cf_id               INT             NOT NULL        PRIMARY KEY,
    contact_id          INT             NOT NULL,        
    company_name        VARCHAR(50)     NOT NULL,
    description         VARCHAR(500)    NOT NULL,
    goal                INT             NOT NULL,
    pledged             DECIMAL(10,2)   NOT NULL,
    outcome             VARCHAR(10)     NOT NULL,
    backers_count       INT             NOT NULL,
    country             VARCHAR(2)      NOT NULL,
    currency            VARCHAR(3)      NOT NULL,
    launched_date       DATE            NOT NULL,
    end_date            DATE            NOT NULL,
    category_id         VARCHAR(4)      NOT NULL,
    subcategory_id      VARCHAR(8)      NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);