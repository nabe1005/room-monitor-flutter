import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:room_monitor/widgets/pages/home_view.dart';

const Color kAccentColor = Color(0xFFFE7C64);
const Color kBackColor = Color(0xFF19283D);
const Color kWhite = Color(0xFFECEFF1);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
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
