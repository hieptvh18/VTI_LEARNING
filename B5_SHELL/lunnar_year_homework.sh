cans=(Giáp Ất Bính Đinh Mậu Kỷ Canh Tân Nhâm Quý)
chis=(Tý Sửu Dần Mão Thìn Tỵ Ngọ Mùi Thân Dậu Tuất Hợi)

getCanChi() {
    # Năm chuẩn là 2015 (Ất Mùi)
    local year=$1

    if [ -z "$year" ]; then
        echo "Vui lòng nhập năm dương lịch."
        return 1
    fi

    local base_year=2015
    local can_index=1   
    local chi_index=7   

    # Tính số năm cách biệt
    local diff=$((year - base_year))

    # Tính Can và Chi (dựa vào chênh lệch)
    local new_can_index=$(( (can_index + diff) % 10 ))
    if [ $new_can_index -lt 0 ]; then
        new_can_index=$((new_can_index + 10))
    fi
    local new_chi_index=$(( (chi_index + diff) % 12 ))
    if [ $new_chi_index -lt 0 ]; then
        new_chi_index=$((new_chi_index + 12))
    fi

    # Lấy giá trị Can và Chi
    local can=${cans[$new_can_index]}
    local chi=${chis[$new_chi_index]}

    echo "$can $chi"
}

# In tiêu đề bảng
echo "Năm dương lịch | Năm âm lịch"
echo "---------------|-------------"

for year in {1990..2020}; 
do 
    can_chi=$(getCanChi $year)
    printf "%-13s %s\n" "$year" "$can_chi"
done
