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

# For filling up the tables using the csv files 
db_name = "imdb"
csv_folder = "/imdb-benchmark"

# SQL commands to create tables
create_table_query = '''
    CREATE TABLE cast_info (
    id integer NOT NULL PRIMARY KEY,
    person_id integer NOT NULL,
    movie_id integer NOT NULL,
    person_role_id integer,
    note character varying,
    nr_order integer,
    role_id integer NOT NULL
    );

    CREATE TABLE movie_companies (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    company_id integer NOT NULL,
    company_type_id integer NOT NULL,
    note character varying
    );

    CREATE TABLE movie_info_idx (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info character varying NOT NULL,
    note character varying(1)
    );

    CREATE TABLE movie_keyword (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    keyword_id integer NOT NULL
    );

    CREATE TABLE title (
    id integer NOT NULL PRIMARY KEY,
    title character varying NOT NULL,
    imdb_index character varying(5),
    kind_id integer NOT NULL,
    production_year integer,
    imdb_id integer,
    phonetic_code character varying(5),
    episode_of_id integer,
    season_nr integer,
    episode_nr integer,
    series_years character varying(49),
    md5sum character varying(32)
    );

    CREATE TABLE movie_info (
    id integer NOT NULL PRIMARY KEY,
    movie_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info character varying NOT NULL,
    note character varying
    );

'''

def create_tables():
    conn = psycopg2.connect(**db_params)

    try:
        # Connect to the database
        cursor = conn.cursor()

        # Execute the SQL commands to create tables
        cursor.execute(create_table_query)
        # Add more table creation queries here if needed

        # Commit the changes
        conn.commit()
        print("Tables created successfully")

        # Loop through all CSV files in the folder
        for file in os.listdir(csv_folder):
            if file.endswith(".csv"):
                table_name = os.path.splitext(file)[0]

                 # Construct the COPY command and execute it
                try:
                    copy_command = f"COPY {table_name} FROM %s WITH (FORMAT csv, HEADER false, ESCAPE '\\', ENCODING 'utf-8', QUOTE '\"');"
                    with open(os.path.join(csv_folder, file), 'r') as csv_file:
                        cursor.copy_expert(copy_command, csv_file)
                    conn.commit()
                    print(f"Data imported into table {table_name}")
                except Exception as e:
                    conn.rollback()
                    print(f"Error: Unable to import data into table {table_name} - {e}")

    except (Exception, psycopg2.Error) as error:
        print("Error while creating tables:", error)

    finally:
        # Close the database connection
        if conn:
            cursor.close()
            conn.close()

if __name__ == "__main__":
    create_tables()
