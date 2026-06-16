# base
Projeto django basico com docker.

# Requisitos 
    docker instalado no windows ou linux

# Comando docker para construir a imagem sem pegar do cache
    sudo docker compose build --no-cache

# Comando para construir a imagem e subir container
    docker compose up -d --build

# Derrubando o constainer e removendo volumes orfãos
    sudo docker compose down -v

# Subindo container
    sudo docker compose up -d

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


# Criar um novo App (Caso precise de outro além de equipamentos/usuario):    
    sudo docker compose run --rm web python manage.py startapp nome_do_app

# Criando projeto
    sudo docker compose run --rm web django-admin startproject meu_projeto .
