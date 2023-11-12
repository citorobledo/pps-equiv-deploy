#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE USER postgres WITH PASSWORD 'admin';

  CREATE DATABASE equivalencias;
  GRANT ALL PRIVILEGES ON DATABASE equivalencias TO postgres;

  CREATE DATABASE unahur_desapp_test;
  GRANT ALL PRIVILEGES ON DATABASE unahur_desapp_test TO unahur_desapp;
EOSQL
