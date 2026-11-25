// Lab L1 starter: this is the counter app that `flutter create lab01_profile`
// generates (Step 2). Run it, tap + a few times, then commit and push it:
//   git commit -m "Create Flutter starter app"
//
// TODO(Step 3): Delete EVERYTHING in this file and type the Step 3 code
//   yourself: `void main() => runApp(const MaterialApp(home: HomePage()));`
//   and a `HomePage extends StatelessWidget` whose build() returns
//   `const Scaffold(body: Center(child: Text('Hello!')))`.
//   Press R (hot restart). Commit: "Replace counter with HomePage".
//   Also delete test/widget_test.dart (it tests this counter, which is gone).
// TODO(Step 4): Replace the return in HomePage.build with a Scaffold that has
//   `appBar: AppBar(title: const Text('Lab L1 · [ID]'))` (YOUR student ID) and a `const Center` with a
//   Column (mainAxisSize: MainAxisSize.min) of `Icon(Icons.person, size: 96)`
//   and `Text('[Your name] - [ID]')` with YOUR real name and student ID.
//   Save (hot reload). Commit: "Add profile layout".
// TODO(Step 5): Turn HomePage into a StatefulWidget plus a
//   `_HomePageState extends State<HomePage>` that holds `int _likes = 0;`.
//   Move the Step 4 return into _HomePageState.build(). Press R.
// TODO(Step 6): In _HomePageState add `void _like() => setState(() => _likes++);`
//   Delete `const` before Center, then add `Text('Likes: $_likes')` and
//   `FilledButton(onPressed: _like, child: const Text('Like'))` to the Column.
//   Commit: git commit -am "Add like counter with setState"
// TODO(Step 7): Tap Like 3 times, change 'Lab L1' to 'Lab L1 done', press r,
//   then R. Write what happened to Likes in answers.md, then commit
//   "Add L1 answers" and push.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // setState tells Flutter that something changed, so build() runs again.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
