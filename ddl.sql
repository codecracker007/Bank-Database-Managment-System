CREATE DATABASE bank_management;
\c bank_management;

CREATE TABLE bank(
b_addr varchar NOT NULL,
b_name varchar(20) UNIQUE NOT NULL,
b_code INT NOT NULL,
PRIMARY KEY(b_code)
);

CREATE TABLE branch(
br_id varchar(15) NOT NULL,
br_addr varchar NOT NULL,
br_name varchar(20) NOT NULL,
bank_code INT NOT NULL,
PRIMARY KEY(br_id),
FOREIGN KEY(bank_code) references bank(b_code)
);

CREATE TABLE loan(
loan_type varchar(30) NOT NULL,
loan_amt NUMERIC(9,2) NOT NULL,
loan_id INT NOT NULL,
loan_br_id varchar(15) NOT NULL,
PRIMARY KEY(loan_id),
FOREIGN KEY(loan_br_id) references branch(br_id)
);


CREATE TABLE account(
acct_balance NUMERIC(9,2) CHECK (acct_balance > 499.00),
acct_no INT NOT NULL,
savings_acct CHAR(1) NOT NULL,
checking_acct CHAR(1) NOT NULL,
acct_br_id varchar(15) NOT NULL,
PRIMARY KEY(acct_no),
FOREIGN KEY(acct_br_id) references branch(br_id)
);

CREATE TABLE customer(
cust_name varchar(20) NOT NULL,
cust_id INT NOT NULL,
cust_ph varchar(10) UNIQUE NOT NULL,
cust_addr varchar NOT NULL,
PRIMARY KEY(cust_id)
);

CREATE TABLE cust_dependents(
c_dependent INT NOT NULL,
c_id INT NOT NULL,
FOREIGN KEY(c_id) references customer(cust_id),
CONSTRAINT pk_custdependents PRIMARY KEY(c_dependent,c_id)
);

CREATE TABLE payment(
p_date DATE NOT NULL,
p_amt NUMERIC(9,2) NOT NULL DEFAULT 0,
p_no INT NOT NULL,
loan_id INT NOT NULL,
FOREIGN KEY(loan_id) references loan(loan_id),
CONSTRAINT pk_payment PRIMARY KEY(p_no,loan_id)
);

CREATE TABLE employee(
start_date DATE NOT NULL DEFAULT CURRENT_DATE,
emp_name varchar(30) NOT NULL,
emp_id INT NOT NULL,
emp_br_id varchar(15) NOT NULL,
working_hrs INT NOT NULL DEFAULT 1,
mgr_id INT NOT NULL,
PRIMARY KEY(emp_id),
FOREIGN KEY(emp_br_id) references branch(br_id),
FOREIGN KEY(mgr_id) references employee(emp_id)
);


CREATE TABLE dependents(
name varchar(20) NOT NULL,
sex char(1) NOT NULL,
age INT NOT NULL,
relationship varchar NOT NULL,
employee_id INT NOT NULL,
FOREIGN KEY(employee_id) references employee(emp_id),
CONSTRAINT pk_dependents PRIMARY KEY(name,employee_id)
);

CREATE TABLE availed_by(
loan_id INT NOT NULL,
cust_id INT NOT NULL,
FOREIGN KEY(loan_id) references loan(loan_id),
FOREIGN KEY(cust_id) references customer(cust_id),
CONSTRAINT pk_availedby PRIMARY KEY(loan_id,cust_id)
);


CREATE TABLE held_by(
acct_no INT NOT NULL,
cust_id INT NOT NULL,
FOREIGN KEY(acct_no) references account(acct_no),
FOREIGN KEY(cust_id) references customer(cust_id),
CONSTRAINT pk_heldby PRIMARY KEY(acct_no,cust_id)
);





