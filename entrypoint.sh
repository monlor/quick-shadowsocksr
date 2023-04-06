#!/bin/sh

set -eu

echo "生成配置..."

cat > /app/config.json <<-EOF
{
    "server": "0.0.0.0",
    "server_ipv6": "::",
    "server_port": ${PORT:-38686},
    "local_address": "127.0.0.1",
    "local_port": 1080,
    "password":"${PASSWORD:-123456}",
    "timeout": 300,
    "method": "chacha20-ietf",
    "protocol": "auth_chain_a",
    "protocol_param": "",
    "obfs": "tls1.2_ticket_auth",
    "obfs_param": "cloudfront.net",
    "redirect": "",
    "dns_ipv6": false,
    "fast_open": true,
    "workers": 1
}
EOF

cat /app/config.json

echo "启动服务..."
ssserver -c config.json