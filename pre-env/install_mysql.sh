mkdir -p /opt/codo/codo-mysql&& cd /opt/codo/codo-mysql
cat >docker-compose.yml <<EOF
mysql:
  restart: unless-stopped
  image: registry.cn-shanghai.aliyuncs.com/ss1917/mysql:5.7
  volumes:
    - /data/mysql:/var/lib/mysql
    - /data/mysql_conf:/etc/mysql/conf.d
  ports:
    - "3306:3306"
  environment:
    - MYSQL_ROOT_PASSWORD=${MYSQL_PASSWORD}
EOF

#启动 
docker-compose up -d
# 安装MySQL客户端
yum install mysql -y  

if [ $? == 0 ];then
    echo -e "\033[32m [INFO]: mysql install success. \033[0m"
    echo -e "\033[32m [INFO]: 最好提高下MySQL的最大链接数. \033[0m"
    echo -e "\033[32m [INFO]: mysql -h127.0.0.1 -uroot -p${MYSQL_PASSWORD} \033[0m"
else
    echo -e "\033[31m [ERROR]: mysql57 install faild \033[0m"
    exit -3
fi
