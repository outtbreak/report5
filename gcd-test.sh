#!/bin/bash

ans="/tmp/$$-ans"
result="/tmp/$$-result"

ERROR_EXIT(){
	echo $1
	rm /tmp/$$-*
        exit 1
}

#1-1: 引数が二つでない場合はエラー
echo "引数を二つ入力してください" > ${ans}
./gcd.sh 3 > ${result}
diff ${ans} ${result} || ERROR_EXIT "error in 1-1"

# 1-2:16と12を入力する。4を出力したら成功、出力しなかったらエラー
echo "最大公約数は4" > ${ans}
./gcd.sh 16 12 >${result}
diff ${ans} ${result} || ERROR_EXIT "error in 1-2"
