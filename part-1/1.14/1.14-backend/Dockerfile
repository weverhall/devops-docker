FROM golang:1.16

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000

WORKDIR /app

COPY ./material-applications/example-backend .

RUN go build

CMD ./server

# docker build -t back -f Dockerfile . && docker run -d -p 127.0.0.1:8080:8080 back