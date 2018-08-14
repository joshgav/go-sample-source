PACKAGE = github.com/Azure-Samples/azure-sdk-for-go-samples/apps/basic_web_app
PORT = 8080
HOST = localhost:$(PORT)

binary:
	mkdir -p out
	go build -o out/server .
	./out/server &
	curl http://$(HOST)/?name=josh && echo ""
	pkill --euid $(USER) --newest --exact server
