# Build Image
FROM debian:bullseye-20241016-slim AS devcontainer
# WORKDIR /app

RUN <<EOF bash -ex
apt-get update -y
apt-get install -y --no-install-recommends wget ca-certificates
EOF

RUN <<EOF bash -ex
wget https://go.dev/dl/go1.23.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.23.3.linux-amd64.tar.gz
EOF

RUN <<EOF bash -ex
rm -rf /var/lib/lists
EOF

COPY . .


