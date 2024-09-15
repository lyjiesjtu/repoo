#!/bin/bash

LOGFILE="system_data.log"
echo "Timestamp, CPU Temp (Core 0), CPU Temp (Core 4), CPU Temp (Core 8), NVMe Temp" > $LOGFILE

while true; do
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

    # 获取 CPU 温度数据
    CPU_TEMP_CORE0=$(sensors | grep 'Core 0' | awk '{print $2}' | sed 's/+//; s/°C//')
    CPU_TEMP_CORE4=$(sensors | grep 'Core 4' | awk '{print $2}' | sed 's/+//; s/°C//')
    CPU_TEMP_CORE8=$(sensors | grep 'Core 8' | awk '{print $2}' | sed 's/+//; s/°C//')

    # 获取 NVMe 温度数据
    NVME_TEMP=$(sensors | grep 'nvme-pci-0100' -A 2 | grep 'Sensor 1' | awk '{print $2}' | sed 's/+//; s/°C//')

    echo "$TIMESTAMP, $CPU_TEMP_CORE0, $CPU_TEMP_CORE4, $CPU_TEMP_CORE8, $NVME_TEMP" >> $LOGFILE

    sleep 1
done
