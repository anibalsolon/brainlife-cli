FROM node:14
ARG version
RUN npm install -g brainlife@$version

RUN apt-get update && apt-get install -y --no-install-recommends jq && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["bl"]
