
CREATE TABLE Category (
  category_id VARCHAR(4) PRIMARY KEY,  
  category VARCHAR(25) NOT NULL        
);


CREATE TABLE Subcategory (
  subcategory_id VARCHAR(10) PRIMARY KEY, 
  subcategory VARCHAR(50) NOT NULL         
);


CREATE TABLE Contacts (
  contact_id INT PRIMARY KEY,              
  first_name VARCHAR(100) NOT NULL,        
  last_name VARCHAR(100) NOT NULL,         
  email VARCHAR(100) NOT NULL              
);


CREATE TABLE Campaign (
  cf_id INT PRIMARY KEY,                  
  contact_id INT,                          
  company_name VARCHAR(100) NOT NULL,      
  description VARCHAR(500),               
  goal NUMERIC(12, 2),                     
  pledged NUMERIC(12, 2),                  
  outcome VARCHAR(15),                     
  backers_count INT,                       
  country VARCHAR(10),                     
  currency VARCHAR(10),                    
  launch_date DATE,                        
  end_date DATE,                           
  category_id VARCHAR(4),                  
  subcategory_id VARCHAR(8),               
  FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),  
  FOREIGN KEY (category_id) REFERENCES Category(category_id),  
  FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);
