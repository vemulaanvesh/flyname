#run

docker run --rm -v /my/sqldir:/flyway/sql -v /my/confdir:/flyway/conf -v /my/jardir:/flyway/jars flyway/flyway migrate