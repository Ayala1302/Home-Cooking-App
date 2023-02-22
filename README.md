# RecipeApp

<!-- In the README.md, list out the data you think you'll need for this app. -->

For my Project I think I would need data such as:

<!-- Categorize the data into tables -->

# Tables

users
columns:
id (pk)
first_name
last_name
email
password

recipes
columns:
id (pk)
name
ingredients
instructions
category
user_id (fk)

categories
columns:
id (pk)
recipe_id (fk)
name
user_id (fk)

<!-- Define relationships between those tables -->

# Relationships

users
has_many :recipes
has_many :categories

recipes
belongs_to :user
belongs_to :category

categories
belongs_to :user
has_many :recipes

<!-- Review the steps to create a DB, connect to it, seed it with data and write them down in the README.md. -->

# Steps

1. Create a database
2. Connect to the database
3. Seed the database with data
4. Write the code to connect to the database
5. Write the code to seed the database with data

<!-- Write the SQL Commands that would create the tables in files named after the data like: userSeedData.sql, carSeedData.sql, productSeedData.sql, etc... -->

# SQL Commands

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
email VARCHAR(255),
password VARCHAR(255)
);

CREATE TABLE recipes (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
ingredients VARCHAR(255),
instructions VARCHAR(255),
category INTEGER FOREIGN KEY,
user_id INTEGER FOREIGN KEY
);

CREATE TABLE categories (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
user_id INTEGER FOREIGN KEY,
);

<!-- Write the SQL Commands that would create the relationships between the tables -->

# SQL Commands

ALTER TABLE recipes ADD FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE recipes ADD FOREIGN KEY (category) REFERENCES categories(id);
ALTER TABLE categories ADD FOREIGN KEY (user_id) REFERENCES users(id);
