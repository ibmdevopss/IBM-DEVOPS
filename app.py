from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    print("Home route was accessed!")  # Debugging message
    return "<h1>Flask is Working!</h1><p>This is a test page.</p>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
    
