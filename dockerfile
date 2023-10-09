# Use a imagem Python 3.9 com Alpine Linux como base
FROM python:3.9-alpine

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie os arquivos de código-fonte para o diretório de trabalho
COPY . /app

# Instale as dependências do aplicativo
RUN pip install -r requirements.txt

# Exponha a porta em que o aplicativo Flask está em execução
EXPOSE 5000

# Defina a variável de ambiente para o Flask indicando ao Flask que estamos em um ambiente de produção
ENV FLASK_ENV=production

# Execute o aplicativo Flask quando o contêiner for iniciado
CMD ["python", "main.py"]
