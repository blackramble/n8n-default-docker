FROM n8nio/n8n:2.6.0

# 切換到 root 安裝套件
USER root

# 安裝 dayjs 到 n8n 的 node_modules 目錄，讓 Code 節點可以 require
WORKDIR /usr/local/lib/node_modules/n8n
RUN npm install dayjs

# 切換回 node 用戶確保安全
USER node