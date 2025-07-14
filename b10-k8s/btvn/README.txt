# BTVN
1. Tạo 1 deployment services cho backend (nginx) -> done
2. Tạo 1 replicaset services (nginx) -> done
3. Tạo 1 pod nginx -> done
4. Tạo 1 pod chạy trong 15p và print data nhu echo  "helloworld" -> done

 => ReplicaSet là đối tượng đảm bảo luôn có đúng số lượng Pod (ở đây là 3) chạy trong cluster.
Nếu 1 Pod bị xóa hoặc lỗi, ReplicaSet sẽ tự động tạo Pod mới thay thế.