#!/bin/bash

# 输出文件路径
OUTPUT_FILE="system_data_record.txt"

# 每秒采集一次数据，直到用户手动停止
while true
do
    # 记录当前时间戳
    echo "====================" >> $OUTPUT_FILE
    echo "Timestamp: $(date '+%Y-%m-%d %H:%M:%S')" >> $OUTPUT_FILE
    
    # 记录 powertop 的数据 (将结果保存为文本)
    echo "---- powertop data ----" >> $OUTPUT_FILE
    sudo powertop --time=1 --csv=powertop_output.csv 2>/dev/null
    cat powertop_output.csv >> $OUTPUT_FILE
    
    # 记录 i7z 的数据 (捕获运行时输出)
    echo "---- i7z data ----" >> $OUTPUT_FILE
    sudo i7z | tee -a $OUTPUT_FILE | head -n 20

    # 每秒采集一次
    sleep 1
done

