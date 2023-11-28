##robosys2023

![test](https://github.com/kohsei-ta/robosys2023/actions/workflows/test.yml/badge.svg)

ロボットシステム2023の練習レポジトリ
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by RyuichiUeda)のものを，本人の許可を得て自身の著作としたものです.
	* [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

## インストール方法
```
$ git clone https://github.com/kohsei-ta/robosys2023.git 
```

## plus	コマンド

標準入力から読み込んだ数字を1から順番に加減乗除の計算をする。

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

## 必要なソフトウェア
* Pyton
  * テスト済み: 3.7~3.10

# テスト環境
* Ubuntu

# ライセンス

* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます.
* © 2023 Kohsei Takaoka
