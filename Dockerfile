FROM node:6.14

RUN wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add - && \
apt-get update && \
apt-get install apt-transport-https

RUN echo "deb http://packages.cloudfoundry.org/debian stable main" | tee /etc/apt/sources.list.d/cloudfoundry-cli.list && \
apt-get update && \
apt-get install cf-cli

WORKDIR /build

ENTRYPOINT [ "/bin/bash" ]