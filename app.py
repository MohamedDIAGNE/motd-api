from flask import jsonify, Flask

app = Flask(__name__)

@app.route('/home')
def home():
	return jsonify(username='admin' ,account='Premium' ,validity='200 days')

if __name__ == "__main__":
	app.run(debug=True,host="0.0.0.0")