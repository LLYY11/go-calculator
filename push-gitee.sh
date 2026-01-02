#!/bin/bash
# 在 Gitee 创建仓库后执行

# 添加 Gitee 远程仓库
git remote add gitee https://gitee.com/你的用户名/calculator.git

# 推送到 Gitee
git push -u gitee main

# 然后在 Gitee 仓库设置中可以配置镜像同步到 GitHub
