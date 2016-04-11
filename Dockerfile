FROM clojure:latest
MAINTAINER Tim Harper <tim.harper@vivint.com>

WORKDIR /

RUN git clone https://github.com/qiuxiafei/zk-web.git \
  && (cd zk-web; lein deps)

WORKDIR /zk-web

ADD zk-web.sh /zk-web

EXPOSE 8080

ENTRYPOINT /zk-web/zk-web.sh