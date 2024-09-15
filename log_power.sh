#!/bin/bash

# 输出文件
output_file="power_log.txt"

# 间隔时间（秒）
interval=5

echo "每隔 $interval 秒将电源值记录到 $output_file 文件中..."

while true; do
    # 获取电池状态
    power_info=$(upower -i $(upower -e | grep 'BAT') | grep -E 'percentage|energy')

    # 将时间戳和电源信息打印到文件中
    echo "$(date) - $power_info" >> $output_file

    # 等待指定的间隔时间
    sleep $interval
done
