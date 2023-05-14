import 'package:debounce_hook/debounce_hook.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Debounce Hook',
      home: HomePage(),
    );
  }
}

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final debounce = useDebounce<String>(
      // In milliseconds
      debounceDelay: 500,
      callback: (value) {
        // Do API calls or Expensive operations.
        print('Function called after ${500} milliseconds');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Debounce Hook'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            onChanged: (value) {
              // Common example of using debounce is using `onChanged` of
              // `TextField`.
              debounce.onChanged(value);
            },
          ),
        ),
      ),
    );
  }
}
