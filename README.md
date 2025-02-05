# Project Backend Server

## Overview
This is a Node.js Express backend server with MySQL database integration, designed to support a web application with user management, authentication, and various business-specific features.

## Technology Stack
- **Backend Framework**: Express.js
- **Database**: MySQL
- **Authentication**: Session-based, JWT
- **Additional Libraries**:
  - `bcrypt` for password hashing
  - `multer` for file uploads
  - `node-cron` for scheduled tasks
  - `express-session` for session management

## Features
- User Authentication
- User Registration
- Payment Processing
- Withdrawal Management
- User Referral System
- Product Tracking
- Scheduled Database Maintenance

## Prerequisites
- Node.js (v14+ recommended)
- MySQL Database
- npm or yarn

## Installation

1. Clone the repository
```bash
git clone <your-repo-url>
cd Server
```

2. Install dependencies
```bash
npm install
```

3. Configure Environment
- Copy `.env.example` to `.env`
- Update database credentials in the configuration

## Database Setup
- Database Name: `beta`
- Required Tables: 
  - `users`
  - `user_button_clicks`
  - `user_product_clicks`
  - `notifications`
  - `accounts_history`

## Running the Server
```bash
npm start
```
The server will run on `http://localhost:8082`

## Key Endpoints
- `/login`: User authentication
- `/payment-crypto`: Cryptocurrency payment processing
- `/withdraw`: Withdrawal request handling
- `/approved-users`: Fetch approved users
- `/trackButton`: Track user button interactions

## Scheduled Tasks
A daily cron job runs at 23:58 to:
- Reset `today_team` for users
- Clear `user_button_clicks`
- Delete old `user_product_clicks`

## Security Notes
- Uses session-based authentication
- Implements basic input validation
- Supports CORS for frontend integration

## Environment Variables
Ensure the following are set in your `.env`:
- `DATABASE_HOST`
- `DATABASE_USER`
- `DATABASE_PASSWORD`
- `SESSION_SECRET`

## Contribution
Please read the contribution guidelines before submitting pull requests.

## License
ISC License
# BetaEarn
