#!/bin/bash
su
echo "TIM专清脚本by热泉@3087899676"
timpid=`ps -ef | grep com.tencent.tim | grep -v magisk | awk '{print $2}'`
echo TIM-PID: $timpid
kill -9 $timpid
echo "已结束进程"
echo "开始进行TIM清理"
rm -rf /data/data/com.tencent.tim/cache/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tim/cache/*
echo "清除缓存完毕！"
echo "开始删除图片文件"
rm -rf /storage/emulated/0/Android/data/com.tencent.tim/Tencent/Tim/chatpic/chatimg/*
echo "清理图片文件完毕！"
echo "开始清除crashinfo"
rm -rf /data/data/com.tencent.tim/files/crashinfo/*
echo "清理crashinfo完毕！"
echo "如无报错所有项目清理完毕!"
exit 0