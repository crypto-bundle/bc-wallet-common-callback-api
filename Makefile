proto:
	$(eval schema_path=./pkg/schema/)
	$(eval go_out_path=./pkg/proto/callbackevents)

	protoc -I $(schema_path) \
        --go_out $(go_out_path) \
		--go_opt paths=source_relative \
        --go-grpc_out $(go_out_path) \
		--go-grpc_opt paths=source_relative \
        --grpc-gateway_out $(go_out_path) \
		--grpc-gateway_opt paths=source_relative \
        --grpc-gateway_opt generate_unbound_methods=true \
        --openapiv2_out=logtostderr=true:./docs/api/ \
        --doc_out=./docs/api/callbackevents/ \
		--doc_opt=markdown,$@.md \
        $(schema_path)*.proto

.PHONY: proto