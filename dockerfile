# Usa uma imagem oficial do Python estável
FROM python:3.11-slim

# Define variáveis de ambiente para o Python não gerar arquivos .pyc e não reter logs em buffer
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Define a pasta de trabalho dentro do container
WORKDIR /app

# Instala as dependências do sistema necessárias
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Copia o arquivo de dependências e instala
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

RUN django-admin startproject core .

# Copia o restante do código do projeto para o container
COPY . /app/

# Expõe a porta padrão do Django
EXPOSE 8000