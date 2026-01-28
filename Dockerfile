FROM n8nio/n8n:1.24.1 

# 切換到 root 安裝套件
USER root
RUN npm install -g dayjs

# 切換回 node 用戶確保安全
USER node