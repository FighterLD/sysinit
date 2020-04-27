#!bin/bashi


#获取主机名
Hostname=`hostname`

#判断zabbix用户是否存在，不存在则创建
id zabbix &>/dev/null
if [ ! $? -eq 0 ];then
   useradd  -M -s /sbin/nologin zabbix
fi

#安装Zabbix agent
rpm -ivh /opt/tools/zabbix-agent-4.0.2-1.el7.x86_64.rpm

#备份原配置文件
cp /etc/zabbix/zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf.rpmsave

#修改配置文件zabbix_agentd.conf
sed -i 's/^Server=127.0.0.1/Server=172.16.55.6/g' /etc/zabbix/zabbix_agentd.conf
sed -i 's/^ServerActive=127.0.0.1/ServerActive=172.16.55.6/g' /etc/zabbix/zabbix_agentd.conf
sed -i 's/# UnsafeUserParameters\=0/UnsafeUserParameters\=1/g' /etc/zabbix/zabbix_agentd.conf
sed -i "s/Hostname=Zabbix server/Hostname=${Hostname}/g" /etc/zabbix/zabbix_agentd.conf
