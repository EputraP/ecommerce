package routes

import (
	"ecommerce/internal/handler"

	"github.com/gin-gonic/gin"
)

type Handlers struct {
	Test *handler.TestHandler
}




func Build(srv *gin.Engine, h Handlers){
	test := srv.Group("test")

	test.GET("/",h.Test.Test)

}