#!/bin/bash
# 计算某天日志的行数和总大小
total_size=0;
total_line=0;
file_list=`find /data1/logs/pay.huixinglicai.com -name "*20170318.log.gz"`

for file_name in $file_list
do
	tmp_line=`zcat $file_name | wc -l`;
	size_line=`du $file_name`
	tmp_size=`echo $size_line | cut -d " " -f 1`;
	total_line=`expr $total_line + $tmp_line`;
	total_size=`expr $total_size + $tmp_size`;
done
echo "总行数：" $total_line;
echo "总大小：" $total_size;
