import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:room_monitor/main.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = 320.0;
    return Container(
      height: height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: _HeaderBackground(height: height),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: _HeaderTitle(),
            ),
          )
        ],
      ),
    );
  }
}

class HeaderCurveClipper extends CustomClipper<Path> {
  final double maxPointRatio;

  HeaderCurveClipper(this.maxPointRatio);

  @override
  Path getClip(Size size) {
    final w1 = size.width * maxPointRatio;
    return Path()
      ..lineTo(0, size.height * 0.5)
      ..quadraticBezierTo(
        w1,
        size.height,
        size.width,
        size.height * 0.6,
      )
      ..lineTo(size.width, 0)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class _HeaderBackground extends HookWidget {
  final double height;
  const _HeaderBackground({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useAnimationController(
      duration: const Duration(seconds: 58),
    );
    final double _animation = useAnimation(
      Tween<double>(begin: 0.2, end: 0.8).animate(_controller),
    );

    useEffect(
      () {
        final second = DateTime.now().second;
        _controller.forward(from: second / 60);
        _controller.repeat();
        return;
      },
      const [],
    );

    return ClipPath(
      clipper: HeaderCurveClipper(_animation),
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            colors: [
              Color(0xFFFD9766),
              Color(0xFFFF7362),
            ],
            stops: [0, 1],
          ),
        ),
      ),
    );
  }
}

class _HeaderTitle extends StatelessWidget {
  const _HeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'nabe1005\'s',
          style: TextStyle(
            fontSize: 24,
            color: kTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16.0),
        Text(
          'Room Monitoring System',
          style: TextStyle(
            fontSize: 24,
            color: kTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
