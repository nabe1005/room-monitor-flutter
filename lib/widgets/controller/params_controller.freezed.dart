// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'params_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParamsTearOff {
  const _$ParamsTearOff();

  _Params call(
      {double temp = 0.0,
      double hum = 0.0,
      double press = 0.0,
      int co2 = 0,
      DateTime? time}) {
    return _Params(
      temp: temp,
      hum: hum,
      press: press,
      co2: co2,
      time: time,
    );
  }
}

/// @nodoc
const $Params = _$ParamsTearOff();

/// @nodoc
mixin _$Params {
  double get temp => throw _privateConstructorUsedError;
  double get hum => throw _privateConstructorUsedError;
  double get press => throw _privateConstructorUsedError;
  int get co2 => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParamsCopyWith<Params> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamsCopyWith<$Res> {
  factory $ParamsCopyWith(Params value, $Res Function(Params) then) =
      _$ParamsCopyWithImpl<$Res>;
  $Res call({double temp, double hum, double press, int co2, DateTime? time});
}

/// @nodoc
class _$ParamsCopyWithImpl<$Res> implements $ParamsCopyWith<$Res> {
  _$ParamsCopyWithImpl(this._value, this._then);

  final Params _value;
  // ignore: unused_field
  final $Res Function(Params) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? hum = freezed,
    Object? press = freezed,
    Object? co2 = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      hum: hum == freezed
          ? _value.hum
          : hum // ignore: cast_nullable_to_non_nullable
              as double,
      press: press == freezed
          ? _value.press
          : press // ignore: cast_nullable_to_non_nullable
              as double,
      co2: co2 == freezed
          ? _value.co2
          : co2 // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ParamsCopyWith<$Res> implements $ParamsCopyWith<$Res> {
  factory _$ParamsCopyWith(_Params value, $Res Function(_Params) then) =
      __$ParamsCopyWithImpl<$Res>;
  @override
  $Res call({double temp, double hum, double press, int co2, DateTime? time});
}

/// @nodoc
class __$ParamsCopyWithImpl<$Res> extends _$ParamsCopyWithImpl<$Res>
    implements _$ParamsCopyWith<$Res> {
  __$ParamsCopyWithImpl(_Params _value, $Res Function(_Params) _then)
      : super(_value, (v) => _then(v as _Params));

  @override
  _Params get _value => super._value as _Params;

  @override
  $Res call({
    Object? temp = freezed,
    Object? hum = freezed,
    Object? press = freezed,
    Object? co2 = freezed,
    Object? time = freezed,
  }) {
    return _then(_Params(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      hum: hum == freezed
          ? _value.hum
          : hum // ignore: cast_nullable_to_non_nullable
              as double,
      press: press == freezed
          ? _value.press
          : press // ignore: cast_nullable_to_non_nullable
              as double,
      co2: co2 == freezed
          ? _value.co2
          : co2 // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Params extends _Params {
  _$_Params(
      {this.temp = 0.0,
      this.hum = 0.0,
      this.press = 0.0,
      this.co2 = 0,
      this.time})
      : super._();

  @JsonKey(defaultValue: 0.0)
  @override
  final double temp;
  @JsonKey(defaultValue: 0.0)
  @override
  final double hum;
  @JsonKey(defaultValue: 0.0)
  @override
  final double press;
  @JsonKey(defaultValue: 0)
  @override
  final int co2;
  @override
  final DateTime? time;

  @override
  String toString() {
    return 'Params(temp: $temp, hum: $hum, press: $press, co2: $co2, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Params &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.hum, hum) ||
                const DeepCollectionEquality().equals(other.hum, hum)) &&
            (identical(other.press, press) ||
                const DeepCollectionEquality().equals(other.press, press)) &&
            (identical(other.co2, co2) ||
                const DeepCollectionEquality().equals(other.co2, co2)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(hum) ^
      const DeepCollectionEquality().hash(press) ^
      const DeepCollectionEquality().hash(co2) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$ParamsCopyWith<_Params> get copyWith =>
      __$ParamsCopyWithImpl<_Params>(this, _$identity);
}

abstract class _Params extends Params {
  factory _Params(
      {double temp,
      double hum,
      double press,
      int co2,
      DateTime? time}) = _$_Params;
  _Params._() : super._();

  @override
  double get temp => throw _privateConstructorUsedError;
  @override
  double get hum => throw _privateConstructorUsedError;
  @override
  double get press => throw _privateConstructorUsedError;
  @override
  int get co2 => throw _privateConstructorUsedError;
  @override
  DateTime? get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ParamsCopyWith<_Params> get copyWith => throw _privateConstructorUsedError;
}
