#-*- coding:utf-8 -*-
import requests
from bs4 import BeautifulSoup as bs
import dateutil.parser
import re
import sqlite3
import dateutil.relativedelta 

url = "https://www.skysports.com/tottenham-hotspur-results"
response = requests.get(url)
source = response.content
parser = bs(source,"html.parser")
objlink = parser.find("div",{"class":"fixres__item"}).find("a",href=True)["href"]

#updating rating data to epl.db
response2 = requests.get(objlink)
source2 = response2.content
parser2 = bs(source2,"html.parser")

UpdatedDate = parser2.find("div",{"class":"article__header-details"}).find("p",{"class":"article__header-date-time"}).text[14:]
UpdatedDate = UpdatedDate[3:6] + UpdatedDate[:2] + UpdatedDate[5:]
UpdatedDate = str(dateutil.parser.parse(UpdatedDate))[2:][:8].replace("-",".") 

conn = sqlite3.connect("/home/ubuntu/epl/epl.db")
cur = conn.cursor()
cur.execute("select date from son order by id desc limit 1")
dbdate = cur.fetchone()
dbdate = "20" + dbdate[0]
dbdate_plus = str(dateutil.parser.parse(dbdate) + dateutil.relativedelta.relativedelta(days=+1))[2:][:8].replace("-",".")
dbdate = dbdate[2:]


if UpdatedDate in [dbdate,dbdate_plus] :
    p = re.compile(r",\sson\s\((?P<Ratingobj>\d)\)",re.I) #Crawling Player's rating and MOM data contents with re module 

    try:
        rating = p.findall(source2.decode("utf-8"))[0]  
        cur.execute("update son set rating = ? where date = ?" , (rating,dbdate))
        conn.commit()
        conn.close()

    except:
        conn.close()
