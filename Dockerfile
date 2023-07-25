# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/engine/reference/builder/

ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION}-slim as base

# Prevents Python from writing pyc files.
ENV PYTHONDONTWRITEBYTECODE=1
# ENV POSTGRES_USER="postgres"
# ENV POSTGRES_PASSWORD="postgres"
# ENV POSTGRES_DB="imdb"
# ENV POSTGRES_PORT=5432

# Keeps Python from buffering stdout and stderr to avoid situations where
# the application crashes without emitting any logs due to buffering.
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Create a non-privileged user that the app will run under.
# See https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#user
# ARG UID=10001
# RUN adduser \
#     --disabled-password \
#     --gecos "" \
#     --home "/nonexistent" \
#     --shell "/sbin/nologin" \
#     --no-create-home \
#     --uid "${UID}" \
#     appuser

COPY requirements_python3.8.txt .
# COPY ./imdb-benchmark/schematext.sql /docker-entrypoint-initdb.d

# Download dependencies as a separate step to take advantage of Docker's caching.
# Leverage a cache mount to /root/.cache/pip to speed up subsequent builds.
# Leverage a bind mount to requirements.txt to avoid having to copy them into
# into this layer.
RUN --mount=type=cache,target=/root/.cache/pip \
    --mount=type=bind,source=requirements_python3.8.txt,target=requirements_python3.8.txt 
RUN apt update && apt install -y build-essential libssl-dev libffi-dev openssl && \
    apt install -y libpq-dev gcc python3-dev && python -m ensurepip --default-pip && \
    python -m pip install spflow --no-deps && \
    python -m pip install -r requirements_python3.8.txt

# Switch to the non-privileged user to run the application.
# USER appuser

# Copy the source code into the container.
COPY . .

# Expose the port that the application listens on.
EXPOSE 5432

# Run the application.
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# CMD python3 maqp.py --generate_hdf \
#     --dataset imdb-light \
#     --csv_seperator , \
#     --csv_path imdb-benchmark \
#     --hdf_path imdb-benchmark/gen_single_light \
#     --max_rows_per_hdf_file 100
