#!/bin/bash
set -e

ASSETS_FOLDER="./public/assets"

# Install SQLC
go install github.com/sqlc-dev/sqlc/cmd/sqlc@v1.25.0

# Install Golang Migrate
go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@v4.17.0

# Install Air
go install github.com/cosmtrek/air@v1.49.0

# Install Templ
go install github.com/a-h/templ/cmd/templ@v0.2.543

# Install HTMX
curl --output-dir $ASSETS_FOLDER -sO https://unpkg.com/htmx.org@1.9.10/dist/htmx.min.js 