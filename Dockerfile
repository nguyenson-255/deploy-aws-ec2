# Sử dụng một image chứa Node.js phiên bản 14
FROM node:8

# Thiết lập thư mục làm việc trong container
WORKDIR /usr/src/app

# Sao chép package.json và package-lock.json nếu có để cài đặt các dependency
COPY package*.json ./

# Cài đặt các dependency
RUN npm install

# Sao chép tất cả các file trong thư mục hiện tại của bạn vào WORKDIR trong container
COPY . .

# Mở cổng 3000 để truy cập ứng dụng từ bên ngoài container
EXPOSE 3000

# Command để khởi chạy ứng dụng khi container được chạy
CMD ["npm", "start"]
