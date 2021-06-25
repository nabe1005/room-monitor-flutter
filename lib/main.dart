import 'package:flutter/material.dart';
import 'package:room_monitor/widgets/pages/home_view.dart';

const Color kAccentColor = Color(0xFFFE7C64);
const Color kBackColor = Color(0xFF19283D);
const Color kTextColor = Color(0xFFECEFF1);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nabe1005\'s Room Monitoring System',
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.system,
      home: Scaffold(
        body: HomeView(),
        backgroundColor: kBackColor,
      ),
    );
  }
}
