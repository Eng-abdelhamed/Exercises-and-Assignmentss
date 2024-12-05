from bs4 import BeautifulSoup
import requests
import pandas as pd
url = 'https://en.wikipedia.org/wiki/List_of_largest_companies_in_the_United_States_by_revenue'
page = requests.get(url)
soup =  BeautifulSoup(page.text,'lxml')
table = soup.find('table', {'class': 'wikitable'})

headers  =[headers.text.strip() for headers in table.find_all('th')] 

rows = table.find_all('tr')

data =[]
for i in rows[1:]:
    cols = i.find_all('td')
    cols = [ele.text.strip() for ele in cols]
    data.append([ele for ele in cols if ele])






table2 =  soup.find_all('table',{'class':'wikitable'}) # table1

headers2 = [heade.text.strip() for heade in table2[1].find_all('th')]

rows2 =  table2[1].find_all('tr')

data2 = []
for i in rows2[1: ]:
    col =  i.find_all('td')
    col =  [ele.text.strip() for ele in col]
    data2.append([ele for ele in col if ele])



headers3 =[heade.text.strip() for heade in table2[2].find_all('th')] 
print(headers3)

rows = table2[2].find_all('tr')

data3 =[]
for i in rows[1: ]:
    col =  i.find_all('td')
    col =  [ele.text.strip() for ele in col]
    data3.append([ele for ele in col if ele])

pff = pd.DataFrame(data3,columns=headers3)    
print(pff)

pff.to_csv('ThirdTable.csv',index = False)