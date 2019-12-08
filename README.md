卒論のひな形2019
====

卒論のひな形

## 学科配布のものとの違い
学科配布のものは、対応している LaTeX のパッケージが古いので、アップデートしている。
さらに、ファイルを章単位で分割するようにしている。

# ファイル構成
* `./.vscode/`
  * VSCode で利用する場合の各種設定
  * 基本的に触らなくてよい
* `./bib/`
  * 参考文献を追加する際に利用するbibtex関連
* `./figure/`
  * 論文中で使うグラフ、図、写真などを格納するディレクトリ
  * フォーマットはepsかPDFがおすすめ
* `./sty/`
  * 書式にかかわるファイル
  * 編集禁止
* `./tex/`
  * 論文の本文を格納するディレクトリ
  * `acknowledgements.tex` は変更しない
  * `macro.tex` は、マクロ記述用
    * わからなければ触らない
* `./.gitignore` `./.latexmkrc` `./.drone.yml`
  * わからなければ触らない
* `./paper.tex`
  * 論文のタイトルや著者などを設定する
    * 書き始める際に、まず書き換えること
  * 章を増やすときは`\input{tex/***}`を適宜追加する 



# ビルド環境
* `nxzz/alpine-texlive-ja` on Docker for Windows
* Visual Studio Code LaTeX Workshop Extension



# CI 設定
* タグをつけると、その時のビルド結果 `paper.pdf` をリリースするようにしている
  * 使う場合は、Drone の Secrets と追加すること
  * `github_token` として Github の Personal access tokens を設定する
  * リポジトリの読み書きを許可すること
* Slack連動を利用する場合は、Drone の Secrets に `slack_webhook` として、Webhook URL を追加すること