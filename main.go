package main

import (
	"ecommerce/internal/handler"
	"ecommerce/internal/routes"
	"ecommerce/internal/service"
	"fmt"
	"log"
	"os"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
)

func main() {
	if err := godotenv.Load();err != nil{
		log.Println("Error loading env")
		log.Fatalln("Error loading env")
	}

	handlers := prepare()

	srv := gin.Default()

	routes.Build(srv, handlers)
	srv.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "Hello world!",
		})
	})

	port := os.Getenv("PORT")

	if port == "" {
		port = "8080"
	}

	if err:= srv.Run(fmt.Sprintf(":%s", port));err != nil{
		log.Println("Error running gin server: ", err)
		log.Fatalln("Error running gin server: ", err)
	}
}

func prepare()(handlers routes.Handlers){
	testService := service.NewTestService()
	test:= handler.NewTestHandler(handler.TestHandlerConfig{
		TestService: testService,
	})

	handlers = routes.Handlers{
		Test: test,
	}
	return
}