FROM gitpod/workspace-full

# Instalar MySQL
USER root
RUN apt-get update && \
    apt-get install -y mysql-server && \
    service mysql start && \
    mysql -e "CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'senha';" && \
    mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'usuario'@'localhost' WITH GRANT OPTION;"

# Mudar para o usuário gitpod para o resto das instalações
USER gitpod

# Instalar ferramentas específicas ou versões específicas do Node.js, se necessário
# RUN bash -c ". .nvm/nvm.sh && nvm install 12 && nvm use 12"

# Expor a porta 3306 para o MySQL (opcional)
EXPOSE 3306
