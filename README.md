Fitness App README

IDE Used

Using Android Studio to develop a fitness application offers significant advantages. As the official Android development IDE, it provides a robust set of tools, libraries, and resources tailored for Android app development. With features like the Layout Editor, real-time testing on emulators and devices, and a rich plugin ecosystem, Android Studio streamlines the development process, ensures compatibility with various Android devices, and simplifies UI design. Additionally, access to official Android documentation and community support further accelerates development, making Android Studio the ideal choice for creating a feature-rich and reliable fitness application on the Android platform.


Running the Project
Follow these steps to open and run the fitness app project:

Installation Requirements:

Make sure you have Android Studio installed on your system.
Ensure that you have Flutter and Dart installed. If not, follow the Flutter installation guide: Flutter Installation.
Opening the Project:

Clone this repository to your local machine using Git or download the ZIP file.
Running Pubspec.yaml:

Open the project in Android Studio.
Locate the pubspec.yaml file and right-click on it.
Select "Pub get" to install all the required dependencies.
SDK Version:

Ensure that your Android Studio is configured with the correct Flutter SDK version. You can check and set it in the project settings.
Flutter Upgrade (if needed):

If your Flutter SDK is not up to date, you can run the following command to upgrade:

flutter upgrade


Running the App:

Connect an Android device or start an Android emulator.
Click the "Run" button in Android Studio to build and run the fitness app on your device/emulator.


Purpose of the App
This fitness app follows a minimalist design approach, providing users with relevant data within their screen's span. Please note that certain features such as image utilization and location sharing are currently unavailable in the initial version. Future improvements will address these limitations, as the current progress has encountered some errors affecting the running function of the program.

Firebase Realtime Database
The fitness app uses Firebase Realtime Database due to its real-time synchronization, scalability, and offline support. This ensures that users receive immediate updates and can access their data even without an internet connection. Firebase's robust authentication, integration with popular development tools, and built-in analytics and crash reporting enhance security and development efficiency. Additionally, Firebase's cross-platform compatibility allows developers to create a seamless fitness experience across various devices.

Dependencies
Further implementations can bring about new dependencies. Here are the major dependencies used in the project:

pie_chart: ^5.4.0 - creates pie charts in the app
firebase_core: ^2.24.2 - the core package that provides essential functionality for Firebase integration in Flutter apps.
cloud_firestore: ^4.14.0 - Another flutter package which provides easy access to Firestore, a NoSQL cloud database offered by Firebase. Firestore is often used to store structured data in real time, making it suitable for storing fitness data, user profiles, and other app-related information.


