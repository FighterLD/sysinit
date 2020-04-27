#!/bin/bash

Device=$1
DISK=$2

case $DISK in 

    rrqm)
        iostat -dxk 1 2|grep "\b$Device\b" |tail -1| awk '{print $2}'
        ;;

    wrqm)
        iostat -dxk 1 2|grep "\b$Device\b" |tail -1| awk '{print $3}'
        ;;

    rps)
        iostat -dxk 1 2|grep "\b$Device\b" |tail -1|awk '{print $4}'
        ;;

    wps)
        iostat -dxk 1 2|grep "\b$Device\b" |tail -1|awk '{print $5}'
        ;;

    rKBps)
        iostat -dxk 1 2|grep "\b$Device\b" |tail -1|awk '{print $6}'
        ;;

    wKBps)
        iostat -dxk 1 2|grep "\b$Device\b" |tail -1|awk '{print $7}'
        ;;

    avgrq-sz)
        iostat -dxk 1 2|grep "\b$Device\b" |tail -1|awk '{print $8}'
        ;;

    avgqu-sz)
        iostat -dxk 1 2|grep "\b$Device\b" |tail -1|awk '{print $9}'
        ;;

    await)
        iostat -dxk 1 2|grep "\b$Device\b" |tail -1|awk '{print $10}'
        ;;

    svctm)
        iostat -dxk 1 2|grep "\b$Device\b" |tail -1|awk '{print $13}'
        ;;

    util)
        iostat -dxk 1 2|grep "\b$Device\b" |tail -1|awk '{print $14}'
        ;;

    DiskAvaliable)
        df -k | head -2 | grep "\b$Device\b" | awk '{print $4}'
        ;;

    *)
        echo -e "\e[033mUsage: sh $0 [rrqm|wrqm|rps|wps|rKBps|wKBps|avgqu-sz|avgrq-sz|await|svctm|util]\e[0m"
esac
