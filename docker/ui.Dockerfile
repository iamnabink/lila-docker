FROM node:20.12.2-bookworm-slim

RUN apt update && apt install -y git && apt clean

RUN git config --global --add safe.directory /chessground
RUN git config --global --add safe.directory /lila
RUN git config --global --add safe.directory /pgn-viewer

RUN npm install --global pnpm@9

RUN pnpm config set store-dir /.pnpm-store

WORKDIR /app
