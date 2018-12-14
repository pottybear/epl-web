#-*- coding:utf-8 -*-
import requests
from bs4 import BeautifulSoup as bs
import sqlite3
import dateutil.parser # dateutil module refines the date data to the desired value.

#html crawling part
url = "http://www.espnfc.com/player/149945/son-heung-min"
response = requests.get(url)
source = response.content

#html parsing part
parser = bs(source,"html.parser")
navigator = parser.find("div",{"id":"player-appearances-2018"}).find_all("tr")[1] # The latest game content // div(id:??) => tr's second one => td

#data refining part
dic = {"Date":"","League":"","Vs":"","Result":"","Goal":"","Assist":"","Sh":"","ShT":"","Yel":"","Red":"","Appearance":""}
keys = list(dic.keys())

datemaker = navigator.find("td",{"class":"date"}).text 

dic["Date"] = str(dateutil.parser.parse(datemaker))[2:][:8].replace("-",".") # str(parse(datemaker) == (e.g.) 2018-01-01 00:00:00 // -> (changed) 18.01.01 
dic["Vs"] = navigator.find("td",{"class":"oppo"}).text[4:] 

dic["League"] = navigator.find("td",{"class":"comp"}).text
dic["Result"] = navigator.find("td",{"class":"res"}).text 
dic["Appearance"] = navigator.find("td",{"class":"appear"}).text  
dic["Goal"] = navigator.find("td",{"class":"g"}).text   
dic["Assist"] = navigator.find("td",{"class":"a"}).text     
dic["Sh"] = navigator.find("td",{"class":"sh"}).text      
dic["ShT"] = navigator.find("td",{"class":"sg"}).text      
dic["Yel"] = navigator.find("td",{"class":"yc"}).text      
dic["Red"] = navigator.find("td",{"class":"rc"}).text      

#updating database part
Result3 = ["W","D","L","w","d","l"]
if (dic["League"] == "Prem") and (dic["Result"][0] in Result3)  : # Only when latest game is part of the Premier League, follow the code below.
    dic["League"] = "Epl"
    conn = sqlite3.connect("/home/ubuntu/epl/epl.db")
    cur = conn.cursor()
    query1 = "insert into son(Date,League,Vs,Result,Goal,Assist,Sh,ShT,Yel,Red,Appearance) values(?,?,?,?,?,?,?,?,?,?,?)"
    
    cur.execute("select Date from son order by id desc limit 1")
    latestDate = cur.fetchall()[0][0] # cur.fetchall() object generates list containing tuple => cur.fetchall() == [(date data)]
    
    
    if dic["Date"] != latestDate : # When new contents are uploaded, perform this code 
        cur.execute(query1, (dic[keys[0]],dic[keys[1]],dic[keys[2]],dic[keys[3]],dic[keys[4]],dic[keys[5]],dic[keys[6]],dic[keys[7]],dic[keys[8]],dic[keys[9]],dic[keys[10]]))
        conn.commit()
        conn.close()

    conn.close()

