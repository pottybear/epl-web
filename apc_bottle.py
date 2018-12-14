import sqlite3
import bottle

@bottle.route('/')
def mainpage():
    conn = sqlite3.connect("/home/ubuntu/epl/epl.db")
    cur = conn.cursor()
    cur.execute("select league,Date,Vs,Appearance,Result,Rating,Goal,Assist,Sh,ShT,Yel,Red from son order by id desc limit 5")
    result = cur.fetchall()
    cur.execute("select league,Date,Vs,Appearance,Result,Rating,Goal,Assist,Sh,ShT,Yel,Red from ki order by id desc limit 5")
    result = result + cur.fetchall()
    cur.execute("select league,Date,Vs,Appearance,Result,Rating,Goal,Assist,Sh,ShT,Yel,Red from hhc order by id desc limit 5")
    result = result + cur.fetchall()

    output = bottle.template("/home/ubuntu/epl/htmlcss.tpl",rows = result)
    return output 
