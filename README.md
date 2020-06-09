brew install go
brew install protobuf
go get -u github.com/golang/protobuf/protoc-gen-go

go mod init github.com/airztz/Protobuf4fun

https://groups.google.com/forum/#!topic/protobuf/YwQ9AjHl_78

protoc -I types types/hello.proto --go_out=plugins=grpc:types
protoc services/hello.proto --go_out=plugins=grpc:services

protoc -I . types/hello.proto --go_out=plugins=grpc:.
protoc -I . services/hello.proto --go_out=plugins=grpc:.
