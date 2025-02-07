# Weather

Flutter Weather App using OpenWeatherMap API and Bloc Pattern.

## 📱 Platforms

| Android | iOS | Web | MacOS | Linux | Windows |
| :-----: | :-: | :-: | :---: | :---: | :-----: |
|   ✔️    | ✔️  | ✔️  |  ✔️   |  ✖️   |   ✖️    |



## 📚 Dependencies

| Name                                                    | Version | Description                                                                                                                                                          |
| ------------------------------------------------------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [firebase_core](https://pub.dev/packages/firebase_core) | 2.15.1  | Flutter plugin for Firebase Core, enabling connecting to multiple Firebase apps.                                                                                     |
| [firebase_auth](https://pub.dev/packages/firebase_auth) | 4.7.3   | Flutter plugin for Firebase Auth, enabling Android and iOS authentication using passwords, phone numbers and identity providers like Google, Facebook and Twitter.   |
| [geolocator](https://pub.dev/packages/geolocator)       | 10.0.0  | A Flutter geolocation plugin which provides easy access to platform specific location services.                                                                      |
| [dio](https://pub.dev/packages/dio)                     | 5.3.2   | A powerful Http client for Dart, which supports Interceptors, FormData, Request Cancellation, File Downloading, Timeout etc.                                         |
| [flutter_svg](https://pub.dev/packages/flutter_svg)     | 2.0.7   | An SVG rendering and widget library for Flutter, which allows painting and displaying Scalable Vector Graphics 1.1 files.                                            |
| [bloc](https://pub.dev/packages/bloc)                   | 8.1.2   | A predictable state management library that helps implement the BLoC (Business Logic Component) design pattern.                                                      |
| [flutter_bloc](https://pub.dev/packages/flutter_bloc)   | 8.1.3   | Widgets that make it easy to integrate blocs and cubits into Flutter. Built to work with [package:bloc](https://pub.dev/packages/bloc).                              |
| [intl](https://pub.dev/packages/intl)                   | 0.18.1  | Contains code to deal with internationalized/localized messages, date and number formatting and parsing, bi-directional text, and other internationalization issues. |
| [hive](https://pub.dev/packages/hive)                   | 2.2.3   | Hive is a lightweight and blazing fast key-value database written in pure Dart.                                                                                      |
| [hive_flutter](https://pub.dev/packages/hive_flutter)   | 1.1.0   | Hive is a lightweight and blazing fast key-value database written in pure Dart.                                                                                      |

## 📦 Installation

### Prerequisites

-   [Flutter](https://flutter.dev/docs/get-started/install)
-   [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/)
-   [Firebase](https://firebase.google.com/) for authentication
-   [OpenWeatherMap](https://openweathermap.org/) API key

### Building and running

In order to build and run the project, follow these steps:

1. Clone the project

```bash
git clone https://github.com/shokhrukhbekyuldoshev/weather.git
```

2. Open the project

```bash
cd weather
```

3. Add your OpenWeatherMap API key to the `lib/secrets.dart` file.

```dart
const String openWeatherMapApiKey = {YOUR_API_KEY};
```

4. Create a Flutter project on Firebase console and follow the instructions to add Firebase to your Flutter app.

5. Enable Email/Password sign-in method on Firebase console.

6. Install dependencies

```bash
dart pub get
```

7. Run the app

```bash
flutter run
```

=



