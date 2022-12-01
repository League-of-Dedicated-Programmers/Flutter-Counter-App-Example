import 'package:flutter/material.dart';
import 'package:counter_example_flutter/ui/pages/home_page/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

final theme = ThemeData(
    colorScheme: ColorScheme.light()
        .copyWith(primary: Color.fromARGB(255, 122, 123, 108)));
