import pandas as pd
import sqlite3 as sq
tkr = pd.read_excel('ticker.xlsx')
db = sq.connect('stocks.db')
tkr.to_sql("tkrinfo",db)
db.close()