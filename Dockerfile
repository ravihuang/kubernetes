FROM golang:1.6.4

RUN go get -d k8s.io/kubernetes && \
    cd $GOPATH/src/k8s.io/kubernetes && \
    make
