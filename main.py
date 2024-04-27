# from flask import Flask
from flask import Flask, render_template, redirect, url_for, request, session, flash
from flask_wtf import FlaskForm
from wtforms import StringField,PasswordField,SubmitField, RadioField
from wtforms.validators import DataRequired, Email, ValidationError
from flask_mysqldb import MySQL


app = Flask(__name__)

app.config['MYSQL_HOST'] =  'localhost'
app.config['MYSQL_USER'] = 'admin'
app.config['MYSQL_PASSWORD'] = 'Admin.51214'
app.config['MYSQL_DB'] = 'portfolio'
app.config['MYSQL_PORT'] = 3307
app.secret_key = 'your_secret_key_here'

mysql = MySQL(app)


class registerForm(FlaskForm):
    userName = StringField("UserName", validators=[DataRequired()])
    firstName = StringField("FirstName", validators=[DataRequired()])
    lastName = StringField("LastName", validators=[DataRequired()])
    email = StringField("Email", validators=[DataRequired(), Email()])
    contact_No = StringField("Contact Number", validators=[DataRequired()])
    gender = RadioField("Gender", choices=[('Male', 'Male'), ('Female', 'Female'), ('Other', 'Other')], validators=[DataRequired()])
    submit = SubmitField("Submit")


class loginForm(FlaskForm):
    userName = StringField("UserName", validators=[DataRequired()])
    password = PasswordField("password", validators=[DataRequired()])
    submit = SubmitField("Submit")

 

@app.route("/")
def home():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM user")
    user_data = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM skills")
    skills_data = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM experience")
    exp_data = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM supervision")
    sup_data = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM education")
    edu_data = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM publications")
    pub_data = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM personalinfo")
    prsnl_data = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM res_education")
    res_edu_data = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM fyp")
    fyp_data = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM res_projects")
    res_project_data = cur.fetchall()
    cur.close()

    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM projects")
    project_data = cur.fetchall()
    cur.close()
    return render_template('index.html', user_data = user_data, skills_data = skills_data, exp_data = exp_data, sup_data = sup_data, edu_data = edu_data, pub_data = pub_data, prsnl_data = prsnl_data, res_edu_data = res_edu_data, fyp_data = fyp_data, res_project_data = res_project_data,project_data = project_data)



 

@app.route("/dashboard")
def dashboard():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM user")
    user_data = cur.fetchall()
    cur.close()
    return render_template('dashboard.html', user_data = user_data) 

    

@app.route('/admin', methods=['POST','GET'])
def register():
    form = registerForm()
    if form.validate_on_submit():
        userName = form.userName.data
        firstName = form.firstName.data
        lastName = form.lastName.data
        contact_No = form.contact_No.data
        gender = form.gender.data
        email = form.email.data
        

        # store data into database
        cursor = mysql.connection.cursor()
        cursor.execute('''INSERT INTO registration (userName, firstName, lastName, email, contact_No, gender) VALUES (%s, %s, %s, %s, %s, %s)''', (userName, firstName, lastName, email, contact_No, gender))

        mysql.connection.commit()
        cursor.close()
        return redirect(url_for('login'))

        
    return render_template('admin.html', form=form)

@app.route('/login', methods=['POST','GET'])
def login():
    form = loginForm()
    if form.validate_on_submit():
        userName = form.userName.data
        password = form.password.data

        # Check if the username exists in the registration table
        cursor = mysql.connection.cursor()
        cursor.execute("SELECT * FROM registration WHERE userName = %s", (userName,))
        existing_user_registration = cursor.fetchone()
        cursor.close()

        # Check if the username exists in the user table
        cursor = mysql.connection.cursor()
        cursor.execute("SELECT * FROM user WHERE userName = %s", (userName,))
        existing_user = cursor.fetchone()
        cursor.close()

        print("existing_user_registration:", existing_user_registration)
        print("existing_user:", existing_user)

        if existing_user_registration and not existing_user:
            # If the username exists in registration but not in user, proceed with insertion
            cursor = mysql.connection.cursor()
            cursor.execute('''INSERT INTO user (userName, password) VALUES (%s, %s)''', (userName, password))
            mysql.connection.commit()
            cursor.close()

            # Fetch the newly inserted user from user
            cursor = mysql.connection.cursor()
            cursor.execute("SELECT * FROM user WHERE userName = %s", (userName,))
            user = cursor.fetchone()
            cursor.close()

            session['user_id'] = user[0]
            flash(f'Welcome, {userName}!')
            print("Session user_id:", session['user_id'])
            return redirect(url_for('login'))
        elif existing_user:
             if password == existing_user[4]:
            # If the username already exists in user, proceed with login
                session['user_id'] = existing_user[0]
                flash(f'Welcome, {userName}!')
                print("Session user_id:", session['user_id'])
                return redirect(url_for('dashboard'))
             else:
                flash('Wrong username and password.')
        else:
            flash('Username does not exist. Please register first.')

    return render_template('login.html', form=form)

     
 
@app.route("/edit_profile", methods=['GET', 'POST'])
def edit_profile():
    if 'user_id' not in session:
        # If user is not logged in, redirect them to the login page
        return redirect(url_for('login'))

    if request.method == 'POST':
        try:
            # Get form data
            username = request.form['username']
            title = request.form['title']
            email = request.form['email']
            password = request.form['password']
            
            # Assuming you have a user ID parameter passed to the page
            user_id = request.args.get('user_id')
            
            # Check if the user ID from the session matches the user ID in the request
            if user_id != session['user_id']:
                # If they don't match, it means the user is trying to update someone else's profile
                # You can handle this situation, such as redirecting to an error page or displaying an error message
                return render_template('error.html', error_message="You are not authorized to perform this action.")

            # Update user data in the database
            cur = mysql.connection.cursor()
            cur.execute("UPDATE user SET username = %s, title = %s, email = %s, password = %s WHERE id = %s", (username, title, email, password, user_id))
            mysql.connection.commit()
            cur.close()

            # Redirect to dashboard or any other page
            return redirect(url_for('dashboard'))
        except Exception as e:
            # Handle the exception, you can log it or display an error message
            print(f"An error occurred: {e}")
            # You might want to redirect to an error page or render a template with an error message
            return render_template('error.html', error_message="An error occurred while updating profile.")
    else:
        # Assuming you pass the user data to the edit_profile page
        user_id = request.args.get('user_id')
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM user WHERE id = %s", (user_id,))
        user_data = cur.fetchone()
        cur.close()

        return render_template('edit_profile.html', user_data=user_data)

app.run(debug=True)