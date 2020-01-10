version: '3'
services:
  flyway:
    image: flyway/flyway
    command: -url=jdbc:mysql://db -schemas=myschema -user=root -password=anvesh -connectRetries=60 migrate
    volumes:
      - .:/flyway/sql
    depends_on:
      - db
  db:
    image: mysql
    environment:
      - MYSQL_ROOT_PASSWORD=anvesh
    command: --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
    ports:
      - 3306:3306
