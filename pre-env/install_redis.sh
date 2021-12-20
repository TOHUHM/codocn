mkdir -p /opt/codo/codo-redis && cd /opt/codo/codo-redis
cat >docker-compose.yml <<EOF
redis:
    image: registry.cn-shanghai.aliyuncs.com/ss1917/redis:4
    ports:
      - 6379:6379
    restart: unless-stopped
    command: redis-server --requirepass ${REDIS_PASSWORD}
EOF

#启动
docker-compose up -d
