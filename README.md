# とにかくbooktabsを使おう

本資料は、TeXにおいてbooktabsパッケージを用いて綺麗な表を作るための指南書です。

## 資料本体
- [pdf](https://matsui528.github.io/use_booktabs_anyway/main.pdf)

## 作者
- [松井勇佑](http://yusukematsui.me/index_jp.html)

## ローカルでのビルド方法
検証環境：Windows 11 + WSL2 + Ubuntu 20.04
```console
$ sudo apt install texlive-full fonts-noto
$ git clone https://github.com/matsui528/use_booktabs_anyway.git
$ cd use_booktabs_anyway
$ make build   # You can find "main.pdf" on "web"
```

## Actions上でのビルド方法
- [GitHub Actions上でpdfを作成し、pagesにartifactをアップロードする](.github/workflows/pages.yml)。Actionsのトリガーは手動実行のみ許可している。
- 結果のpdfは[https://matsui528.github.io/use_booktabs_anyway/main.pdf](https://matsui528.github.io/use_booktabs_anyway/main.pdf)からアクセスできる。
- texlive-fullのインストールには時間がかかるので、texlive-lang-japaneseおよびtexlive-latex-extraをインストールする。