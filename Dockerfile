# Node.js 22系のAlpine Linuxベースイメージを使用
FROM node:22-alpine3.20

# アプリケーションディレクトリを作成・設定
WORKDIR /app

# package.jsonとpackage-lock.jsonをコピー（依存関係の効率的なキャッシュ）
COPY package*.json ./

# 依存パッケージをインストール
RUN npm install

# アプリケーションポートを公開
EXPOSE 3000

# コンテナ起動時に実行するコマンド
CMD ["npm", "start"]