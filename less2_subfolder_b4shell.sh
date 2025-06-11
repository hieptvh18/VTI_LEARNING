folder_path=$1

# check param exists

if [ -z "$folder_path" ]; then 

	echo "vui long nhap param folder path"
	exit 1
fi

# check folder exits
if [ ! -d "$folder_path" ]; then
	echo "Error: folder `$folder_path` not found!"
	exit 1
fi

# list folder

echo "List folder cua folder `$folder_path` la:"

#find "$folder_path" -maxdepth 1 -type d | while read -r dir; do
    # Bỏ qua chính thư mục gốc
#    if [ "$dir" != "$folder_path" ]; then
#        echo "$(basename "$dir")"
#    fi
#done

# Kiểm tra xem có subfolder nào không
#if [ -z "$(find "$folder_path" -maxdepth 1 -type d | grep -v "^${folder_path}$")" ]; then
#    echo "(Không có thư mục con nào)"
#fi


# Liệt kê các subfolder bằng ls
echo "Danh sách các thư mục con trong '$folder_path':"
ls -l "$folder_path" | grep '^d' | awk '{print $9}' | while read -r dir; do
    # Kiểm tra dir không rỗng (tránh dòng trống)
    if [ -n "$dir" ]; then
        echo "$dir"
    fi
done

# Kiểm tra xem có subfolder nào không
if [ -z "$(ls -l "$folder_path" | grep '^d')" ]; then
    echo "(Không có thư mục con nào)"
fi
