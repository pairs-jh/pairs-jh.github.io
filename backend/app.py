from flask import Flask, jsonify, send_from_directory
import json
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/api/students')
def get_students():
    with open('students.json') as f:
        data = json.load(f)
    return jsonify(data)

@app.route('/api/students.csv')
def get_students_csv():
    return send_from_directory('.', 'students.csv', mimetype='text/csv')

if __name__ == '__main__':
    app.run(debug=True)
