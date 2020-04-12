from flask import Flask,request
from flask_cors import CORS
app = Flask(__name__)
CORS(app)

@app.route('/', methods=['GET', 'POST'])
def add():
    # here we want to get the value of user (i.e. ?user=some-value)
    num1 = int(request.args.get('num1'))
    num2 = int(request.args.get('num2'))
    res = num1 + num2
    print("successful")
    return str(res)

@app.errorhandler(404) 
def not_found_404(e): 
  return "404 please re-check your input"

@app.errorhandler(500) 
def not_found_500(e): 
  return "500 please re-check your input"

app.run("0.0.0.0","8080")
