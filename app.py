'''
Created on 
    Jun 28, 2021

@author: Altair

    
'''

from flask import Flask, jsonify


app = Flask(__name__)

@app.route("/")
def index():
    
    return jsonify({"Talha":"Altair"})

if __name__ == "__main__":
    app.run(debug=True)