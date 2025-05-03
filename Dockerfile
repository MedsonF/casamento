# Usa a imagem oficial do nginx
FROM nginx:alpine

# Remove a página padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia todos os arquivos do diretório atual para a pasta pública do nginx
COPY . /usr/share/nginx/html

# Expõe a porta padrão do nginx
EXPOSE 8510

# Comando padrão para iniciar o nginx
CMD ["nginx", "-g", "daemon off;"]
