#! /bin/bash
# to download codo code automatically
#前端代码：codo
#管理后端：codo-admin
#定时任务：codo-cron
#任务调度：codo-task
#资产管理：codo-cmdb
#配置中心：codo-kerrigan
#运维工具：codo-tools
#域名管理：codo-dns


url_list=("https://github.com/opendevops-cn/codo","https://github.com/opendevops-cn/codo-admin","https://github.com/opendevops-cn/codo-cron","https://github.com/opendevops-cn/codo-task","https://github.com/opendevops-cn/codo-cmdb","https://github.com/opendevops-cn/kerrigan","https://github.com/opendevops-cn/kerrigan","https://github.com/opendevops-cn/codo-tools","https://github.com/opendevops-cn/codo-dns")
IFS=','
for i in $url_list;do
   echo $i
   git clone $i
done
