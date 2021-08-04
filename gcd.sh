#!/bin/bash
#引数が二つかの確認
if [ $# -ne 2 ]; then
	echo "引数を二つ入力してください"
	exit 1
fi

a=$1
b=$2

#引数が自然数か確かめます。
if [[ !  "$1" =~ ^[0-9]+$ ]] || [[ ! "$2" =~ ^[0-9]+$ ]];then
	echo "自然数を入力してください"
	exit 1
fi

#二番目の引数が一番目より大きい時に入れ替える
if [ $b -gt $a ]; then
        a=$2
	b=$1
fi 

#ユーグリッド互除法を用いる
r=`expr $a % $b`
while [ $r -ne 0 ]
do
	a=$b
        b=$r
	r=`expr $a % $b`
done 

echo "最大公約数は$b"

exit 0
