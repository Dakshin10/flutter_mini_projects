# 🧠 Flutter Quiz App

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge)



</div>

---

## 🎯 Features

### ✨ Core Functionality
- 🎲 **Dynamic Question Shuffling** - Answer options randomized each time
- 📊 **Real-time Scoring** - Instant feedback and score calculation  
- 📈 **Detailed Results** - Complete breakdown of answers and performance
- 🔄 **Restart Capability** - Retake the quiz anytime
- 📱 **Responsive Design** - Optimized for all screen sizes

### 🎨 UI/UX Excellence
- 🌈 **Beautiful Gradients** - Eye-catching purple theme
- 🎭 **Google Fonts Integration** - Premium typography with Lato font
- 🎪 **Smooth Animations** - Engaging user interactions
- 🎨 **Modern Material Design** - Clean, intuitive interface

---



## 🏗️ Architecture Overview

```
📱 Flutter Quiz App
├── 🎮 Quiz Logic & Navigation
├── 🏠 Start Screen
├── ❓ Questions Interface  
├── 🏆 Results & Summary
└── 🧩 Reusable Components
```

### 📁 Project Structure

```
lib/
├── 🚀 main.dart                 # App entry point
├── 🎯 quiz.dart                 # Core quiz logic & navigation
├── 🏠 start_screen.dart         # Welcome screen
├── ❓ questions_screen.dart     # Interactive quiz interface
├── 🏆 results_screen.dart       # Results & detailed summary
├── 🎛️ Components/
│   ├── answer_button.dart       # Custom answer button
│   ├── questions_summary.dart   # Summary container
│   ├── summary_item.dart        # Individual summary item
│   └── question_identifier.dart # Question number indicator
├── 📊 models/
│   └── quiz_question.dart       # Question data model
└── 📚 data/
    └── questions.dart           # Quiz questions dataset
```

---

## 🚀 Getting Started

### 📋 Prerequisites

Before you begin, ensure you have:

- ✅ [Flutter SDK](https://flutter.dev/docs/get-started/install) (Latest stable version)
- ✅ [Dart SDK](https://dart.dev/get-dart) (Included with Flutter)
- ✅ An IDE ([VS Code](https://code.visualstudio.com/), [Android Studio](https://developer.android.com/studio), or [IntelliJ](https://www.jetbrains.com/idea/))
- ✅ Android Studio/Xcode for device testing

### ⚡ Quick Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/flutter-quiz-app.git
   cd flutter-quiz-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add your quiz logo** (Optional)
   ```bash
   # Place your logo at: assets/images/quiz_logo.png
   ```

4. **Update pubspec.yaml** (if adding assets)
   ```yaml
   flutter:
     assets:
       - assets/images/
   ```

5. **Run the app**
   ```bash
   flutter run
   ```

---

## 🎮 How to Use

| Step | Action | Description |
|------|--------|-------------|
| 1️⃣ | **Launch** | Open the app and tap "Start Quiz" |
| 2️⃣ | **Answer** | Select your answer from the shuffled options |
| 3️⃣ | **Progress** | Move through all 6 Flutter questions |
| 4️⃣ | **Results** | View your score and detailed breakdown |
| 5️⃣ | **Repeat** | Tap "Restart Quiz" to try again |

---

## 🛠️ Customization Guide

### 🎨 Adding New Questions

Edit `data/questions.dart` and expand the `questions` list:

```dart
QuizQuestion(
  'What is your new Flutter question?',
  [
    'Correct answer (always first!)', // ✅ Correct
    'Wrong option 1',                 // ❌ Incorrect  
    'Wrong option 2',                 // ❌ Incorrect
    'Wrong option 3',                 // ❌ Incorrect
  ],
),
```

### 🎨 Theme Customization

**Colors** (in `quiz.dart`):
```dart
// Update gradient colors
decoration: BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 83, 14, 163),  // Primary
      Color.fromARGB(255, 132, 23, 205), // Secondary
    ],
  ),
),
```

**Typography**: Change Google Fonts in screen files
```dart
GoogleFonts.lato(
  color: Colors.white,
  fontSize: 24,
  fontWeight: FontWeight.bold,
)
```

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^6.1.0
  
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0
```

---

## 🎯 Quiz Content

The app includes **6 comprehensive Flutter questions** covering:

- 🏗️ **Widget Fundamentals** - Core building blocks
- 🎨 **UI Construction** - Layout and design principles  
- 🔄 **StatefulWidget vs StatelessWidget** - State management concepts
- ⚡ **setState() Usage** - Dynamic UI updates
- 📊 **Data Handling** - Working with data in Flutter widgets
- 🚀 **Best Practices** - Flutter development patterns

---

## 🚧 Future Enhancements

- [ ] ⏱️ **Timer Functionality** - Add countdown timers
- [ ] 🎚️ **Difficulty Levels** - Easy, Medium, Hard modes  
- [ ] 📂 **Question Categories** - Multiple topic areas
- [ ] 💾 **Local Storage** - Save high scores locally
- [ ] 🔊 **Sound Effects** - Audio feedback for interactions
- [ ] ✨ **Enhanced Animations** - Smoother transitions
- [ ] ❓ **Multiple Question Types** - True/false, fill-in-the-blank
- [ ] 🌐 **Online Sync** - Cloud-based question updates
- [ ] 📊 **Analytics Dashboard** - Performance tracking
- [ ] 🏆 **Achievement System** - Unlock badges and rewards

---

### 💡 Have Ideas?
We'd love to hear your suggestions for new features or improvements!

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
