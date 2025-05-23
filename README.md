# Store Flask App

This is an Store web application, base on Flask python and Docker. Store web is an website allow sale product, manage staff, account, product and so on.

## What is Flask?

[Flask](https://flask.palletsprojects.com/) is a web application framework written in Python. It was developed by Armin Ronacher, who led a team of international Python enthusiasts called Poocco. Flask is based on the Werkzeg WSGI toolkit and the Jinja2 template engine.Both are Pocco projects.

## What is Docker?

[Docker](https://docs.docker.com/get-docker/) is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker's methodologies for shipping, testing, and deploying code, you can significantly reduce the delay between writing code and running it in production.

### A basic Flask app

```py
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'

if __name__ == '__main__':
    app.run()

```

If you want to develop on your local computer, you can do so easily. Save this program as server.py and run it with python server.py.

```bash
$ python server.py
 * Serving Flask app "hello"
 * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
```

# How to run?

Clone Store Flask project to your local

```bash
git clone https://github.com/kieukhang185/flask.git
cd flask
```

Make sure you have [Docker](https://docs.docker.com/engine/install/), then run docker command to build docker images from Dockerfile. Following this command:

```bash
docker build --tag flask_app:0.0.1 --rm .
```

Then run the Store Flask app from docker the previus docker image.

```bash
docker run -p 8000:8000 --rm -it flask_app:0.0.1
```

Access to the webapp at localhost:8080.

# Test