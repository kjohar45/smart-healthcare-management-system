Smart Healthcare Management System

This project is a backend-focused healthcare management system developed as a final-year major project. The objective of the system is to design a reliable and structured backend that can manage healthcare-related data such as users, doctors, appointments, payments, and medical records in a secure and consistent manner.

The project primarily focuses on database design and backend workflows rather than user interface development. Emphasis has been placed on creating a well-normalized relational database, enforcing data integrity through constraints, and automating critical operations using database-level mechanisms.

The backend is designed using FastAPI and connects to a PostgreSQL database. The system follows a role-based structure where different users such as patients, doctors, and administrators interact with the system through defined workflows. Core functionalities include appointment booking, payment processing, and maintenance of medical interaction history.

A key aspect of this project is the use of database automation. SQL triggers are implemented to handle real-time updates such as changing doctor availability when an appointment is booked and maintaining correct payment states without relying entirely on application logic. Transaction management is used to ensure that critical operations either complete fully or fail safely without leaving the database in an inconsistent state.

The project has been structured to reflect real-world backend system design practices. Clear separation between backend logic, database scripts, and documentation has been maintained to improve scalability and maintainability.

This system demonstrates strong understanding of database management systems, backend development principles, and system design concepts, making it suitable for academic evaluation as well as technical interviews.

Future improvements may include advanced analytics, AI-based symptom analysis, enhanced security features, and cloud-based deployment for scalability.

Architecture Overview

The system follows a layered backend architecture. The database layer is designed using a normalized relational schema with foreign keys and triggers to enforce business rules. The backend layer is implemented using FastAPI and SQLAlchemy ORM, which maps Python classes to database tables. Application logic interacts with the database through ORM models instead of raw SQL.

Database Design and Automation

The database schema compiler scripts define separate tables for users, doctors, appointments, and payments. Foreign keys are used to maintain referential integrity. Database triggers are implemented to automate critical workflows. Payment status is automatically set when a payment record is inserted, and doctor availability is updated when a new appointment is booked. These rules are enforced at the database level to ensure consistency even if multiple services interact with the database.

Backend Workflow

The backend exposes REST APIs to create users, book appointments, and record payments. Each API opens a database session, performs the required operation using ORM models, and safely commits the transaction. Business rules such as doctor availability and payment state are handled by database triggers rather than application code.

Project Flow Summary

A user is created using the backend API. The user books an appointment with a doctor. When the appointment is created, the doctor’s status is automatically updated. A payment is then recorded for the appointment, and the payment status is automatically managed by the database trigger. This ensures clean separation of concerns and reliable data integrity.

Execution and Deployment

The project is designed to run locally using PostgreSQL and FastAPI. The focus of this implementation is on backend correctness, database design, and automation rather than frontend presentation. The frontend layer can be integrated later on top of the existing APIs.
