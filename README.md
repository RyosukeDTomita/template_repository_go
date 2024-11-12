# Go Template Repository

![un license](https://img.shields.io/github/license/RyosukeDTomita/template_repository_go)-->

## INDEX

- [ABOUT](#about)
- [ENVIRONMENT](#environment)
- [PREPARING](#preparing)
- [TOOLS](#tools)

---

## ABOUT


---

## ENVIRONMENT

[Dockerfile](./Dockerfile)

---

## PREPARING

- VSCode
  - Dev Container
- Docker

---

## TOOLS

### go run

go runコマンドを使うとインタプリタのように使える。

```shell
go run hello.go
```

---

### go build

go buildで実行ファイルにする。

```shell
go build -o hello hello.go
```

---

### go mod

go modはモジュールを操作する。

```shell
# モジュールを初期化
mkdir hello
cd hello
go mod init hello

# ソースファイルを解析して必用なサードパーティーのライブラリのダウンロードや不要になったファイルの削除などを行う。
go mod tidy
```

---

### go install

---
