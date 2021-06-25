import 'package:flutter/material.dart';
import 'package:room_monitor/widgets/components/header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
          ],
        ),
      ),
    );
  }
}
