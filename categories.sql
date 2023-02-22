-- Categorize the data into tables -->

categories
columns:
id (pk)
recipe_id (fk)
name
user_id (fk)

-- Define relationships between those tables -->

categories
belongs_to :user
has_many :recipes

-- Write the SQL Commands that would create the tables in files named after the data -->

CREATE TABLE categories (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
user_id INTEGER FOREIGN KEY,
);

-- Write the SQL Commands that would create the relationships between the tables -->

ALTER TABLE recipes ADD FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE recipes ADD FOREIGN KEY (category) REFERENCES categories(id);
ALTER TABLE categories ADD FOREIGN KEY (user_id) REFERENCES users(id);