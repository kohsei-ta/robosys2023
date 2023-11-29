# robosys2023

![test](https://github.com/kohsei-ta/robosys2023/actions/workflows/test.yml/badge.svg)

ロボットシステム2023の練習リポジトリ

## インストール方法

* クローン
```
$ git clone https://github.com/kohsei-ta/robosys2023.git 
```

* インスト―ルの確認
```
$ cd robosys2023
$ ls
```
```
LICENSE  README.md  plus  test.bash  yamada.bash
```

* 実行権限の付与
```
$ chmod +x plus
```
```
$ chmod +x test.bash
```

## plus	コマンド

標準入力から読み込んだ数字を1から順番に加減乗除の計算をする.

* 使用方法
```
$ seq 数字 | ./plus
```

* 実行結果
```
$ seq 5 | ./plus
```
```
[1, 2, 3, 4, 5] = 15
[-1, -2, -3, -4, -5] = -15
[1, 2, 3, 4, 5] = 120
[1, 2, 3, 4, 5] = 0.0083333333
```

## 動作確認
* 実行方法
```
$ ./test.bash
```

* 実行結果
<details><summary>出力</summary><div>

```
(略)
res=0
+ res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
++ seq 5
++ ./plus
+ out='[1, 2, 3, 4, 5] = 15
[-1, -2, -3, -4, -5] = -15
[1, 2, 3, 4, 5] = 120
[1, 2, 3, 4, 5] = 0.0083333333'
[ "${out}" = "[1, 2, 3, 4, 5] = 15
[-1, -2, -3, -4, -5] = -15
[1, 2, 3, 4, 5] = 120
[1, 2, 3, 4, 5] = 0.0083333333" ] || ng ${LINENO}
+ '[' '[1, 2, 3, 4, 5] = 15
[-1, -2, -3, -4, -5] = -15
[1, 2, 3, 4, 5] = 120
[1, 2, 3, 4, 5] = 0.0083333333' = '[1, 2, 3, 4, 5] = 15
[-1, -2, -3, -4, -5] = -15
[1, 2, 3, 4, 5] = 120
[1, 2, 3, 4, 5] = 0.0083333333' ']'

### STRANGE INPUT ###
out=$(echo あ | ./plus)
++ echo あ
++ ./plus
Traceback (most recent call last):
(略)
ValueError: could not convert string to float: 'あ\n'
+ out=
[ "$?" = 1 ]      || ng ${LINENO}
+ '[' 1 = 1 ']'
[ "${out}" = "" ] || ng ${LINENO}
+ '[' '' = '' ']'

out=$(echo | ./plus)
++ echo
++ ./plus
Traceback (most recent call last):
 (略)
ValueError: could not convert string to float: '\n'
+ out=
[ "$?" = 1 ]      || ng ${LINENO}
+ '[' 1 = 1 ']'
[ "${out}" = "" ] || ng ${LINENO}
+ '[' '' = '' ']'

[ "$res" = 0 ] && echo OK
+ '[' 0 = 0 ']'
+ echo OK
OK
exit $res
+ exit 0
```
</div></details>

* 終了ステータスの確認
```
$ echo $?

```

# 必要なソフトウェア
* Pyton
  * テスト済み: 3.7~3.10

# テスト環境
* Ubuntu 22.04.2 LTS

# ライセンス

* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます.
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by RyuichiUeda)のものを，本人の許可を得て自身の著作としたものです.
    * [ryuichiueda/my_slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Kohsei Takaoka
