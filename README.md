# rubygana-docker

- 漢字にルビ(ふりがな)を付けるよ
- [rubygana](https://github.com/big-stream/rubygana)のDockerコンテナ(Alpine)バージョン


## インストール

```
git clone https://github.com/big-stream/rubygana-docker.git
cd rubygana-docker
docker build --tag rubygana:latest .

# Dockerイメージ確認
docker image ls rubygana
```


## コマンドヘルプ

```
docker run --rm rubygana --help
```


## 標準入力のとき

- `-i`を付ける

```
echo '猫と蝙蝠' | docker run --rm -i \
  rubygana --text
```


## ファイルのとき

- `source/`にファイルを入れておき、`-v`でマウント

```
docker run --rm -v "$PWD/source:/source" \
  rubygana --text sample.txt
```


## コンテナシェルで作業したいとき

```
docker run --rm -it -v "$PWD/source:/source" \
  --entrypoint /bin/sh rubygana
```

