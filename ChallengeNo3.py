import psycopg2

# Establish a connection
conn = psycopg2.connect(
    host='postgres',
    port='5432',
    user='postgres',
    password='ketua2osis',
    database='postgres'
)

# Create a cursor object to execute SQL queries
cursor = conn.cursor()

# SQL Query to insert a record into the 'KARYAWAN' table
insert_sql = (
    "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME) "
    "VALUES (%s, %s, %s, %s, %s)"
)

values = ('John', 'Doe', 30, 'Male', 50000)  # Example data to be inserted

try:
    # Execute the SQL command with the values
    cursor.execute(insert_sql, values)

    # Commit the changes to the database
    conn.commit()
except Exception as e:
    # Rollback the transaction if there's an issue
    conn.rollback()
    print(f"Error: {e}")
finally:
    # Close the cursor and connection
    cursor.close()
    conn.close()
