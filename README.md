Smart Healthcare Management System

This project is a backend-focused healthcare management system developed as a final-year major project. The objective of the system is to design a reliable and structured backend that can manage healthcare-related data such as users, doctors, appointments, payments, and medical records in a secure and consistent manner.

The project primarily focuses on database design and backend workflows rather than user interface development. Emphasis has been placed on creating a well-normalized relational database, enforcing data integrity through constraints, and automating critical operations using database-level mechanisms.

The backend is designed using FastAPI and connects to a PostgreSQL database. The system follows a role-based structure where different users such as patients, doctors, and administrators interact with the system through defined workflows. Core functionalities include appointment booking, payment processing, and maintenance of medical interaction history.

A key aspect of this project is the use of database automation. SQL triggers are implemented to handle real-time updates such as changing doctor availability when an appointment is booked and maintaining correct payment states without relying entirely on application logic. Transaction management is used to ensure that critical operations either complete fully or fail safely without leaving the database in an inconsistent state.

The project has been structured to reflect real-world backend system design practices. Clear separation between backend logic, database scripts, and documentation has been maintained to improve scalability and maintainability.

This system demonstrates strong understanding of database management systems, backend development principles, and system design concepts, making it suitable for academic evaluation as well as technical interviews.

Future improvements may include advanced analytics, AI-based symptom analysis, enhanced security features, and cloud-based deployment for scalability.
