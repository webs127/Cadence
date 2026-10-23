# Cadence — Habit Tracker

**Build your rhythm. Stay consistent.**

Cadence is a minimalist habit-tracking application built with Flutter to help users develop consistent routines, track daily habits, and visualize their progress over time.

Featuring a clean dark interface, a weekly habit checklist, and progress analytics, Cadence makes it easier to stay accountable and turn small daily actions into lasting habits.

## ✨ Features

- **Habit Management** — Create and manage personal habits.
- **Daily Tracking** — Mark habits as completed each day.
- **Weekly Checklist** — View habit completion in an intuitive weekly grid.
- **Progress Analytics** — Visualize completion trends with line and bar charts.
- **Streak Tracking** — Monitor consecutive days of completing habits.
- **Habit Statistics** — Review completion rates and consistency over time.
- **Local-First Experience** — Designed for personal habit tracking without requiring an account or backend.
- **Minimalist Dark UI** — A modern interface featuring cool slate, blue-grey, and icy-blue accents.

*Features are subject to implementation progress.*

## 🎨 Design System

Cadence uses a cool, dark color palette to create a focused, modern, and distraction-free experience.

| Element | Hex |
|---|---|
| Primary background | `#111A23` |
| Secondary background | `#19222C` |
| Card surfaces | `#212C37` |
| Elevated surfaces | `#2E3A47` |
| Borders | `#3B4858` |
| Primary accent | `#A3BBDC` |
| Accent highlight | `#C8D3E2` |
| Primary text | `#F1F4F8` |
| Secondary text | `#8F9DAB` |
| Success | `#63D6B2` |

## 📱 Screens

- **Dashboard** — Welcome message, habit list, and quick actions.
- **Add Habit** — Create a habit with a name, description, frequency, and start date.
- **Weekly Checklist** — A landscape-oriented grid for tracking daily completion.
- **Habit Details** — Review individual habit progress and statistics.
- **Analytics** — Explore completion trends and habit-by-habit performance.
- **Settings** — Configure appearance and app preferences.

## 🛠️ Tech Stack

- **Framework:** Flutter
- **Language:** Dart
- **State Management:** Riverpod
- **Architecture:** Feature-first architecture with a repository layer
- **Storage:** Local database
- **Data Visualization:** Flutter charting library

Specific packages and implementation details may evolve during development.

## 🏗️ Project Structure

```text
lib/
├── app/
│   ├── app.dart
│   ├── router.dart
│   └── theme/
├── core/
│   ├── constants/
│   ├── extensions/
│   └── utils/
├── features/
│   └── habits/
│       ├── data/
│       │   ├── models/
│       │   └── repositories/
│       ├── presentation/
│       │   ├── dashboard/
│       │   ├── add_habit/
│       │   ├── checklist/
│       │   └── habit_details/
│       └── providers/
└── main.dart
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK compatible with your Flutter version
- Android Studio or Visual Studio Code
- Android emulator or physical device

### Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/cadence.git
```

Navigate to the project directory:

```bash
cd cadence
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

Replace `YOUR_USERNAME` with your GitHub username and update the repository URL if necessary.

## 🗺️ Roadmap

- [ ] Set up the Flutter project and theme
- [ ] Implement habit and completion models
- [ ] Configure local data persistence
- [ ] Build the dashboard and habit list
- [ ] Implement habit creation and management
- [ ] Build the landscape weekly checklist
- [ ] Add week navigation
- [ ] Implement streak calculations
- [ ] Add line and bar charts
- [ ] Build habit details and statistics
- [ ] Improve accessibility and responsive layouts
- [ ] Add automated tests

## 🧪 Testing

Run automated tests:

```bash
flutter test
```

Analyze the codebase:

```bash
flutter analyze
```

## 🎯 Project Goals

Cadence is a personal project focused on practicing and demonstrating:

- Flutter UI development
- State management with Riverpod
- Feature-first architecture
- Repository-based data access
- Local data persistence
- Date-based data modeling
- Data visualization
- Responsive layouts and orientation handling
- Maintainable and testable application code

## 🤝 Contributing

Cadence is primarily a personal learning and portfolio project. Suggestions, bug reports, and constructive feedback are welcome.

**Cadence — Build your rhythm. Stay consistent.**
