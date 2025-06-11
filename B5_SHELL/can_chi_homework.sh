#!/bin/bash

cans=(Giáp Ất Bính Đinh Mậu Kỷ Canh Tân Nhâm Quý)
chis=(Tý Sửu Dần Mão Thìn Tỵ Ngọ Mùi Thân Dậu Tuất Hợi)

# Năm chuẩn là 2015 (Ất Mùi)
base_year=2015
can_index=1   
chi_index=7   

# Nhập năm
read -p "Nhập năm âm lịch: " year

# Tính số năm cách biệt
diff=$((year - base_year))

# Tính Can và Chi (dựa vào chênh lệch)
new_can_index=$(( (can_index + diff) % 10 ))
if [ $new_can_index -lt 0 ]; then
    new_can_index=$((new_can_index + 10))
fi
new_chi_index=$(( (chi_index + diff) % 12 ))
if [ $new_chi_index -lt 0 ]; then
    new_chi_index=$((new_chi_index + 12))
fi

# Lấy giá trị Can và Chi
can=${cans[$new_can_index]}
chi=${chis[$new_chi_index]}

# In kết quả
echo "Năm $year là: $can $chi"