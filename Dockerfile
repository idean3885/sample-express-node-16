FROM node:16.15.1-alpine AS node

FROM alpine:3.18

RUN apk update && \
    apk upgrade && \
    apk add git && \
    apk add ca-certificates && \
    apk add curl && \
    apk add bash

COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/share /usr/local/share
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin

WORKDIR /app
COPY . /app
RUN npm install

EXPOSE 3000

ENTRYPOINT npm run start