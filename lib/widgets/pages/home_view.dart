import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:room_monitor/main.dart';
import 'package:room_monitor/widgets/components/header.dart';
import 'package:room_monitor/widgets/components/param_card.dart';
import 'package:room_monitor/widgets/controller/params_controller.dart';

class HomeView extends HookWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = useProvider(paramsController);

    useEffect(() {
      context.read(paramsController.notifier).getParams();
      final timer = Timer.periodic(const Duration(seconds: 30), (_) {
        context.read(paramsController.notifier).getParams();
      });
      return timer.cancel;
    }, const []);

    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Header(timeText: state.timeText),
            ParamCard(
              icon: Icons.device_thermostat,
              name: '温度',
              param: state.temp.toString(),
              unit: '℃',
            ),
            const SizedBox(height: 24),
            ParamCard(
              icon: Icons.water_damage,
              name: '湿度',
              param: state.hum.toString(),
              unit: '%',
            ),
            const SizedBox(height: 24),
            ParamCard(
              icon: Icons.air,
              name: '気圧',
              param: state.press.toStringAsFixed(2),
              unit: 'hPa',
            ),
            const SizedBox(height: 24),
            ParamCard(
              icon: Icons.blur_circular,
              name: '二酸化炭素濃度',
              param: state.co2.toString(),
              unit: 'ppm',
            ),
          ],
        ),
      ),
    );
  }
}
