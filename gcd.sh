#!/bin/bash
#引数が二つかの確認
if [ $# -ne 2 ]; then
	echo "引数を二つ入力してください"
	exit 1
fi

a=$1
b=$2

#二番目の引数が一番目より大きい時に入れ替える
if [ $b -gt $a ]; then
        a=$2
	b=$1
fi 

r=`expr $a % $b`

#ユーグリッド互除法を用いる
while [ $r -ne 0 ]
do
	a=$b
        b=$r
	r=`expr $a % $b`
done 

echo "最大公約数は$b"

exit 0
