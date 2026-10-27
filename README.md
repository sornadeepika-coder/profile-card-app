# Profile Card App 📱

A modern, responsive, and beginner-friendly single-screen profile card application built with **Flutter** and **Dart** for an online app development internship project.

---

## 📋 Table of Contents
- [Project Overview](#-project-overview)
- [Features](#-features)
- [Widgets Implemented](#-widgets-implemented)
- [Project Structure](#-project-structure)
- [Prerequisites](#-prerequisites)
- [How to Run and Verify the App](#-how-to-run-and-verify-the-app)
- [Running Automated Tests](#-running-automated-tests)
- [GitHub Upload Guide](#-github-upload-guide)
- [Project Requirements Checklist](#-project-requirements-checklist)

---

## 🌟 Project Overview

The **Profile Card App** displays an elegant personal profile card for **Sorna Deepika**, a Computer Science Engineering Student. The project is designed strictly using core Flutter widgets (`Column`, `Row`, `Container`, `Text`) following modern **Material 3** guidelines, ensuring a clean visual hierarchy, subtle card elevation, rounded corners, and a responsive layout that prevents overflow across different screen dimensions.

---

## ✨ Features

- **Material 3 Design:** Configured with `useMaterial3: true`, utilizing a cohesive color scheme (indigo & soft slate background).
- **Circular Avatar:** Prominently displays the initials **"SD"** centered within an elevated circular badge.
- **Profile Name:** Bold typography presenting the name **"Sorna Deepika"**.
- **Role Badge:** Styled chip badge displaying **"Computer Science Engineering Student"**.
- **Styled Contact Rows:**
  - 📧 **Email:** `deepika@example.com` (`Icons.email_outlined`)
  - 📞 **Phone:** `+91 98765 43210` (`Icons.phone_outlined`)
  - 📍 **Location:** `Tamil Nadu, India` (`Icons.location_on_outlined`)
- **Responsive Layout:**
  - `BoxConstraints(maxWidth: 400)` keeps the card aesthetic on web, tablets, and phones.
  - `SingleChildScrollView` prevents RenderFlex bottom overflows in landscape mode or small devices.
  - `Expanded` widgets on contact rows prevent text clipping and horizontal overflow.
- **No External Bloat:** Built purely with Flutter SDK and Dart, maintaining zero unnecessary package dependencies.

---

## 🧱 Widgets Implemented

| Widget | Purpose in App |
| :--- | :--- |
| **`Container`** | Provides card decoration, background colors, borders, paddings, and subtle drop shadows. |
| **`Column`** | Stacks the avatar, profile details, divider, and contact rows vertically. |
| **`Row`** | Aligns the contact icons and textual information side-by-side inside each tile. |
| **`Text`** | Displays the avatar initials, profile name, role, labels, and contact values with custom typography. |
| **`SingleChildScrollView`** | Ensures the entire profile view scrolls gracefully without overflow on smaller screens. |
| **`CircleAvatar`** | Houses the student initials "SD" inside a clean circular background. |
| **`Scaffold`** | Provides the primary structure and top `AppBar`. |

---

## 📂 Project Structure

```text
PROFILE_CARD_APP/
├── .gitignore               # Standard Flutter ignore rules
├── analysis_options.yaml    # Flutter linting and code quality rules
├── pubspec.yaml             # Flutter project manifest and dependencies
├── README.md                # Project documentation and internship report
├── lib/
│   └── main.dart            # Complete application source code
├── test/
│   └── widget_test.dart     # Automated tests verifying UI and widget layout
└── web/
    ├── index.html           # Web runner harness
    └── manifest.json        # Web metadata configuration
```

---

## ⚙️ Prerequisites

Before running the application, make sure the following are installed on your machine:

1. **Flutter SDK:** Version `3.0.0` or higher.
   - [Download Flutter SDK](https://docs.flutter.dev/get-started/install)
2. **Dart SDK:** Bundled automatically with Flutter.
3. **Target Device / Emulator:**
   - Google Chrome (easiest way to test without an emulator)
   - Android Studio / Android Emulator
   - Or a physical Android/iOS phone connected via USB debugging

Verify your setup by running:
```bash
flutter doctor
```

---

## 🚀 How to Run and Verify the App

### Step 1: Open Terminal in Project Directory
Ensure your terminal is in the project root:
```bash
cd "c:\Users\welcome\OneDrive\Desktop\PROJECTS\PROFILE_CARD_APP"
```

### Step 2: Fetch Dependencies
Download the standard Flutter packages:
```bash
flutter pub get
```

### Step 3: Run the Application

#### Option A: Run in Chrome Browser (Quickest & Recommended)
```bash
flutter run -d chrome
```

#### Option B: Run on Android Emulator or Connected Device
```bash
flutter devices
flutter run
```

#### Option C: Run in Visual Studio Code
1. Open the `PROFILE_CARD_APP` folder in VS Code.
2. Ensure the Flutter extension is installed.
3. Open `lib/main.dart`.
4. Press `F5` or click **Run > Start Debugging**.

---

## 🧪 Running Automated Tests

To verify that all required widgets, texts, and icons are properly placed without running an emulator:

```bash
flutter test
```

This executes `test/widget_test.dart` and validates:
- [x] Initial avatar text: `"SD"`
- [x] Profile name: `"Sorna Deepika"`
- [x] Role subtitle: `"Computer Science Engineering Student"`
- [x] Email, Phone, and Location strings
- [x] Presence of Material 3 icons for email, phone, and location

---

## 📤 GitHub Upload Guide

To publish this project to your GitHub account:

1. **Initialize Git repository (if not already done):**
   ```bash
   git init
   git add .
   git commit -m "feat: complete Profile Card App implementation"
   ```

2. **Create a new repository on GitHub:**
   - Go to [GitHub.com](https://github.com) -> New repository.
   - Name it `profile_card_app`.
   - Leave "Initialize with README" unchecked.

3. **Link remote repository and push:**
   ```bash
   git branch -M main
   git remote add origin https://github.com/<your-username>/profile_card_app.git
   git push -u origin main
   ```

---

## 📝 Project Requirements Checklist

| Requirement | Status | Notes |
| :--- | :---: | :--- |
| Profile Card App name | ✅ | Configured in `pubspec.yaml`, `AppBar`, and `MaterialApp` |
| Circular avatar with initials "SD" | ✅ | Implemented using `CircleAvatar` inside styled circular `Container` |
| Profile Name: "Sorna Deepika" | ✅ | Bold headline styling |
| Role: "Computer Science Engineering Student" | ✅ | Styled chip container |
| Contact Row: deepika@example.com | ✅ | `Icons.email_outlined` |
| Contact Row: +91 98765 43210 | ✅ | `Icons.phone_outlined` |
| Contact Row: Tamil Nadu, India | ✅ | `Icons.location_on_outlined` |
| Widgets: Column, Row, Container, Text | ✅ | Core building blocks of the UI |
| Responsive Layout without overflow | ✅ | `SingleChildScrollView`, `BoxConstraints`, `Expanded` |
| Material 3 & Soft Background | ✅ | `useMaterial3: true`, slate background `0xFFF1F5F9` |
| No external packages / backend | ✅ | Only standard Flutter SDK used |
| Single-file entry `lib/main.dart` | ✅ | Cleanly organized and commented |

---

### Author
**Sorna Deepika**  
*Computer Science Engineering Student*
