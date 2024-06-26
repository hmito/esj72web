# 生態学会Webページ用Markdownの説明

- [生態学会Webページ用Markdownの説明](#生態学会webページ用markdownの説明)
  - [はじめに](#はじめに)
  - [まずはMarkdownを使えるようにする](#まずはmarkdownを使えるようにする)
  - [Markdownの基本](#markdownの基本)
    - [見出し](#見出し)
    - [強調](#強調)
    - [リスト](#リスト)
    - [画像](#画像)
    - [リンク](#リンク)
    - [表](#表)
    - [水平線](#水平線)
    - [改行](#改行)
    - [その他の文字装飾](#その他の文字装飾)
  - [生態学会Webページのためのデータ作成](#生態学会webページのためのデータ作成)
    - [Markdownのテンプレート](#markdownのテンプレート)
    - [画像ファイル・添付ファイル](#画像ファイル添付ファイル)
      - [初回アップロード時](#初回アップロード時)
      - [更新時](#更新時)
    - [WordPressの設定情報](#wordpressの設定情報)
      - [URL](#url)
      - [メニュー](#メニュー)
      - [目次](#目次)
      - [多言語対応](#多言語対応)

## はじめに

生態学会のWebページはWordPressで運用されています。
WordPressはMarkdownでのデータ貼り付けに対応しているので、今年の原稿はMarkdown形式で準備することにしました（Markdownが使えれば[RMarkdown](https://rmarkdown.rstudio.com)でみなさまの研究に役立つかもしれないですし）。
ここではMarkdownの簡単な使い方＆生態学会のWebページ用のデータ作成を説明します。
（ちなみにこの文書もMarkdownで作られています）

## まずはMarkdownを使えるようにする

個人的なおすすめはVisual Studio Codeでの編集です。
[Visual Studio Code](https://code.visualstudio.com)のページからダウンロード＆インストールしてください。
お好みでMarkdown All in Oneなどもインストールしてもよいかもしれないです＜[参考](https://qiita.com/84zume/items/1e6c720caba9898f5af2)＞ ＜[参考](https://tracpath.com/works/development/markdown_basics/)＞。
Visual Studio Codeでは編集中に画面上部のPreviewボタン![ボタン画像](preview_button.png)を押すとエディタと別タブでHTMLのプレビューを見ることができます。

もちろんRStudioなど他のエディタやソフト・サービスを使ってもOKですのでお好みの環境を用意してください。

## Markdownの基本

基本的なMarkdownでの文書構造の作り方の説明です。
だいたいここにあることで簡単な文書構造は作れると思います。
もっと詳しいことが気になる人はWebを検索してみてください。

### 見出し

「#」で見出しを付けます。最大レベルは6です。

```markdown
# 見出しレベル1
## 見出しレベル2
### 見出しレベル3
#### 見出しレベル4
##### 見出しレベル5
###### 見出しレベル6
```

見出しは見出しなので、文字サイズを変更するために使わないでください。
また、高いレベルの見出しから順番に使ってください（例えば####を使う時にはその前に#、##、###の3レベルの見出しを全て使って階層的になるようにしてください）。
トップレベルの見出し（# 1個）はWordPressのページ見出しに使うので、各ページで1つだけ使ってください。

### 強調

アスタリスクで囲うことで強調を表現します。取り消し線はチルダ（Rのformulaに使うやつ）です。

```markdown
*斜体*
**太字**
***太字斜体***
~~取り消し線~~
```

＜例＞
*斜体*
**太字**
***太字斜体***
~~取り消し線~~

### リスト

通常のMarkdownは階層のインデントがスペース2つなのですが、WordPressに貼り付けるときにはスペース4つで階層が下がるようです。
階層構造を表現したいときにはスペース4つを使ってください。

```markdown
- 階層1
- 階層1
    - 階層2
        - 階層3

1. 要素1
2. 要素2
3. 要素3
```

＜例＞

- 階層1
- 階層1
    - 階層2
        - 階層3

1. 要素1
2. 要素2
3. 要素3

### 画像

```markdown
![画像の説明](画像のパスやファイル名)
![ESJ71ロゴ](https://esj-meeting.net/wp-content/uploads/2023/06/esj71_logo.png)
```

＜例＞
![ESJ71ロゴ](https://esj-meeting.net/wp-content/uploads/2023/06/esj71_logo.png)

注：装飾的な役割で画像を使う場合には画像の説明は不要です。

### リンク

```markdown
[リンク文字列](リンク先のURL)
[ESJ Meeting](https://esj-meeting.net/home_ja/)
```

＜例＞
[ESJ Meeting](https://esj-meeting.net/home_ja/)

外部サイトなど、新しいタブ・ウィンドウでリンクを開きたい場合はHTMLで記述してください。
（`rel="noreferrer noopener"`はWordPressが自動的に追加してくれます）

```markdown
<a href="リンク先のURL" target="_blank">リンク文字列</a>
<a href="https://esj71.gakkai.online" target="_blank">大会プラットフォーム</a>
```

＜例＞
<a href="https://esj71.gakkai.online" target="_blank">大会プラットフォーム</a>

### 表

```markdown
| 見出し1 | 見出し2 |
| ------- | ------- |
| 値1     | 値2     |
```

＜例＞
| 見出し1 | 見出し2 |
| ------- | ------- |
| 値1     | 値2     |

### 水平線

3つ以上の「-」記号で水平線を表記します。水平線の前後には空行を入れる必要があります。
ファイルを見やすくするため、数を増やしてもOKです。
（個人的な趣味では最大79個）

```markdown
---
```

＜例＞

-------------------------------------------------------------------------------

### 改行

WordPressにMarkdownをコピペすると、改行はそのまま改行として扱われるようです。
このため、改行を表すための文末のスペース2つは必要ないです。

### その他の文字装飾

文字色・文字サイズの変更はMarkdownではサポートされていません。
どうしてもこれらを変更したいときにはHTMLのタグを書く必要があります。
**これらの装飾は（現時点では）WordPressにコピペで設定できないため、コピペ後に手動での装飾の適用が必要になります。Web更新の手間・間違いを減らすため、どうしても必要な場合だけに利用を留めてください。**

現在使用しているWordPressのテーマでは強調色として２色（赤っぽい色・青っぽい色）が設定されています。
サイト全体で統一感を出すため、色を使う場合には赤もしくは青を使ってください。

```html
<span style="color: red">赤い文字</span>
<span style="color: blue">青い文字</span>
<span style="font-size: 200%">大きい文字</span>
```

＜例＞
<span style="color: red">赤い文字</span>
<span style="color: blue">青い文字</span>
<span style="font-size: 200%">大きい文字</span>

## 生態学会Webページのためのデータ作成

ここからは生態学会のWebページ作成のためのデータ作成について説明します。

### Markdownのテンプレート

Webページ新規作成用のMarkdownの[テンプレート](https://raw.githubusercontent.com/Marchen/esj71web/main/docs/esj_web_template.md)を用意しました。
新たにページを作るときにはこのテンプレートを使ってください。
記載する内容の説明は以下を見てください。

### 画像ファイル・添付ファイル

画像ファイルや添付ファイルはWordPressに直接アップロードする必要があります。
この作業はWeb担当で行うため、ページにこれらを埋め込む際にはとりあえず以下の手順を踏むことにしてみます。

#### 初回アップロード時

Markdownファイルと一緒に画像や添付ファイルを用意してください。
Markdownファイル内では以下の例のようにファイル名を記載してください。

```markdown
![画像の説明](画像のファイル名.png)
![画像の説明](画像のファイル名.jpg)
[リンク文字列](添付ファイル名.pdf)
```

ファイルを送ってもらったらWeb担当でWordPressにアップロードして、ファイル名の部分を以下の例のようにWordPress上のファイルのURLに書き換えます。

```markdown
![画像の説明](https://esj-meeting.net/wp-content/uploads/2022/08/ESJ70logo.png)
[リンク文字列](https://esj-meeting.net/wp-content/uploads/2022/08/ESJ70logo.png)
```

#### 更新時

Web担当が設定したURLを使ってください。
新しいファイルに差し替えたいときには初回アップロード時と同じ感じにして下さい。
（ファイルを差し替えたことを教えてもらえると余計なファイルの削除を忘れにくくなって助かります）

### WordPressの設定情報

WordPressでページを公開するためにはページのURLやメニューのどこにページを配置するかなど、追加の設定が必要です。
Markdownそのものではサポートされていないのですが、RMarkdownに倣ってこれらの情報はファイル上部のYAMLヘッダーに記録しておくことにします。
（どうせWordPressにはコピペでデータ投入ですし）

まだ何を設定すればいいのか把握し切れていないので、実際運用してみて変更した方がよい点が出てきたら随時加筆・修正予定ですが、とりあえず、以下のヘッダーを使ってみます。

```yaml
---
url:
menu:
toc:
multi_language:
---
```

#### URL

ページのURLはWordPress上で設定するので、この情報をヘッダーの`url:`に記載することにします。
例えば`url: https://esj-meeting.net/home_ja/`など。
よくわからない場合は空欄にしておいてもらえればWeb担当で適当な値を設定します。

#### メニュー

各ページへのアクセスを簡単にするため、必要なページはメニューに登録します。
各ページをメニューのどこに配置するかを覚えておくため、メニューの場所を`menu:`に記録しておくことにします。
メニューにページを配置するときには

```yaml
menu: ホーム
```

といった感じに、サブメニューにするときには

```yaml
menu: 大会案内 > 参加・講演の手引
```

といった感じにしてみようと思います。
メニューには追加せず他のページからリンクするページは

```yaml
menu:
```

のように何も記載しないことにします。

#### 目次

WordPressには目次を生成する機能があります。
例えば[このページ](https://esj.ne.jp/meeting/70/contact_ja/)の目次はWordPressで生成されています。
目次を有効にするページには以下のように`toc:`に`true`を指定してください。

**2023−09−10 追記**:
Twitterの表示がいつまでもうまくいかないので、ページの設定を変えてサイドバーに目次を表示するようにしました。
Twitterが復活して、サイドバーのメニューを消しても目次を表示したいページでは`true`にしておいてください。
（将来的には設定削除するかもしれません）

```yaml
toc: true
```

目次を有効にしないページは`false`にすることにします。

```yaml
toc: false
```

#### 多言語対応

現在使っているWordPressのテーマには日本語・英語を切り替える機能があります。
WordPress上で多言語ページの対応関係を設定するのですが、日本語だけのページを作りたい場合には多言語設定が必要ないことを教えてもらえるとWeb担当的にはありがたいです。
ということで、英語版がなくてもOKかどうかのお問い合わせを減らすため、多言語対応が必要かを示すフィールドを作りました。
日本語ページだけあればOKなときには`multi_language`を`false`にしてください。
このフィールドが`false`なら日本語ページだけのデータで粛々と更新作業を進めます。
とりあえず先に日本語版を作ってあとから英語版を作りたい、などの場合はそういう感じのメモを書いておいていただいても大丈夫です。

```yaml
multi_language: false
multi_language: true
multi_language: あとから英語版を作ります（もうすこしで完成予定）。
```
