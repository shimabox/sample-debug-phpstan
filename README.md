# sample-debug-phpstan

このリポジトリは [株式会社カオナビのカレンダー | Advent Calendar 2023 - Qiita](https://qiita.com/advent-calendar/2023/kaonavi "株式会社カオナビのカレンダー | Advent Calendar 2023 - Qiita") 19日目のサンプルコードです。

https://zenn.dev/shimabox/articles/a6c015ca98f0f6

## Usage

`docker compose` は使える想定です。

### 初期化

```shell
git clone https://github.com/shimabox/sample-debug-phpstan.git
cd sample-debug-phpstan
make init
```

### コンテナーに入る

```shell
make app
```

これで、コンテナー内に入るので

```shell
# phpstanを実行する場合
composer phpstan
```

or

```shell
# phpstan-srcを実行する場合
composer phpstan-src
```

してください。

実際にブレークポイントを張ってデバッグする方法はアドカレの[記事](https://zenn.dev/shimabox/articles/081d559ef044f8 "PHPStanのデバッグを行う方法")を見てみてください。

## Make

その他の定義は [sample-debug-phpstan/Makefile at main · shimabox/sample-debug-phpstan](https://github.com/shimabox/sample-debug-phpstan/blob/main/Makefile "sample-debug-phpstan/Makefile at main · shimabox/sample-debug-phpstan") を見てください。
