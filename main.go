package main

import (
    "fmt"
	"log"
	"os"
	"os/exec"
)

func main() {
	fmt.Println("test")
	var changelogFile = os.Getenv("PLUGIN_CHANGELOGFILE")
	var host = os.Getenv("PLUGIN_DB_HOST")
	var port = os.Getenv("PLUGIN_DB_PORT")
	var username = os.Getenv("PLUGIN_DB_USERNAME")
	var password = os.Getenv("PLUGIN_DB_PASSWORD")
	var databaseType = os.Getenv("PLUGIN_DB_TYPE")
	var database = os.Getenv("PLUGIN_DB_DATABASE")
	out, err := exec.Command("/liquibase/liquibase", "--changeLogFile=" + changelogFile, "--username=" + username, "--password=" + password, "--url=jdbc:" + databaseType + "://" + host + ":" + port + "/" + database, "update").Output()
	if err != nil {
		fmt.Printf("%s", out)
		log.Fatal(err)
	}
	fmt.Printf("%s", out)
}