#!/usr/bin/env python3.9
import os
import datetime
from unicodedata import name
import boto3
s3 = boto3.client('s3')

today = datetime.date.today()
text = 'This container was created on ' + str(today) + '.'

with open("Created.txt","w") as file:
    file.write(text)

response = s3.put_object(
    Bucket='dockerproject121587',
    Key='Created.txt',
    Body=text
)