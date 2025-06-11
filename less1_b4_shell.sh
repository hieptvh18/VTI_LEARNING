varA=$1
varB=$2

echo "Tham số 1: $varA"
echo "Tham số 2: $varB"
echo "Tất cả tham số: $@"
echo "Số lượng tham số: $#"
varNum = expr $varA + $varB
echo "ket qua phep tinh a + b = `expr $varA + $varB`"

echo "first result = `$varNum`"
