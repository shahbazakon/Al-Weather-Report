# WeatherWise AI 🌦️✨

An intelligent weather application powered by **Google Gemini AI**, **Firebase**, and **OpenWeather API** that delivers real-time weather data with AI-driven personalized suggestions.

---

## Screenshots 📸

| **Splash Screen**                                                                                     | **Login Screen**                                                                                     | **Registration Screen**                                                                                     |
|------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
| <img src="https://github.com/user-attachments/assets/61522c70-5d4d-4ed6-b05f-d04a7c6a65e2" width="300" height="550"> | <img src="https://github.com/user-attachments/assets/77c32dd8-dba7-4759-960f-7788eedc5f3b" width="300" height="550"> | <img src="https://github.com/user-attachments/assets/cf3e76fb-9ef4-4361-9b8f-1ffae501f434" width="300" height="550"> |

| **Search Weather by City**                                                                                     | **AI Suggestions on Weather**                                                                                     | **AI Alerts**                                                                                     |
|-----------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|
| <img src="https://github.com/user-attachments/assets/73523697-d26c-470b-a4f0-2b58bfecf006" width="300" height="550">         | <img src="https://github.com/user-attachments/assets/c7060233-00e5-4d6d-9bab-047e57963e79" width="300" height="550"> | <img src="https://github.com/user-attachments/assets/c8185995-dca1-4ecc-a4d1-1ac4cd01a28b" width="300" height="550"> |

---
---

## Functionality 🛠️

### **1. Splash Screen**
- Displays a welcoming animation and app branding.
- Ensures the app is ready for user interaction.

### **2. Login Screen**
- Allows users to log in securely using **Firebase Authentication**.
- Supports email/password and Google Sign-In.

### **3. Registration Screen**
- Enables new users to create an account.
- Stores user data securely in **Firebase Firestore**.

### **4. Home Screen - Search Weather by City**
- Users can search for weather by entering a city name.
- Displays real-time weather data including temperature, humidity, wind speed, and conditions.

### **5. AI Suggestions on Weather**
- **Google Gemini AI** provides personalized recommendations based on current weather conditions.
- Examples: "It's sunny! Perfect day for a picnic." or "Rain expected in 2 hours. Carry an umbrella."

### **6. AI Alerts**
- Proactively alerts users about severe weather conditions.
- Examples: "Heavy rain alert! Avoid outdoor activities." or "Heatwave warning! Stay hydrated."

---

## Supported Platforms 🌍

| **Android** | **iOS** | **Web** | **MacOS** | **Linux** | **Windows** |
| :---------: | :-----: | :-----: | :-------: | :-------: | :---------: |
|     ✔️      |   ✔️    |   ✔️    |    ✔️     |    ✖️     |     ✖️      |

---

## 📚 Dependencies

| **Name**                                                                 | **Version** | **Description**                                                                                   |
|-------------------------------------------------------------------------|-------------|---------------------------------------------------------------------------------------------------|
| [firebase_core](https://pub.dev/packages/firebase_core)                 | 2.15.1      | Flutter plugin for Firebase Core, enabling connecting to multiple Firebase apps.                 |
| [firebase_auth](https://pub.dev/packages/firebase_auth)                 | 4.7.3       | Flutter plugin for Firebase Auth, enabling authentication using passwords, phone numbers, etc.   |
| [geolocator](https://pub.dev/packages/geolocator)                       | 10.0.0      | A Flutter geolocation plugin for accessing platform-specific location services.                  |
| [dio](https://pub.dev/packages/dio)                                     | 5.3.2       | A powerful HTTP client for Dart, supporting Interceptors, FormData, Request Cancellation, etc.   |
| [flutter_svg](https://pub.dev/packages/flutter_svg)                     | 2.0.7       | An SVG rendering and widget library for Flutter.                                                 |
| [bloc](https://pub.dev/packages/bloc)                                   | 8.1.2       | A predictable state management library for implementing the BLoC design pattern.                 |
| [flutter_bloc](https://pub.dev/packages/flutter_bloc)                   | 8.1.3       | Widgets for integrating blocs and cubits into Flutter.                                           |
| [intl](https://pub.dev/packages/intl)                                   | 0.18.1      | Provides internationalized/localized messages, date and number formatting, and more.             |
| [hive](https://pub.dev/packages/hive)                                   | 2.2.3       | A lightweight and fast key-value database written in pure Dart.                                  |
| [hive_flutter](https://pub.dev/packages/hive_flutter)                   | 1.1.0       | Hive integration for Flutter.                                                                    |
| [collection](https://pub.dev/packages/collection)                       | 1.19.0      | Utility functions and classes for working with collections in Dart.                              |
| [google_generative_ai](https://pub.dev/packages/google_generative_ai)   | 0.4.6       | A Dart package for integrating Google's Generative AI models into your application.              |

---

## 📦 Installation

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/)
- [Firebase](https://firebase.google.com/) for authentication
- [OpenWeatherMap](https://openweathermap.org/) API key
- [Google Gemini](https://ai.google.dev/) API key

### Building and Running

1. Clone the project:
   ```bash
   git clone https://github.com/yourusername/weatherwise-ai.git
   cd weatherwise-ai
   ```

2. Add your API keys to the `lib/secrets.dart` file:
   ```dart
   const String openWeatherMapApiKey = "YOUR_OPENWEATHER_API_KEY";
   const String googleGeminiApiKey = "YOUR_GEMINI_API_KEY";
   ```

3. Set up Firebase:
   - Create a Firebase project on the [Firebase Console](https://console.firebase.google.com/).
   - Follow the instructions to add Firebase to your Flutter app.
   - Enable the Email/Password sign-in method in the Firebase Console.

4. Install dependencies:
   ```bash
   flutter pub get
   ```

5. Run the app:
   ```bash
   flutter run
   ```

---

**Made with ❤️ by <a href="https://github.com/shahbazakon"> Mohd Shahbaz </a>**  

---

Let me know if you need further changes! 😊
