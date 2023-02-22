-- Categorize the data into tables -->

recipes
columns:
id (pk)
name
ingredients
instructions
category
user_id (fk)

-- Define relationships between those tables -->

recipes
belongs_to :user
belongs_to :category

-- Write the SQL Commands that would create the tables in files named after the data -->

CREATE TABLE recipes (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
ingredients VARCHAR(255),
instructions VARCHAR(255),
category INTEGER FOREIGN KEY,
user_id INTEGER FOREIGN KEY
);

-- Write the SQL Commands that would create the relationships between the tables -->

ALTER TABLE recipes ADD FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE recipes ADD FOREIGN KEY (category) REFERENCES categories(id);
ALTER TABLE categories ADD FOREIGN KEY (user_id) REFERENCES users(id);