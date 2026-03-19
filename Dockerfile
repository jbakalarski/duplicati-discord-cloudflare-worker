FROM node:25

RUN npm install -g wrangler pnpm

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN pnpm install --frozen-lockfile

COPY . .

CMD ["node", "--version"]