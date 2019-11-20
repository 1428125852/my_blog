from flask import Flask


app = Flask(__name__)


@app.route('/')
def first_flask():
    return "<h1 style='text-align:center; color:green;'>Hello world!</h1>"


if __name__ == '__main__':
    app.run("127.0.0.1", 8888)
