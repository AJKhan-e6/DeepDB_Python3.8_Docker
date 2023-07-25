#!/bin/bash

# for setting up the postgres database 
# export POSTGRES_USER=postgres
# export POSTGRES_PASSWORD=postgres
# export POSTGRES_DB=imdb
# export POSTGRES_PORT=5432

# # Start the PostgreSQL server
# service postgresql start

# systemctl status postgresql

# apt -y install postgresql

# # Wait for PostgreSQL server to be ready
# echo "Waiting for PostgreSQL server to start..."
# until psql -h localhost -U postgres -c '\q'; do
#     sleep 1
# done

# # Create the 'imdb' database
# psql -h localhost -U postgres -c "CREATE DATABASE imdb;"

# Run the Python script to create tables
python3 create_tables.py

# Run the Python script to fill tables 
python3 fill_tables.py

# Keep the container running
tail -f /dev/null

# DB_NAME="imdb"
# CSV_FOLDER="/imdb-benchmark"

# for file in "$CSV_FOLDER"/*.csv; do
#     table_name=$(basename "$file" .csv)
#     psql -U postgres -d "$DB_NAME" -c "COPY $table_name FROM '$file' WITH (FORMAT csv, HEADER false, ESCAPE '\\', ENCODING 'utf-8', QUOTE '\"');"
# done


# for running the python script of DeepDB 
python3 maqp.py --generate_hdf \
    --generate_sampled_hdfs \
    --generate_ensemble \
    --evaluate_cardinalities \
    --samples_per_spn 100000000 100000000 100000000 100000000 \
    --ensemble_strategy relationship \
    --ensemble_path imdb-benchmark/spn_ensembles \
    --database_name imdb \
    --post_sampling_factor 10 10 5 1 1 \
    --dataset imdb-light \
    --csv_seperator , \
    --csv_path imdb-benchmark \
    --hdf_path imdb-benchmark/gen_single_light \
    --max_rows_per_hdf_file 100000000 \
    --hdf_sample_size 10000 \
    --max_variants 1 \
    --target_path ./baselines/cardinality_estimation/results/deepDB/imdb_light_model_based_budget_5.csv \
    --ensemble_location imdb-benchmark/spn_ensembles/ensemble_relationships_imdb-light_100000000.pkl \
    --query_file_location ./benchmarks/job-light/sql/job_light_queries.sql \
    --ground_truth_file_location ./benchmarks/job-light/sql/job_light_true_cardinalities.csv \
    # --pairwise_rdc_path imdb-benchmark/spn_ensembles/pairwise_rdc.pkl \
    # --rdc_spn_selection
    # --database_name imdb \
    # --ensemble_budget_factor 5 \
    # --ensemble_max_no_joins 3 \
    

# python3 maqp.py --generate_hdf \
#     --dataset imdb-light \
#     --csv_seperator , \
#     --csv_path imdb-benchmark \
#     --hdf_path imdb-benchmark/gen_single_light \
#     --max_rows_per_hdf_file 10000 \

# python3 maqp.py --generate_sampled_hdfs \
#     --dataset imdb-light \
#     --hdf_path imdb-benchmark/gen_single_light \
#     --max_rows_per_hdf_file 10000 \
#     --hdf_sample_size 100 \


# python3 maqp.py --generate_ensemble
#     --dataset imdb-light 
#     --samples_per_spn 100 100 100 100 100
#     --ensemble_strategy rdc_based
#     --hdf_path ../imdb-benchmark/gen_single_light
#     --max_rows_per_hdf_file 100
#     --samples_rdc_ensemble_tests 100
#     --ensemble_path ../imdb-benchmark/spn_ensembles
#     --database_name imdb
#     --post_sampling_factor 10 10 5 1 1
#     --ensemble_budget_factor 5
#     --ensemble_max_no_joins 3
#     --pairwise_rdc_path ../imdb-benchmark/spn_ensembles/pairwise_rdc.pkl


# python3 maqp.py --evaluate_cardinalities
#     --rdc_spn_selection
#     --max_variants 1
#     --pairwise_rdc_path ../imdb-benchmark/spn_ensembles/pairwise_rdc.pkl
#     --dataset imdb-light
#     --target_path ./baselines/cardinality_estimation/results/deepDB/imdb_light_model_based_budget_5.csv
#     --ensemble_location ../imdb-benchmark/spn_ensembles/ensemble_join_3_budget_5_10000000.pkl
#     --query_file_location ./benchmarks/job-light/sql/job_light_queries.sql
#     --ground_truth_file_location ./benchmarks/job-light/sql/job_light_true_cardinalities.csv