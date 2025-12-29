# company_directory_app

A simple yet complete Flutter application built as part of Flutter Sessions 1–5 Assignment from UnlockGen mentorship initiative cohort 1.0.
The app demonstrates core Flutter concepts, API integration, state management using GetX, local storage using SharedPreferences, and form validation.

### 🚀 Features

- Display list of companies fetched from a remote API

- View detailed information for each company

- Mark / unmark companies as favorites (stored locally)

- Persistent favorites using SharedPreferences

- Feedback form with validation

- Loading & error handling

- Navigation using GetX

### Tech Stack

- Flutter

- Dart

- GetX (State management & navigation)

- HTTP (API calls)

- SharedPreferences (Local storage)

### API Used

https://fake-json-api.mock.beeceptor.com/companies

The API returns a list of companies with details such as:

Name, Address, Country, Industry, Employee count, CEO name

name

### 📂 Project Structure (Simplified & Scalable)

lib/
├── main.dart
├── models/
│   └── company.dart
├── controllers/
│   └── company_controller.dart
├── services/
│   ├── api_service.dart
│   └── local_storage_service.dart
├── screens/
│   ├── company_list_screen.dart
│   ├── company_detail_screen.dart
│   └── feedback_screen.dart
├── widgets/
│   ├── company_tile.dart
│   └── loading_indicator.dart
└── utils/
    ├── app_routes.dart
    └── app_validators.dart

### 🧭 App Screens

#### Company List Screen

- Displays companies using ListView

- Favorite toggle support

#### Company Detail Screen

- Shows full company details

- Navigate to feedback form

#### Feedback Screen

- Form with validation

- Displays success message on submit

## Getting Started

To get started with this project, clone the repository and run the app using your preferred Flutter environment.

Contact

Email: motiabe8@gmail.com

Phone: +251 992172455
