import 'package:flutter/material.dart';
import 'package:flutter_verification_app/welcome/welcome_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceOut,
    reverseCurve: Curves.ease,
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(
        seconds: 2,
      ),
    ).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomPage(),
        ),
      ),
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            // gradient: AppGradients.linear,
            ),
        child: Center(
          child: ScaleTransition(
            scale: _animation,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              // child: Image.asset(
              //   AppImages.logo,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
