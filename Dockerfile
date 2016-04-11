FROM clojure:latest
MAINTAINER Tim Harper <tim.harper@vivint.com>

WORKDIR /

RUN git clone https://github.com/qiuxiafei/zk-web.git \
  && (cd zk-web; lein deps)

WORKDIR /zk-web

EXPOSE 8080

ENTRYPOINT lein run