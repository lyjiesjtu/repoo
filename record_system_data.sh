#!/bin/bash

# 设置日志文件路径
LOGFILE="system_data.log"

# 打印标题到日志文件
echo "Timestamp, CPU Temp (C), GPU Temp (C), Voltage (mV), CPU Frequency (MHz), Power Consumption (W)" > $LOGFILE

while true; do
    # 获取当前时间戳
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    
    # 获取传感器数据
    CPU_TEMP=$(sensors | grep 'Tctl' | awk '{print $2}' | sed 's/+//; s/°C//')
    GPU_TEMP=$(sensors | grep 'edge' | awk '{print $2}' | sed 's/+//; s/°C//')
    VOLTAGE=$(sensors | grep 'vddgfx' | awk '{print $2}' | sed 's/ mV//')

    # 获取 CPU 频率
    CPU_FREQ=$(sudo i7z | grep 'CPU Frequency' | awk '{print $4}' | sed 's/ MHz//')

    # 获取功耗数据
    POWER_CONSUMPTION=$(sudo powertop -d 1 -t 1 | grep 'Power est' | awk '{print $3}' | sed 's/W//')

    # 将数据写入日志文件
    echo "$TIMESTAMP, $CPU_TEMP, $GPU_TEMP, $VOLTAGE, $CPU_FREQ, $POWER_CONSUMPTION" >> $LOGFILE

    # 等待 1 秒
    sleep 1
done
