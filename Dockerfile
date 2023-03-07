FROM alpine:3.17.2

WORKDIR /infinix/server
COPY . .

RUN apk update && \
    apk upgrade && \
    apk add \
    clang \
    clang-dev \
    alpine-sdk \
    python3 \
    cmake  \
    ninja  \
    mold

RUN cmake -S standalone -B build/standalone
RUN cmake --build build/standalone

CMD ["./build/standalone/serv"]