# base
Projeto django basico com docker docker-compose e github.

# Requisitos 
    

# Baixar projeto 
    git clone https://github.com/andrezinhoss247/base.git


# Criando uma imagem
# Comando docker para construir a imagem sem pegar do cache
    sudo docker compose build --no-cache

# Cria primeiro projeto e remove container, esse comando sever so para criar os arquivos do projeto inical 
    sudo docker compose run --rm web django-admin startproject core .

# Subindo container
    sudo docker compose up -d

# Criar um novo App :    
    sudo docker compose run --rm web python manage.py startapp nome_do_app


# Outros comandos utilizados


# Comando para construir a imagem e subir container
    docker compose up -d --build

# Derrubando o constainer e removendo volumes orfãos
    sudo docker compose down -v

# Verificando logs
    sudo docker compose logs -f

# Verificando dentro da pasta do projeto
    sudo docker compose run --rm web ls -la /app

# Fazer migrações (Detectar alterações nos modelos):
    sudo docker compose run --rm web python manage.py makemigrations

# Aplicar migrações (Criar as tabelas no banco SQLite):
    sudo docker compose run --rm web python manage.py migrate

# Criar um usuário Administrador (Para acessar o /admin):
    sudo docker compose run --rm web python manage.py createsuperuser




