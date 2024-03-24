package main

import (
	"github.com/gin-gonic/gin"
)
var Router * gin.Engine
func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "Hello world!",
		})
	})
	r.GET("/test", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "test 123",
		})
	})
	r.Run()
}