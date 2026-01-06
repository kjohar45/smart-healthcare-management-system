from sqlalchemy.orm import Session
from backend.database import SessionLocal
from backend import models
from fastapi import FastAPI

app = FastAPI(title="Smart Healthcare Management System")

@app.get("/")
def read_root():
    return {"message": "Backend is running"}

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
from fastapi import Depends

@app.post("/users")
def create_user(name: str, email: str, password: str, db: Session = Depends(get_db)):
    user = models.User(name=name, email=email, password=password)
    db.add(user)
    db.commit()
    db.refresh(user)
    return user
@app.post("/appointments")
def book_appointment(user_id: int, doctor_id: int, db: Session = Depends(get_db)):
    appointment = models.Appointment(
        user_id=user_id,
        doctor_id=doctor_id,
        status="Scheduled"
    )
    db.add(appointment)
    db.commit()
    db.refresh(appointment)
    return appointment
@app.post("/payments")
def make_payment(appointment_id: int, amount: float, method: str, db: Session = Depends(get_db)):
    payment = models.Payment(
        appointment_id=appointment_id,
        amount=amount,
        payment_method=method
    )
    db.add(payment)
    db.commit()
    db.refresh(payment)
    return payment

