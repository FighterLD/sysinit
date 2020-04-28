# Ansible 批量初始化 Centos 服务器
本项目是利用Ansible 对 Centos7系统批量初始化初始化使用；

## 功能模块
* 安装 Ceph

* 安装 Openstack

* 系统初始
   * 创建系统目录
   * 创建系统账号
   * 配置YUM源
   * 配置系统内核参数
   * 安装基础软件包
   * 禁用Selinux
   * 设置时区
   * 设置历史命令记录
   * 配置NTP
   * 配置LDAP

* 安装监控
   * 添加 Zabbix 监控(系统层面)
   * 添加 Prometheus 监控(业务层面)

* 批量修改主机密码
  
* 安装 Docker

* 安装 Mysql
  * 安装配置 Mysql 主从复制

* 安装 Postgresql

* 安装 Keepalive

* 安装 Redis

* 安装 Zookeeper

* 安装 RabbitMQ-Cluster

* 安装 Elasticsearch

* 安装 JDK


** 用法 **
* 初始化多台服务器，并且不安装prometheus监控

\`ansible-playbook -i hosts playbook/sysinit.yml -l 172.16.55.74,172.16.55.75,172.16.55.76  --skip-tag=prometheus\`

* 安装Mysql

\`ansible-playbook -i hosts playbook/mysql.yml -l 172.16.55.74,172.16.55.75 \`
