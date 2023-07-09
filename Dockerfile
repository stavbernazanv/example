# Start from the official golang image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the source code to the container
COPY /appengine-hello .

# Copy go modules files
COPY /go.* .

# Build the Go application
RUN go build -o app .

# Set the command to run the executable when the container starts
CMD ["./app"]
