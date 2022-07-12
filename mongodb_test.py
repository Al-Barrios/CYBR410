
from pymongo import MongoClient

# MongoDB connection string 
url = "mongodb+srv://admin:admin@cluster0.cq1azkb.mongodb.net/?retryWrites=true&w=majority"


client = MongoClient(url)


db = client.pytech

print(db.list_collection_names)

