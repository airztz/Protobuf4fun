#https://groups.google.com/forum/#!topic/protobuf/YwQ9AjHl_78

.PHONY: generate-grpc-stub
generate-grpc-stub:
	protoc --go_out=plugins=grpc,paths=source_relative:. grpc/types/hello.proto
	rotoc --go_out=plugins=grpc,paths=source_relative:. grpc/services/hello.proto

.PHONY: generate-rest-stub
generate-rest-stub:
	protoc --go_out=plugins=grpc,paths=source_relative:. rest/types/hello.proto
	protoc -I. -I=third_party/googleapis --grpc-gateway_out=logtostderr=true,paths=source_relative:. --swagger_out=logtostderr=true:. --go_out=plugins=grpc,paths=source_relative:. rest/services/hello.proto