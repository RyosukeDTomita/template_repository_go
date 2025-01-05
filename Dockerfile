FROM golang:1.23.4-bookworm AS devcontainer
WORKDIR /app

ENV GOPATH=$HOME/go
ENV PATH=$GOPATH/bin:$PATH

COPY . .

RUN <<EOF bash -ex
go install golang.org/x/tools/cmd/goimports@latest
go install golang.org/x/tools/cmd/goimports@latest
EOF

RUN --mount=type=cache,target=~/go/pkg/mod \
    make


FROM gcr.io/distroless/static-debian12:latest AS run
WORKDIR /app
COPY --chown=nonroot:nonroot --from=devcontainer /app/bin/* /app/
USER nonroot
ENTRYPOINT ["/app/go-playground"]
