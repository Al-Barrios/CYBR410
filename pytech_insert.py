
from pymongo import MongoClient

url = "mongodb+srv://admin:admin@cluster0.cq1azkb.mongodb.net/?retryWrites=true&w=majority"


client = MongoClient(url)

db = client.pytech

Al = {
    "student_id": "1007",
    "first_name": "Al",
    "last_name": "Barrios",
    
}


John = {
    "student_id": "1008",
    "first_name": "John",
    "last_name": "Doe",
    
}

Jane = {
    "student_id": "1009",
    "first_name": "Jane",
    "last_name": "Doe",
   
}


students = db.students


print("\n  -- INSERT STATEMENTS --")
Al_student_id = students.insert_one(Al).inserted_id
print("  Inserted student record Al Barrios into the students collection with document_id " + str(Al_student_id))

John_student_id = students.insert_one(John).inserted_id
print("  Inserted student record John Doe into the students collection with document_id " + str(John_student_id))

Jane_student_id = students.insert_one(Jane).inserted_id
print("  Inserted student record Jane Doe into the students collection with document_id " + str(Jane_student_id))

input("\n\n  End of program, press any key to exit... ")