### 連携に必要なパラメータの用意

* 連携に必要なパラメータは下記になります

| パラメータ   | 説明                       |
|:-------------|:--------------------------:|
| client_id    | Slack連携を行う識別用ID    |
| secret_key   | Slack連携を行う認証用key   |
| scope        | アプリに許可する権限(とりあえず『identify』と設定しておけば良い )       |
| team_name    | 認証先のチーム名           |
| state        | リダイレクト元識別key(自分で作成)      |
| redirect_uri | 認証後のリダイレクト先     |

* `client_id`, `secret_key`, `redirect_uri` については Slack側の用意 の項目で準備したものを使います。
* `scope` はとりあえず `identify` と設定しておきます。
* `team_name` は連携をする Slack のチーム名を設定します。
* `state` は 認証時に Rails からポストする値です。これは Slack からそのまま返却されます。
    * よって `state` は自分のアプリが Slack にリクエストを送り、そのときに返ってきたレスポンスであることを証明するのに使います。

シークレットな値になるので環境変数に値をセットし、 Rails からは定数として使うようにしましょう。

* 環境変数のセット

| 環境変数           | セットする値 |
|:-------------------|:------------:|
| SLACK_CLIENT_ID    | client_id    |
| SLACK_SECRET_KEY   | secret_key   |
| SLACK_TEAM_NAME    | team_name    |
| SLACK_SCOPE        | state        |
| SLACK_REDIRECT_URL | redirect_uri |
| SLACK_STATE_CODE   | state code   |
