FROM clojure:alpine
MAINTAINER Tim Harper <tim.harper@vivint.com>

WORKDIR /

RUN apk add --no-cache git
RUN git clone https://github.com/qiuxiafei/zk-web.git \
  && (cd zk-web; lein deps)

WORKDIR /zk-web

ADD zk-web.sh /zk-web

EXPOSE 8080 

ENTRYPOINT /zk-web/zk-web.sh
