FROM golang:1.3
RUN apt-get update && apt-get install -y libjpeg-dev libswscale-dev
RUN go get github.com/pixiv/go-thumber/thumberd
RUN go install -ldflags '-extldflags=-fno-PIC' github.com/pixiv/go-thumber/thumberd
CMD /go/bin/thumberd -local 0.0.0.0:8000
