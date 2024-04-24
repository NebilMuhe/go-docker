FROM golang:1.21-alpine3.18

WORKDIR /app
COPY ./go.* ./

RUN go mod download
COPY . .
# RUN go build -o /app/hello
EXPOSE 8000

CMD [ "go","run","main.go" ]