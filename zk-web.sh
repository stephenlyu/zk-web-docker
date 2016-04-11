#!/bin/bash

mkdir -p conf
: ${SERVER_PORT:=8080}

cat <<EOF > conf/zk-web-conf.clj
{
 :server-port ${SERVER_PORT}
 :users {"admin" "hello"}
 :default-node "${DEFAULT_NODE}"
}
EOF

export JAVA_OPTS="${JAVA_OPTS:--Xmx192m}"
exec lein trampoline run
