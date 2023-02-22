-- Categorize the data into tables -->

users
columns:
id (pk)
first_name
last_name
email
password

-- Define relationships between those tables -->

users
has_many :recipes
has_many :categories

-- Write the SQL Commands that would create the tables in files named after the data -->

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
email VARCHAR(255),
password VARCHAR(255)
);

-- Write the SQL Commands that would create the relationships between the tables -->

ALTER TABLE recipes ADD FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE recipes ADD FOREIGN KEY (category) REFERENCES categories(id);
ALTER TABLE categories ADD FOREIGN KEY (user_id) REFERENCES users(id);