import os
from flask import Flask, render_template

app = Flask(__name__)

# Aseta polku templates-kansioon
app.config['TEMPLATES_AUTO_RELOAD'] = True
app.config['TEMPLATE_FOLDER'] = os.path.join(os.path.dirname(__file__), 'FlaskApp')

@app.route('/')
def index():
    return render_template('pukinmaen_kartta.html')

if __name__ == '__main__':
    app.run(debug=True, port=0)
