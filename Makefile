all: generate

generate:
	protoc -I proto proto/sso/sso.proto --go_out=./gen/go --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative

generateAPI:
	protoc -I proto proto/adder/adder.proto --go_out=./gen/go --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative
	
rebuild: clean all

clean:
	rm -rf ./gen/go/sso/*
	rm -rf ./gen/go/adder/*