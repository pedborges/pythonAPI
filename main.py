from flask import Flask
import os

app = Flask(__name__)

@app.route('/', methods=['GET'])
def teste():
    frase1 = os.environ.get("frase1")
    frase2 = os.environ.get("frase2")
    frase3 = os.environ.get("frase3")

    resultado = ""

    if frase1 is not None:
        resultado += frase1

    if frase2 is not None:
        resultado += frase2

    if frase3 is not None:
        resultado += frase3

    if resultado == "":
        return "Nenhuma frase definida nas variáveis de ambiente."
    
    return resultado

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=4000)
