#!/bin/bash

# 要处理的脚本文件路径
script_file="febao_deploy.sh"

# 备份原始脚本
cp "$script_file" "${script_file}.bak"

# 使用 sed 进行替换
sed -i 's/systemctl start mysql;/\/etc\/init.d\/mysql start;/g' "$script_file"
sed -i 's/systemctl stop mysql;/\/etc\/init.d\/mysql stop;/g' "$script_file"

echo "脚本处理完成，原始脚本已备份为 ${script_file}.bak"
