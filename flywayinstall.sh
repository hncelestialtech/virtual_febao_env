#!/bin/bash

# 切换到 root 用户
su root

# 复制 flyway-5.2.4 到 /usr/local
cp -r flyway-5.2.4 /usr/local

# 设置 /usr/local/flyway-5.2.4 的权限为 755
chmod -R 755 /usr/local/flyway-5.2.4

# 使用 sed 添加环境变量到 /etc/profile，避免直接使用 vi 操作文件
sed -i '/flyway-5.2.4/d' /etc/profile
echo 'export PATH=$PATH:/usr/local/flyway-5.2.4' >> /etc/profile

# 使环境变量生效
source /etc/profile