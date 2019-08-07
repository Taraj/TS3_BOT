FROM alpine
RUN apk update
RUN apk upgrade
RUN apk add gcc
RUN apk add cmake
RUN apk add make
RUN apk add libc-dev
RUN apk add mysql-dev
WORKDIR /TS3_BOT
ENV PATH "${PATH}:/TS3_BOT"
COPY . .
RUN cmake .

ENTRYPOINT ["entrypoint.sh"]
CMD ["TS3_BOT"]