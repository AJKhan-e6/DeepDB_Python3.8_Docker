import os
import psycopg2

# Database connection settings
db_params = {
    'host': 'db',
    'user': 'postgres',
    'password': 'postgres',
    'dbname': 'imdb',
    'port': '5432',
}

db_name = "imdb"
csv_folder = "./imdb-benchmark/"

def fill_tables():
    conn = psycopg2.connect(**db_params)



    # Loop through all CSV files in the folder
    for file in os.listdir(csv_folder):
        if file.endswith(".csv"):
            table_name = os.path.splitext(file)[0]

            # Create a cursor to execute SQL commands
            cursor = conn.cursor()

            # Construct the COPY command and execute it
            try:
                copy_command = f"COPY {table_name} FROM STDIN WITH (FORMAT csv, HEADER false, ESCAPE '\\', ENCODING 'utf-8', QUOTE '\"');"
                with open(os.path.join(csv_folder, file), 'r') as csv_file:
                    cursor.copy_expert(copy_command, csv_file)
                conn.commit()
                print(f"Data imported into table {table_name}")
            except Exception as e:
                conn.rollback()
                print(f"Error: Unable to import data into table {table_name} - {e}")

            # Close the cursor
            cursor.close()

    # Close the connection to the database
    conn.close()

if __name__ == "__main__":
    fill_tables()
