# averageコマンド

![test](https://github.com/hiragi-yata/average/actions/workflows/test.yml/badge.svg)

標準入力の数字の直近N個の平均を出力するコマンドです。

## インストール手順
```
$ git clone https://github.com/hiragi-yata/average.git
$ cd average
```

## 使用手順
標準入力の数字の直近N個の平均を出力するコマンドです。Nは引数で指定でき、省略した場合は5になります。なお入力がN個未満のときは、その時点までの数値の平均を出力します。

### 引数を指定しない場合(N=5)
```
$ seq 6 | ./average
1.0
1.5
2.0
2.5
3.0
4.0
```

### 引数を指定する場合
```
$ seq 6 | ./average 3
1.0
1.5
2.0
3.0
4.0
5.0
```

### パイプを使用しない場合
1行ずつ数値を入力すると、その都度平均が出力されます。終了するときは `Ctrl+D` を押します。
```
$ ./average
2
2.0
4
3.0
3
3.0
6
3.75
3
3.6
7
4.6
```

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.10〜3.14

## テスト環境
- Ubuntu 24.04 LTS

## ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- © 2026 Shuya Yata

## 謝辞
- 本リポジトリのコード、テスト、および設定ファイルの作成にあたり、下記の講義資料(CC BY-SA 4.0 by Taro Suzuki)を参考にしました
  - https://github.com/tarolab-cit/lectures/tree/main/robosys2026
