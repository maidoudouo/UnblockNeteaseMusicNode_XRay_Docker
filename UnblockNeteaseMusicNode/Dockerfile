FROM alpine:latest as builder

LABEL maintainer="maidoudouo <maidoudouo@outlook.com>"
LABEL stage=builder

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk update && \
    apk add git

RUN git clone https://github.com/1715173329/UnblockNeteaseMusic.git /UnblockNeteaseMusic
# RUN git clone https://hub.fastgit.org/1715173329/UnblockNeteaseMusic.git /UnblockNeteaseMusic

FROM alpine:latest

LABEL maintainer="maidoudouo <maidoudouo@outlook.com>"

COPY --from=builder /UnblockNeteaseMusic /UnblockNeteaseMusic
WORKDIR /UnblockNeteaseMusic

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk add --no-cache nodejs

COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["entrypoint.sh"]