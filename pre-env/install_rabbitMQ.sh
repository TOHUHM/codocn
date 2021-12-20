mkdir -p /opt/codo/codo-mq && cd /opt/codo/codo-mq 
cat >docker-compose.yml <<EOF
rabbitmq:
    restart: unless-stopped
    image: registry.cn-shanghai.aliyuncs.com/ss1917/rabbitmq:3-management
    environment:
      - RABBITMQ_DEFAULT_USER=${MQ_USER}
      - RABBITMQ_DEFAULT_PASS=${MQ_PASSWORD}
    ports:
      - "15672:15672"
      - "5672:5672"
EOF

#启动
docker-compose up -d
