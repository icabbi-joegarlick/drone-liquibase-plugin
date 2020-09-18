# Drone Liquibase Plugin

### The plugin uses the liquibase dockerfile found here: https://hub.docker.com/r/liquibase/liquibase/dockerfile as a base

## Build:

Build the binary:

```
go build main.go
```

## Docker:

Build the container:

```
docker build --rm=true -t jcbjoe/drone-liquibase-plugin .
```

## Usage:

```
docker run --name liquidbase-drone \
-e PLUGIN_CHANGELOGFILE=changelog.sql \
-e PLUGIN_DB_HOST=192.168.2.25 \
-e PLUGIN_DB_PORT=3306 \
-e PLUGIN_DB_USERNAME=root \
-e PLUGIN_DB_PASSWORD=\*\*\*\* \
-e PLUGIN_DB_TYPE=mariadb \
-e PLUGIN_DB_DATABASE=Test \
-v $(pwd):$(pwd) \
-w \$(pwd) \
--privileged \
jcbjoe/drone-liquibase-plugin:latest
```

###Example:

```
steps:
  - name: run-migration
    image: jcbjoe/drone-liquibase-plugin
    settings:
        CHANGELOGFILE=changelog.sql
        DB_HOST=localhost
        DB_PORT=3306
        DB_USERNAME=root
        DB_PASSWORD=***
        DB_TYPE=mariadb
        DB_DATABASE=Test
```
