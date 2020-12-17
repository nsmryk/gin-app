# Dockerfile
FROM golang:latest

WORKDIR /gin-app

# Install dependency module
RUN go get github.com/go-sql-driver/mysql \
    && go get -u github.com/gin-gonic/gin \
    && go get github.com/gorilla/mux \
    && go get -u github.com/jinzhu/gorm \
    && go get github.com/gin-contrib/cors \
    && go get gopkg.in/ini.v1

ENV PATH $PATH:/gin-app

#CMD ["go run main.go"]
