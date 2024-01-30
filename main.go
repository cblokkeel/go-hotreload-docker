package main

import (
	"net/http"
)

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8000", nil)
}

func handler(w http.ResponseWriter, _ *http.Request) {
	w.Write([]byte("hot reloading works well"))
}
