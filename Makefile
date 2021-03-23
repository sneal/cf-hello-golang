build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o out/cf-hello-golang main.go

run:
	go run main.go

push: build 
	cf push
