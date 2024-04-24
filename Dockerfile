FROM golang:alpine

WORKDIR /app
COPY . .

RUN go mod download

RUN go build -o /app/hello
EXPOSE 8000

CMD [ "./hello" ]