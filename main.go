package main

import (
	"context"
	"log"
)

func main() {
	db := mustConnectDB()

	if err := db.Ping(context.Background()); err != nil {
		log.Fatalln(err)
	}
}
