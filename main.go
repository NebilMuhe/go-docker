package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()

	router.POST("/", func(ctx *gin.Context) {
		ctx.JSON(http.StatusOK, gin.H{"response": "welcome to the home page"})
	})

	router.Run(":8000")
}
