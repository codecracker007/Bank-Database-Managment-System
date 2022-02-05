from flask import Flask, request, render_template,render_template_string
from connect import *


query1 = "select loan_id,loan_amt from loan where loan_type='Business'"
query2 = "select loan_type, AVG(loan_amt) from loan GROUP BY loan_type"
query3 = "select * from account where acct_no IN (SELECT acct_no FROM account where acct_balance > 75000.00)"
query4 = "select emp_name,emp_id from employee where (working_hrs,mgr_id) in (select working_hrs,mgr_id from employee where emp_name = 'Amol Srivatsava')"
query5 = "select extract(year from start_date) as year, avg(working_hrs) from employee group by year order by year"
query6 = "select BR.br_name,B.b_name from Bank B INNER JOIN BRANCH BR ON B.b_code=BR.bank_code where B.b_name='HDFC Bank'"
query7 = "SELECT CONCAT (d.name , '' , d.relationship,' of ' , e.emp_name) AS dep_relation , d.age from dependents d,employee e WHERE d.employee_id = e.emp_id"

app = Flask(__name__)
sample_query = 'select * from customer'
@app.route('/')
def index():
    return render_template("webpage.html")

@app.route('/query1')
def get1():
	print("CAME HERE")
	data = fetch_data_query(query1)
	print(data)
	return render_template("view1.html",data=data)

@app.route('/query2')
def get2():
	print("CAME HERE")
	data = fetch_data_query(query2)
	print(data)
	return render_template("view1.html",data=data)


@app.route('/query3')
def get3():
	print("CAME HERE")
	data = fetch_data_query(query3)
	print(data)
	return render_template("view1.html",data=data)

@app.route('/query4')
def get4():
	print("CAME HERE")
	data = fetch_data_query(query4)
	print(data)
	return render_template("view1.html",data=data)


@app.route('/query5')
def get5():
	print("CAME HERE")
	data = fetch_data_query(query5)
	print(data)
	return render_template("view1.html",data=data)


@app.route('/query6')
def get6():
	print("CAME HERE")
	data = fetch_data_query(query6)
	print(data)
	return render_template("view1.html",data=data)
	
@app.route('/query7')
def get7():
	print("CAME HERE")
	data = fetch_data_query(query7)
	print(data)
	return render_template("view1.html",data=data)


	
	
app.run(host='0.0.0.0', port=5000)
