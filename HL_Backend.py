from flask import Flask
import time
import os, math


app = Flask(__name__)


@app.route('/')
def hello_world():
    math.factorial(33900)
    return 'Hello World!'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
