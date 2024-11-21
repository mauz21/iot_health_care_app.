
# IoT-Connected Health App Prototype

## Overview of the App
The IoT-Connected Health App Prototype is a Flutter-based application that simulates IoT device integration and real-time data communication over BLE or Wi-Fi. The app is designed for showcasing an intuitive user interface and handling mock IoT connections.

### Key Features
1. Home Screen:
    - Input a device name.
    - Select the connection type (Bluetooth or Wi-Fi).
    - Navigate to the next screen upon submission.
2. Device List Screen:
    - Displays a list of mock IoT devices.
    - Allows the user to "connect" to a device.
3. Data Visualization Screen:
    - Simulates fetching mock sensor data (e.g., heart rate).
    - Displays the data in real-time using an interactive line chart.

## Instructions for Running the App

### Prerequisites
1. Flutter SDK: Ensure you have Flutter installed on your system. Follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install) if not already installed.
2. Dart SDK: Comes with Flutter. Ensure it's set up correctly.
3. Code Editor: Install an IDE such as [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).

### Steps to Run the App
1. Clone the Repository:
   ```bash
   git clone <repository_url>
   cd <repository_name>
   ```

2. Install Dependencies:
   Run the following command to fetch the required dependencies:
   ```bash
   flutter pub get
   ```

3. Run the App:
   Connect a physical device or start an emulator, then execute:
   ```bash
   flutter run
   ```

4. Navigate Through the App:
    - Home Screen: Enter a device name and select the connection type (Bluetooth or Wi-Fi). Click "Submit."
    - Device List Screen: View the list of mock IoT devices. Click "Connect" to proceed.
    - Data Visualization Screen: Observe real-time data updates on an interactive line chart.

---

## Folder Structure
```plaintext
lib/
├── main.dart                      Entry point of the app
├── screens/                       Contains all screens
│   ├── home_screen.dart           Home screen implementation
│   ├── device_list_screen.dart    Device list screen
│   └── data_visualization_screen.dart # Data visualization screen
```

---

## Features Used
- Flutter Widgets: `TextField`, `DropdownButton`, `ListView`, `SfCartesianChart` (Syncfusion).
- State Management: Managed with `setState` for simplicity.
- Mock Data: Simulates BLE/Wi-Fi connections and real-time sensor updates.

