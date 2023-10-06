import 'package:deal_test/view/screens/homepage.dart';
import 'package:deal_test/view/screens/loginhome.dart';
import 'package:deal_test/view/screens/loginpage.dart';
import 'package:deal_test/view/screens/settingpage.dart';

import 'package:deal_test/view/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/splashscreen': (context) => const SplashScreen(),
        '/loginhome': (context) => const Loginhome(),
        '/settingspage': (context) => const SettingsPage(),
        '/homepage': (context) => const Homepage(),
        '/loginpage': (context) => const LoginPageTestSample(),

      },
      initialRoute: '/homepage',
    );
  }
}
