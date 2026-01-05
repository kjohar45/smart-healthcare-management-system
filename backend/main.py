from fastapi import FastAPI

app = FastAPI(title="Smart Healthcare Management System")

@app.get("/")
def read_root():
    return {"message": "Backend is running"}
