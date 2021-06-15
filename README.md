# bookmark_manager

## User Stories

```
As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks

As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

## Domain Model:

![Bookmark Manager domain model](./public/img/domain_model.png)

## Database Instructions

1. Install PostgreSQL with the following command `brew install postgresql`
  - After Homebrew has downloaded PostgreSQL, run this command to run PostgreSQL in the background when you log in `brew services start postgresql`

2. Connect to `psql`
  - To start `psql`, type `psql <database name>` into a terminal where `<database name>` is the name of the database you want to interact with. So, typing `psql postgres` will give us direct access to that first database:
  ```
  $ psql postgres
  postgres=#
  ```
  - Now that we're in the `psql` REPL environment, let's create a database using SQL. Databases need a name, so we'll use the same name as our computer:
  ```
  postgres=# CREATE DATABASE "your_user_name_here";
  ```
  - Type `psql` to connect to your database

3. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`

4. Connect to the database using the `psql` command `\c bookmark_manager`
  - After connecting to the database, create a table `CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));`

5. Run the query we have saved in the file `01_create_bookmarks_table.sql` to create a table

### Creating Test Database

- Follow the above steps starting from step 2 and create a testing database`CREATE DATABASE bookmark_manager_test;` and connect to this new database
- You've now setup two databases for bookmark manager