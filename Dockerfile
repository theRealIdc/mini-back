
FROM node:22-alpine

WORKDIR /usr/src/app

# Activation de pnpm
RUN npm install -g pnpm@9.12.0 --ignore-scripts

# Copier les fichiers de dépendances
COPY package.json pnpm-lock.yaml ./

# Installer les dépendances
RUN pnpm install --frozen-lockfile

# Copier le code source
COPY . .

# Compiler NestJS
RUN pnpm build

# Supprimer les dépendances de développement
RUN pnpm prune --prod

# Utilisateur non privilégié
USER node

EXPOSE 3000

CMD ["node", "dist/main.js"]
