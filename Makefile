#https://groups.google.com/forum/#!topic/protobuf/YwQ9AjHl_78

.PHONY: generate-grpc-stub
generate-grpc-stub:
	protoc --go_out=plugins=grpc,paths=source_relative:. services/hello.proto
	protoc --go_out=plugins=grpc,paths=source_relative:. types/hello.proto