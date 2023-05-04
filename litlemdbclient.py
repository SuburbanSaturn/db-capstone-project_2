import mysql.connector as connector

# storing connection credentials to variables so that updates can occur outside of connection line
user = "elopez"
password = "S@T@n678^^!B00"
host = "127.0.0.1"
port = "3306"
database = "litlemdb"

# Establishing connection by passing cred variables to connect function, handling error with try with: 
try:
    connection = connector.connect(
        user = user,
        password = password,
        host = host,
        port = port,
        database = database
    )
    print("connection sucessful")

except connector.Error as error:
    print(f"error while connecting to Mysql; {error}")


# running test query to ensure that connection to mysql occured
show_table_query = """ SHOW TABLES """

# store connection to cursor object
cursor = connection.cursor()

# execute the query via cursor object
cursor.execute(show_table_query)
results = cursor.fetchall()

# printing table to ensure we connected to the right database and are pulling the correct tables
for result in results:
    print(result)

sql_query_join = """ 
SELECT
CONCAT(c.CustomerFirstName, " ", c.CustomerLastName) as CustomerFullName 
, c.Email
, c.ContactNumber
FROM customer c
JOIN booking b ON c.CustomerID = b.CustomerID
JOIN orders o ON b.BookingID = o.BookingID
WHERE o.Totalprice > 60;
"""
# execute the query
cursor.execute(sql_query_join)

# fetch the results
results = cursor.fetchall()

# print the results
for result in results:
    print(f"Name: {results[0]} {results[1]}, Email: {result[2]}, Contact: {result[3]}, Bill Amount: {result[4]}")

# close the cursor and connection
cursor.close()
connection.cursor()