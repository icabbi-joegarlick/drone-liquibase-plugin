rm -rf main

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -installsuffix cgo -o main .

docker build --rm=true -t jcbjoe/drone-liquibase-plugin .