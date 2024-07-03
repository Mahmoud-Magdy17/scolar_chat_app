import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

void main() {
  runApp(const ScholarApp());
}

class ScholarApp extends StatelessWidget {
  const ScholarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        SignUpPage.id: (context) => const SignUpPage(),
      },
      showSemanticsDebugger: false,
      home: LoginPage(),
    );
  }
}
