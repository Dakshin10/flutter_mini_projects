# Flutter Quiz App

A simple, interactive quiz application built with Flutter that tests your knowledge of Flutter framework concepts. The app features a clean UI with gradient backgrounds, custom styling, and dynamic question navigation.

## Features

- **Interactive Quiz Experience**: Navigate through multiple-choice questions with shuffled answer options
- **Dynamic Scoring**: Real-time score calculation and display
- **Results Summary**: Detailed breakdown of correct and incorrect answers
- **Restart Functionality**: Ability to retake the quiz
- **Responsive Design**: Clean, modern UI with gradient backgrounds and custom styling
- **Google Fonts Integration**: Enhanced typography using Google Fonts (Lato)

## App Structure

### Core Components

#### 1. **QuizQuestion Model** (`models/quiz_question.dart`)
- Defines the structure for quiz questions
- Contains question text and list of possible answers
- Includes `getShuffledAnswers()` method to randomize answer order

#### 2. **Main Screens**

**Start Screen** (`start_screen.dart`)
- Welcome screen with app logo and start button
- Clean introduction to the quiz

**Questions Screen** (`questions_screen.dart`)
- Displays current question and answer options
- Handles answer selection and progression
- Uses stateful widget to manage question index

**Results Screen** (`results_screen.dart`)
- Shows final score and detailed summary
- Provides restart functionality
- Displays user answers vs correct answers

#### 3. **Custom Widgets**

**Answer Button** (`answer_button.dart`)
- Reusable button component for answer options
- Custom styling with rounded corners and consistent theming

**Questions Summary** (`questions_summary.dart`)
- Scrollable summary of all questions and answers
- Shows correct vs incorrect responses

**Summary Item** (`summary_item.dart`)
- Individual item component for question summaries
- Visual indicators for correct/incorrect answers

**Question Identifier** (`question_identifier.dart`)
- Circular indicator showing question number
- Color-coded based on answer correctness

## Quiz Content

The app includes 6 Flutter-focused questions covering:
- Widget fundamentals
- UI building concepts
- StatefulWidget vs StatelessWidget
- State management with `setState()`
- Data handling in Flutter widgets

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^latest_version
```

## Getting Started

### Prerequisites
- Flutter SDK installed
- Dart SDK
- An IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd quiz_app
```

2. Install dependencies:
```bash
flutter pub get
```

3. Add quiz logo image:
   - Place your quiz logo image at `assets/images/quiz_logo.png`
   - Update `pubspec.yaml` to include assets:
   ```yaml
   flutter:
     assets:
       - assets/images/
   ```

4. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── quiz.dart                 # Main quiz logic and navigation
├── start_screen.dart         # Welcome screen
├── questions_screen.dart     # Quiz questions interface
├── results_screen.dart       # Results and summary screen
├── answer_button.dart        # Custom answer button widget
├── questions_summary.dart    # Summary container widget
├── summary_item.dart         # Individual summary item
├── question_identifier.dart  # Question number indicator
├── models/
│   └── quiz_question.dart    # Question data model
└── data/
    └── questions.dart        # Quiz questions data
```

## Customization

### Adding New Questions
Edit `data/questions.dart` and add new `QuizQuestion` objects to the `questions` list:

```dart
QuizQuestion(
  'Your question text here?',
  [
    'Correct answer (first option)',
    'Wrong answer 1',
    'Wrong answer 2',
    'Wrong answer 3',
  ],
),
```

**Note**: The first answer in the list is always considered the correct answer.

### Styling Customization
- **Colors**: Modify gradient colors in `quiz.dart`
- **Fonts**: Change Google Fonts in individual screen files
- **Button Styles**: Update styling in `answer_button.dart`
- **Layout**: Adjust margins and spacing in screen components

### UI Themes
The app uses a purple gradient theme with:
- Primary: `Color.fromARGB(255, 83, 14, 163)`
- Secondary: `Color.fromARGB(255, 132, 23, 205)`
- Accent colors for correct/incorrect indicators

## How It Works

1. **Start**: User launches app and sees welcome screen
2. **Quiz Flow**: User progresses through questions, selecting answers
3. **State Management**: App tracks selected answers and current question index
4. **Results**: After all questions, app calculates score and shows detailed summary
5. **Restart**: User can restart quiz to try again

## Key Features Implementation

- **Answer Shuffling**: Each question's answers are shuffled to prevent memorization
- **State Management**: Uses `setState()` for reactive UI updates
- **Dynamic Navigation**: Screen switching based on quiz progress
- **Score Calculation**: Real-time scoring with detailed breakdown
- **Responsive Layout**: Adapts to different screen sizes

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is open source and available under the [MIT License](LICENSE).

## Future Enhancements

- [ ] Add timer functionality
- [ ] Include difficulty levels
- [ ] Add more question categories
- [ ] Implement local storage for high scores
- [ ] Add sound effects and animations
- [ ] Support for multiple question types (true/false, fill-in-the-blank)