FROM python:3-stretch

WORKDIR /failbot

# Instala todas as Dependências.
ADD requirements.txt .
RUN pip3 install -r requirements.txt

# Adiciona os sources
ADD *.py ./

# Porta de monitoramento.
EXPOSE 80

# Executa App
ENTRYPOINT ["python", "main.py"]
