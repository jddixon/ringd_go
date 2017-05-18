all:	ring_data.pb.go 

ring_data.pb.go: ring_data.proto
	mkdir -p _pb
	protoc --go_out=_pb $<
	cat _pb/$@\
	|gofmt >$@
	rm -rf _pb
