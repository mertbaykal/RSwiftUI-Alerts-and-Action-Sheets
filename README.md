# RSwiftUI-Alerts-and-Action-Sheets
This repository contains a SwiftUI project demonstrating the usage of alerts, action sheets, and context menus. The project showcases how to create and handle these interactive elements to enhance user experience in a SwiftUI application.
### Repository: SwiftUI Alerts and Action Sheets


---

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Components](#components)
- [Contributing](#contributing)
- [License](#license)

---

## Installation
To clone and run this project locally, follow these steps:

1. **Clone the repository:**
   ```sh
   git clone https://github.com/username/AlertUsing.git
   ```

2. **Navigate to the project directory:**
   ```sh
   cd AlertUsing
   ```

3. **Open the project in Xcode:**
   ```sh
   open AlertUsing.xcodeproj
   ```

4. **Run the project:**
   In Xcode, select the target device and click the 'Run' button.

---

## Usage
The project includes a simple SwiftUI view with buttons to trigger alerts, action sheets, and a context menu. Each button showcases different types of alerts and action sheets with various actions and roles.

---

## Components

### ContentView
`ContentView` demonstrates the usage of alerts, action sheets, and context menus. It includes three main components:

1. **Alert Button:**
   This button triggers a standard alert with a title, message, and two actions (cancel and destructive).

   ```swift
   Button("Alert") {
       alert = true
   }.alert("Title", isPresented: $alert, actions: {
       Button("Cancel", role: .cancel) {
           print("Cancel selected")
       }
       Button("OK", role: .destructive) {
           print("OK selected")
       }
   }, message: { Text("Content") })
   ```

2. **Action Sheet Button:**
   This button triggers an action sheet with a title, message, and two actions (default and cancel).

   ```swift
   Button("Action Sheet") {
       actionAlert = true
   }.actionSheet(isPresented: $actionAlert) {
       ActionSheet(title: Text("Title"), message: Text("Action Sheet usage"), buttons: [
           .default(Text("OK")) {
               print("OK")
           },
           .cancel(Text("Cancel")) {
               print("Cancel")
           }
       ])
   }
   ```

3. **Context Menu:**
   This text view provides a context menu with options to select an image or video.

   ```swift
   Text("Context Menu")
       .contextMenu {
           Button {
               print("Image selected")
           } label: {
               Label("Take Photo", systemImage: "camera")
           }
           Button {
               print("Video selected")
           } label: {
               Label("Record Video", systemImage: "video")
           }
       }
   ```

---

## Contributing
If you would like to contribute to this project, please create a pull request or open an issue. We welcome all feedback and contributions!

---

## License
This project is licensed under the MIT License. For more information, please see the `LICENSE` file.

---

You can copy and paste this content into your GitHub repository's README file.
