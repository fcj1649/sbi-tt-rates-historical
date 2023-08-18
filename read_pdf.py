# import
from tabula import read_pdf as read_pdf
import pandas as pd

tables = read_pdf("2023/07/2023-07-28-1501.pdf", pages="1")

for record in tables:
    print(record)
    for i in range(len(record)):
        print(record.iloc[i, 0], record.iloc[i, 2])