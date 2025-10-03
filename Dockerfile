# Imagem base do Node
FROM node:18

# Diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia os arquivos de dependências
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do código
COPY . .

# Compila o projeto
RUN npm run build

# Expõe a porta que o NestJS usa
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "run", "start:prod"]
