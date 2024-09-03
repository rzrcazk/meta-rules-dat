#!/bin/bash

# 定义文件路径
JSON_FILE='../geo/geosite/geolocation-!cn.json'
SRS_FILE='../geo/geosite/geolocation-!cn.srs'

# 检查 cn.json 文件是否存在
if [ -f "$JSON_FILE" ]; then
    # 编译 JSON 文件为 SRS 文件，并覆盖已存在的 SRS 文件
    sing-box rule-set compile --output "$SRS_FILE" "$JSON_FILE"
    echo "Successfully compiled $JSON_FILE to $SRS_FILE."
else
    echo "Error: $JSON_FILE does not exist."
    exit 1
fi
