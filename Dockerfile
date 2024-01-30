FROM golang:1.21-alpine

WORKDIR /app

COPY ./ ./

# Install hot reload lib
RUN go install github.com/githubnemo/CompileDaemon@latest
RUN go mod tidy
 
ENTRYPOINT CompileDaemon --build="go build -o bin/app" -command="./bin/app" -build-dir="/app"
