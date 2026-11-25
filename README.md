# Lab L1 – Build/run workflow and interface (starter)

COE67-332, T1 (Lab L1), PI 7-1. This is the app exactly as `flutter create lab01_profile`
makes it (the counter demo) plus this README and the lab tests. In the lab you
replace the counter with your own "About me" screen that has a Like button, and
you compare hot reload with hot restart.

You will normally create this project yourself in Step 2 (`flutter create lab01_profile`).
Use this starter only if you want to check what a fresh project looks like, or if
you need to catch up.

## How to run

```
flutter create . --project-name lab01_profile --platforms=android,web --empty
flutter pub get
flutter run        # pick the Android emulator, or -d chrome
flutter test
```

`flutter create .` only adds the missing platform folders (android/, web/) and the
other generated files. It keeps your `lib/` and `test/` as they are.

On the starter, `flutter test` runs the counter smoke test (passes) and shows the
six lab tests as skipped.

## Files

| File | What it is |
|---|---|
| `pubspec.yaml` | Project name `lab01_profile`; no extra packages this week |
| `analysis_options.yaml` | Uses the `flutter_lints` rules |
| `lib/main.dart` | The counter template from `flutter create`; the TODO list for Steps 3–7 is at the top |
| `test/widget_test.dart` | The counter smoke test from `flutter create`; delete it in Step 3 |
| `test/home_page_test.dart` | The "Test it" slide cases as widget tests, all `skip: true` for now |

## Steps and TODOs

| Step | What you do | TODO |
|---|---|---|
| Setup | Labs folder, `git config` name/email, empty repo `lab01_profile` with no README | – |
| 1 | `flutter doctor`, accept licences, start an emulator, `flutter devices`; screenshot doctor | – |
| 2 | `flutter create lab01_profile`, `flutter run`, first commit and push | – |
| 3 | Delete everything in `lib/main.dart`; type `main()` + `HomePage` (StatelessWidget) showing "Hello!"; press R | `TODO(Step 3)` in `lib/main.dart` and `test/widget_test.dart` |
| 4 | AppBar "Lab L1 · [your student ID]", Column with a person icon and your name and ID | `TODO(Step 4)` |
| 5 | Make `HomePage` a StatefulWidget with `_HomePageState` and `int _likes = 0`; press R | `TODO(Step 5)` |
| 6 | Add `_like()` with `setState`, remove `const` before Center, add "Likes: n" and a Like `FilledButton` | `TODO(Step 6)` in `lib/main.dart`; un-skip the first four tests |
| 7 | 3 taps, change the title, press r then R; write the result in `answers.md`; commit and push | `TODO(Step 7)`; un-skip the two Reload tests |

Commits expected (5): "Create Flutter starter app", "Replace counter with HomePage",
"Add profile layout", "Add like counter with setState", "Add L1 answers".

## Test table (copy into answers.md and fill in "Actual")

| Type | Input or action | Expected result | Actual |
|---|---|---|---|
| Normal | Launch the app | Title, icon, name, "Likes: 0" | |
| Normal | Tap Like once | "Likes: 1" | |
| Boundary | Tap Like 20 times fast | "Likes: 20", no error | |
| Boundary | Rotate to landscape | Still centred, no overflow | |
| Reload | 3 taps, then r, then R | 3 after r · 0 after R | |
| Failure | Close emulator, flutter run | No device found message | |

The Failure case is about the `flutter` tool, so it has no automated test: run it
by hand and write down the exact message.

## Notes to write (Step 7 and the explanation questions)

- Hot reload (r) vs hot restart (R): what happened to Likes, and why?
- Q1: Which `flutter doctor` problem did you meet, and which tool or doc fixed it?
- Q2: Likes was 3. What did r and R each do to it, and why?
- Q3: Why does `_likes++` need `setState`? Pick one commit and say what it changed.

Write the answers in your own words. If you used AI, say so and explain the code yourself.

## What to hand in (Google Classroom, by Thursday 23:59 before the T2 class)

Attach each file separately. Every file name starts with your student ID.
Do not zip, and do not hand in the whole project (no `build/`, `.dart_tool/`, `android/`, `ios/`, `pubspec.lock`).

| File | Content |
|---|---|
| `ID_L1_main.dart` | your `lib/main.dart` |
| `ID_L1_S1.png` | `flutter doctor` output |
| `ID_L1_S2.png` | the app on the emulator: your ID in the AppBar, Likes ≥ 3 |
| `ID_L1_answers.md` | start from `answers_template.md`: Q1–Q3, test table, AI use |
| link | your Git repo (Add → Link), at least 3 commits for this lab |

Late work is always accepted: up to 7 days late −0.2, more than 7 days −0.5, more than 2 weeks −0.9 (from the 2-mark total).
