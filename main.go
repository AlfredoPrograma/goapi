package main

import (
	"github.com/alfredoprograma/goapi/templates/home"
	"github.com/labstack/echo/v4"
)

func main() {
	mustConnectDB()

	app := echo.New()
	app.Static("/public", "public")

	app.GET("/", func(c echo.Context) error {
		return Render(home.IndexTemplate(), c)

	})

	app.Logger.Fatal(app.Start(":9000"))
}
