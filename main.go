package main

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func main() {
	mustConnectDB()

	app := echo.New()
	app.GET("/", func(c echo.Context) error {
		return c.JSON(http.StatusOK, map[string]string{
			"hello": "world",
		})
	})

	app.Logger.Fatal(app.Start(":9000"))
}
