import mysql.connector

# Replace with your MySQL RDS connection details
db_config = {
    "host": "baseballanalytics.cqbhpp91ijgc.us-east-1.rds.amazonaws.com",
    "user": "admin",
    "password": "12345678",
    "database": "BaseballAnalytics"
}

try:
    # Connect to the database
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    # Execute the OffensiveStatistics view
    cursor.execute("SELECT * FROM OffensiveStatistics")
    offensive_data = cursor.fetchall()

    # Display offensive statistics
    print("Offensive Statistics:")
    for row in offensive_data:
        print(row)

    # Execute the DefensiveStatistics view
    cursor.execute("SELECT * FROM DefensiveStatistics")
    defensive_data = cursor.fetchall()

    # Display defensive statistics
    print("\nDefensive Statistics:")
    for row in defensive_data:
        print(row)

except mysql.connector.Error as e:
    print(f"Error: {e}")

finally:
    # Close the cursor and connection
    cursor.close()
    conn.close()
