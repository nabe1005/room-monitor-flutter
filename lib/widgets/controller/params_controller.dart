import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

part 'params_controller.freezed.dart';

final paramsController = StateNotifierProvider<ParamsController, Params>(
  (_) => ParamsController(),
);

@freezed
class Params with _$Params {
  Params._();
  factory Params({
    @Default(0.0) double temp,
    @Default(0.0) double hum,
    @Default(0.0) double press,
    @Default(0) int co2,
    DateTime? time,
  }) = _Params;

  late final timeText =
      '${time?.month}月${time?.day}日 ${time?.hour}時${time?.minute.toString().padLeft(2, "0")}分 時点';
}

class ParamsController extends StateNotifier<Params> {
  ParamsController() : super(Params());

  Future<void> getParams() async {
    final data = await FirebaseFirestore.instance
        .collection('params1')
        .doc('data')
        .get();
    state = state.copyWith(
      temp: data['temp'],
      hum: data['hum'],
      press: data['press'],
      co2: data['co2'],
      time: (data['time'] as Timestamp).toDate(),
    );
    print(state);
  }
}
