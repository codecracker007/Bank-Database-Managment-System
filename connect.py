# importing libraries
import psycopg2
  
# a function to connect to
# the database.
def connect():
  
    # connecting to the database called test
    # using the connect function
    try:
  
        conn = psycopg2.connect(database ="bank_management", 
                            user = "postgres", 
                            password = "idkmaybe", 
                            host = "localhost", 
                            port = "5432")
  
        # creating the cursor object
        cur = conn.cursor()
      
    except (Exception, psycopg2.DatabaseError) as error:
          
        print ("Error while creating PostgreSQL table", error)
      
  
    # returing the conn and cur
    # objects to be used later
    return conn, cur
  

   

  
# a function to fetch the data 
# from the table
def fetch_data_query(query):
    fin_query = str(query)
    conn, cur = connect()
  
    # select all the rows from emp
    try:
        cur.execute(fin_query)
      
    except:
        print('error !')
  
    # store the result in data
    data = cur.fetchall()
  
    # return the result
    return data
    
    
  

  
'''def fetch_data_query2(query):
    fin_query = str(query)
    conn, cur = connect()
  
    # select all the rows from emp
    try:
        cur.execute(fin_query)
      
    except:
        print('error !')
  
    # store the result in data
    data = cur.fetchall()
  
    # return the result
    return data

def fetch_data_query3(query):
    fin_query = str(query)
    conn, cur = connect()
  
    # select all the rows from emp
    try:
        cur.execute(fin_query)
      
    except:
        print('error !')
  
    # store the result in data
    data = cur.fetchall()
  
    # return the result
    return data
def fetch_data_query4(query):
    fin_query = str(query)
    conn, cur = connect()
  
    # select all the rows from emp
    try:
        cur.execute(fin_query)
      
    except:
        print('error !')
  
    # store the result in data
    data = cur.fetchall()
  
    # return the result
    return data
def fetch_data_query5(query):
    fin_query = str(query)
    conn, cur = connect()
  
    # select all the rows from emp
    try:
        cur.execute(fin_query)
      
    except:
        print('error !')
  
    # store the result in data
    data = cur.fetchall()
  
    # return the result
    return data
def fetch_data_query6(query):
    fin_query = str(query)
    conn, cur = connect()
  
    # select all the rows from emp
    try:
        cur.execute(fin_query)
      
    except:
        print('error !')
  
    # store the result in data
    data = cur.fetchall()
  
    # return the result
    return data
def fetch_data_query7(query):
    fin_query = str(query)
    conn, cur = connect()
  
    # select all the rows from emp
    try:
        cur.execute(fin_query)
      
    except:
        print('error !')
  
    # store the result in data
    data = cur.fetchall()
  
    # return the result
    return data
def fetch_data_query8(query):
    fin_query = str(query)
    conn, cur = connect()
  
    # select all the rows from emp
    try:
        cur.execute(fin_query)
      
    except:
        print('error !')
  
    # store the result in data
    data = cur.fetchall()
  
    # return the result
    return data
def fetch_data_query9(query):
    fin_query = str(query)
    conn, cur = connect()
  
    # select all the rows from emp
    try:
        cur.execute(fin_query)
      
    except:
        print('error !')
  
    # store the result in data
    data = cur.fetchall()
  
    # return the result
    return data
'''

