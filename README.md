# Drone Lambda Plugin

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

To be writte...
