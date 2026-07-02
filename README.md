# 📚 Library Management System

A full-featured Library Management System with separate portals for **Librarians** and **Students**.

## Quick Start

**Double-click `START.bat`** in the project folder. It will:
1. Install all dependencies (first run only)
2. Build the website
3. Seed the database
4. Start the app at **http://localhost:7890**

## Demo Accounts

| Role | Email | Password |
|------|-------|----------|
| Librarian | librarian@library.com | librarian123 |
| Student | student@demo.com | student123 |

## Features

### Librarian Portal
- **Manage Books** — Add/remove books, track available copies
- **Manage Students** — View all students, their borrowings, fines; remove students
- **Issue/Return Books** — Issue books to students, process returns (auto-calculates overdue fines at ₹5/day)
- **Upload PDF Notes** — Share digital study materials with all students
- **Send Notifications** — Notify all students or specific individuals

### Student Portal
- **Browse Books** — View catalog with availability count, reserve books
- **My Borrowings** — See borrowed books, due dates, fines, and reservations
- **Download Notes** — Download PDFs uploaded by librarian
- **AI Assistant Chatbot** — Ask about borrowings, fines, due dates; upload/paste PDF text to ask questions
- **Notifications** — View messages from librarian

## Tech Stack

- **Frontend:** React + Vite
- **Backend:** Node.js + Express
- **Database:** SQLite (stored in `%LOCALAPPDATA%\LMS-230626` for stability)
- **Auth:** JWT tokens with bcrypt password hashing

## Manual Setup

```bash
npm run install:all
npm run build
npm start
```

App runs at: **http://localhost:7890**

For development with hot reload:
```bash
npm run dev
```
- Frontend dev: http://localhost:7891
- Backend API: http://localhost:7890
