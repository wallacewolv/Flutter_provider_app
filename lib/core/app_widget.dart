import 'package:flutter/material.dart';
import 'package:flutter_verification_app/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter verification",
      home: SplashPage(),
    );
  }
}
