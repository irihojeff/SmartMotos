SmartMotos Backend & Frontend Setup

This guide provides step-by-step instructions to set up the SmartMotos project on your local machine for development.

Prerequisites

Ensure you have the following installed on your system:

Node.js (v18 or later) - Download

npm (Node Package Manager) - Comes with Node.js

MySQL Server - Download

Flutter SDK - Installation Guide

Android Studio (for Flutter emulator) - Download

1️⃣ Clone the Repository

git clone https://github.com/your-repo/SmartMotos.git
cd SmartMotos

2️⃣ Backend Setup (Node.js + Express.js)

Navigate to the backend directory:

cd backend

Install Dependencies

npm install

Configure Environment Variables

Create a .env file in the backend/ directory:

PORT=5000
DB_NAME=smartmotos_db
DB_USER=root
DB_PASS=your_actual_password
DB_HOST=localhost
JWT_SECRET=your_secret_key

Replace your_actual_password and your_secret_key with actual values.

Database Setup

Ensure MySQL is running, then create the database manually:

CREATE DATABASE smartmotos_db;

Grant permissions (inside MySQL shell):

GRANT ALL PRIVILEGES ON smartmotos_db.* TO 'root'@'localhost' IDENTIFIED BY 'your_actual_password';
FLUSH PRIVILEGES;

Run the Backend Server

npm run dev

Expected output:

✅ Database connected...
🚀 Server running on port 5000

3️⃣ Frontend Setup (Flutter)

Navigate to the frontend directory:

cd ../frontend

Install Dependencies

flutter pub get

Run the Flutter App

Ensure an emulator is running or a physical device is connected:

flutter run

4️⃣ API Endpoints

Authentication:

POST /api/auth/register → Register user

POST /api/auth/login → Login user

User Management:

GET /api/users/ → Get users

5️⃣ Useful Commands

Restart MySQL

sudo systemctl restart mysql

Reset Database (if needed)

mysql -u root -p -e "DROP DATABASE smartmotos_db; CREATE DATABASE smartmotos_db;"

Run Backend in Debug Mode

nodemon src/server.js

6️⃣ Troubleshooting

Database Connection Error?

Ensure MySQL is running: sudo systemctl status mysql

Check .env credentials

Run ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'your_actual_password'; FLUSH PRIVILEGES;

Flutter Issues?

Run flutter doctor to diagnose

Ensure Android Studio and emulator are set up correctly

7️⃣ Contributing

Fork the repository

Create a feature branch (git checkout -b feature-branch)

Commit changes (git commit -m "Add new feature")

Push to GitHub (git push origin feature-branch)

Open a Pull Request

8️⃣ License

This project is licensed under the MIT License.

Now your teammate can follow this guide to set up their environment exactly like yours! 🚀

