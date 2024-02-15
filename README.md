# db-task
This is Docker repo for db-task using postgresql for muuse hiring process

# How to run
- Copy and rename .env.example file into .env
- run code bellow in terminal of root project
  - Create Image and Container  
    ```
    docker-composer up -d
    ```
  - Create network
    ```
    docker network create muuse_network
    ```
  - Connect to network
    ```
    docker network connect muuse_network db-task-pg_superset_dev-1
    ```
- if tables or records are not populated, run this
  ```
    docker exec -i db-task   psql -U postgres -d reporting < runtime/docker-entrypoint-initdb.d/002_load_data.sql
  ```
