# Sử dụng image Node.js
FROM node:18-alpine

# Đặt thư mục làm việc trong container
WORKDIR /app

COPY src/package*.json ./

# Sao chép toàn bộ mã nguồn vào container
COPY . .

RUN npm install

ENV CHOKIDAR_USEPOLLING=true
ENV WATCHPACK_POLLING=true
ENV FAST_REFRESH=true


EXPOSE 3000

# Chạy ứng dụng React trong môi trường phát triển
CMD ["npm", "start"]
# CMD ["npm", "run", "watch"]
