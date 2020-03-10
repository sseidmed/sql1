require "sqlite3"

if File.exists?("maindata.db")
    File.delete("maindata.db")
end

db = SQLite3::Database.new("maindata.db")

db.execute <<-SQL
    CREATE TABLE users (
        id integer PRIMARY KEY,
        email VARCHAR,
        password VARCHAR);
SQL




db.execute("INSERT INTO users (email, password) values (?, ?)", ['bobsample@gmail.com', 'pass123'])
db.execute("INSERT INTO users (email, password) values (?, ?)", ['skylite@gmail.com', 'pass123'])
db.execute("INSERT INTO users (email, password) values (?, ?)", ['williams_k@gmail.com', 'pass123'])
db.execute("INSERT INTO users (email, password) values (?, ?)", ['computer_lab@gmail.com', 'pass123'])

sql_array = db.execute("SELECT * FROM users") 

puts sql_array