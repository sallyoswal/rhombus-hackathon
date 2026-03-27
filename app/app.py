import os
from flask import Flask, jsonify, request, render_template

app = Flask(__name__)

data = []

@app.route('/ping')
def ping():
    return '<h1>PONG</h1>'

@app.route('/system-info')
def system_info():
    basedir = os.path.abspath(os.path.dirname(__file__))
    prop_file = os.path.join(basedir, '/etc/os-release')
    return render_template('text/plain', prop_file=prop_file)


@app.route('/home')
def home():
    images = os.listdir(os.path.join(app.static_folder, "/home/vagrant/mydata"))
    return render_template('mydata.html', images=images)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port = 5000)

