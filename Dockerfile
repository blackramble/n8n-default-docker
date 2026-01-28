FROM n8nio/n8n:2.6.0

# 切換到 root 安裝套件
USER root

# 安裝 dayjs 到獨立目錄，並設定 NODE_PATH 讓 n8n Code 節點可以 require
RUN mkdir -p /opt/custom-nodes && cd /opt/custom-nodes && npm init -y && npm install dayjs

ENV NODE_PATH=/opt/custom-nodes/node_modules

# 切換回 node 用戶確保安全
USER node