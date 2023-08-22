# trust-agent
Docker-based trust agent

# To build a new image

`docker image build --tag rdautov/trust-agent:0.1 --build-arg VERSION=0.1 .`

`docker image build --tag rdautov/trust-agent:arm32 --build-arg VERSION=0.1 -f Dockerfile.arm32 .`

`docker image build --tag rdautov/trust-agent:arm64 --build-arg VERSION=0.1 -f Dockerfile.arm64 .`

# To run the trust agent (public Mosquitto broker tcp://test.mosquitto.org:1883)

`docker run --name trust-agent --rm -v /var/run/docker.sock:/var/run/docker.sock:ro -v /var/lib/dpkg/:/var/lib/dpkg/ --user telegraf:$(stat -c '%g' /var/run/docker.sock) rdautov/trust-agent:0.1`

`docker run --name trust-agent --rm -v /var/run/docker.sock:/var/run/docker.sock:ro -v /var/lib/dpkg/:/var/lib/dpkg/ --user telegraf:$(stat -c '%g' /var/run/docker.sock) rdautov/trust-agent:arm32`

`docker run --name trust-agent --rm -v /var/run/docker.sock:/var/run/docker.sock:ro -v /var/lib/dpkg/:/var/lib/dpkg/ --user telegraf:$(stat -c '%g' /var/run/docker.sock) rdautov/trust-agent:arm64`

# To run the trust agent together with a local Mosquitto broker container

`docker-compose up -d`
