package main

import (
	"context"
	"log"
	"os"

	"github.com/jackc/pgx/v5"
)

func mustConnectDB() *pgx.Conn {
	ctx := context.Background()
	db, err := pgx.Connect(ctx, os.Getenv("POSTGRES_DATASOURCE"))

	if err != nil {
		log.Fatalln(err)
	}

	return db
}
