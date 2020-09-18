docker rm liquidbase-drone
docker run --name liquidbase-drone \
-e PLUGIN_CHANGELOGFILE=changelog.sql \
-e PLUGIN_DB_HOST=192.168.2.25 \
-e PLUGIN_DB_PORT=3306 \
-e PLUGIN_DB_USERNAME=root \
-e PLUGIN_DB_PASSWORD=Password01 \
-e PLUGIN_DB_TYPE=mariadb \
-e PLUGIN_DB_DATABASE=Test \
-v $(pwd):$(pwd) \
-w $(pwd) \
--privileged \
jcbjoe/drone-liquibase-plugin:latest