# Use the official Golang image as the parent image
FROM golang:1.19

# Set the working directory to the app directory in the container
WORKDIR /app

# Copy the Go module files to the working directory
COPY go.mod .
COPY go.sum .

# Download and install Go module dependencies
RUN go mod download

# Copy the app code to the working directory
COPY . .

# Build the app binary
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

# Expose port 8080
EXPOSE 8080

# Run the app binary
CMD ["./app"]
