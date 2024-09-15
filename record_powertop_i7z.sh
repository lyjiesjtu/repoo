#!/bin/bash

# 输出文件路径
OUTPUT_FILE="system_data_record.txt"

# 每秒采集一次数据，直到用户手动停止
while true
do
    # 记录当前时间戳
    echo "====================" >> $OUTPUT_FILE
    echo "Timestamp: $(date '+%Y-%m-%d %H:%M:%S')" >> $OUTPUT_FILE
    
    # 记录 powertop 的数据
    echo "---- powertop data ----" >> $OUTPUT_FILE
    sudo powertop --time=1 --html=powertop_output.html
    cat powertop_output.html >> $OUTPUT_FILE
    
    # 记录 i7z 的数据 (需要手动中断 i7z)
    echo "---- i7z data ----" >> $OUTPUT_FILE
    sudo i7z -w >> $OUTPUT_FILE

    # 每秒采集一次
    sleep 1
done
