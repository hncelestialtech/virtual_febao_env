#!/bin/bash

# 切换到指定目录
cd /home/febao/2.15.3/febao_installer_V2.15_20240130142228/installer

# 切换到 febao 用户
su febao

# 执行安装命令
./install --install=all --env_file=env_files/febao.json --dir=/home/febao/2.15.3 --proxy_dir=/home/febao/2.15.3/febao_proxy_qxkj_2.15_qx_test_yd_386_V2.15.3_202402221332