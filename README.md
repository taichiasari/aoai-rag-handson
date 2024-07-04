# aoai-rag-handson
# リソースの作成
./setup_resources.sh
# リソースの削除
az group delete --name rg-rag-handson


# Azure RAG Hands-On

このリポジトリは、Azure OpenAI ServiceとAzure AI Searchを使ったRAG (Retrieve and Generate) をハンズオン形式で学習するためのものです。本ガイドでは、GitHub Codespacesを利用して環境構築します。

## このハンズオンに必要なもの

- GitHubのアカウント(GitHub Codespacesの120CPU時間の無料枠利用のためFreeでOK)
- Azureのサブスクリプション
- Azureのサブスクリプションで利用可能なAzure OpenAI Service

## Codespacesのセットアップ手順

1. **リポジトリのフォーク**
    - このリポジトリを自分のGitHubアカウントにフォークします。
    ![Fork Image 1](aoai-rag-handson/assets/fork1.png)
    ![Fork Image 2](aoai-rag-handson/assets/fork2.png)

2. **Codespacesの作成**
    - フォークしたリポジトリに移動し、リポジトリ名の下にある「Code」ボタンをクリックします。
    ![Codespaces Image 1](aoai-rag-handson/assets/codespaces1.png)
    - 「Codespaces」タブを選択し、「Create codespace on main」をクリックします。
    ![Codespaces Image 2](aoai-rag-handson/assets/codespaces2.png)

3. **Codespacesの起動と初期設定**
    - Codespacesの環境が起動するのを待ちます。初回の起動には数分かかることがあります。
    - 環境が起動すると、自動的に必要な依存関係がインストールされます。これは `devcontainer.json` ファイルに指定された内容に基づいて実行されます。

4. **Jupyter Notebookの起動**
    - 左側のアクティビティバーから「Explorer」を選択し、任意のJupyter Notebookファイル（拡張子 `.ipynb`）をクリックして開きます。
    - 右上の「Run」ボタンをクリックして、Jupyter Notebookを実行できます。

