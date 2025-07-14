Định nghĩa các container sẽ được tạo và chạy.

webservice

image: nginx:latest: Sử dụng image Nginx mới nhất.
container_name: nginx-webservice: Đặt tên container là nginx-webservice.
ports: "80:80": Map cổng 80 của máy host sang cổng 80 của container.
volumes: Mount thư mục cấu hình Nginx từ máy host vào container.
depends_on: Chỉ khởi động sau khi app-backend đã sẵn sàng.
networks: Kết nối vào mạng Docker tên là app-network.
app-backend

build: Build image từ Dockerfile tại thư mục hiện tại.
container_name: app-backend: Đặt tên container là app-backend.
volumes: Mount mã nguồn backend vào container.
depends_on: Chỉ khởi động sau khi database và redis đã sẵn sàng.
networks: Kết nối vào app-network.
app-frontend

build: Build image từ Dockerfile trong thư mục frontend.
container_name: app-frontend: Đặt tên container là app-frontend.
ports: "3000:3000": Map cổng 3000 của máy host sang container.
volumes: Mount mã nguồn frontend vào container.
networks: Kết nối vào app-network.
database

image: mysql:latest: Sử dụng image MySQL mới nhất.
container_name: mysql-database: Đặt tên container là mysql-database.
environment: Thiết lập biến môi trường cho MySQL.
ports: "3306:3306": Map cổng 3306 của máy host sang container.
networks: Kết nối vào app-network.
redis

image: redis:latest: Sử dụng image Redis mới nhất.
container_name: redis: Đặt tên container là redis.
ports: "6379:6379": Map cổng 6379 của máy host sang container.
volumes: Lưu trữ dữ liệu Redis trên volume tên redis-data.
networks: Kết nối vào app-network.
2. networks
Định nghĩa mạng Docker dùng chung cho các service.

app-network: Sử dụng driver bridge (mạng nội bộ Docker).
3. volumes
Định nghĩa các volume dùng để lưu trữ dữ liệu bền vững.

redis-data: Lưu dữ liệu Redis.
db-data: (Chưa sử dụng, nhưng có thể dùng cho MySQL nếu cần).