#!/bin/bash

#sed -i '1,50d' /var/log/httpd/access_log
#echo "">/var/log/libvirt/libvirtd.log
#echo "">/var/log/messages

logfile1="/var/log/messages"
logfile2="/var/log/libvirt/libvirtd.log"

#清除大于10GB的日志文件
echo "------begin clean log $(date)----------"

if [ `ls -l ${logfile1}|awk '{print $5}'` -gt $((1024*1024*1024*10)) ] 
 then 
 echo ""> ${logfile1}
fi

if [ -f ${logfile2} ] ; then
 if [ `ls -l ${logfile2}|awk '{print $5}'` -gt $((1024*1024*1024*10)) ] 
  then 
  echo ""> ${logfile2}
 fi
else 
  echo "there is no file ${logfile2}"
fi

echo "------end clean log $(date)----------"
