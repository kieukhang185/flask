from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template('index.html')

@app.route("/about")
def about():
    return render_template('about.html')

@app.route("/bloglist")
def bloglist():
    return render_template('blog_list.html')

@app.route("/contact")
def contact():
    return render_template('contact.html')

@app.route("/product")
def product():
    return render_template('product.html')

@app.route("/testimonial")
def testimonial():
    return render_template('testimonial.html')
