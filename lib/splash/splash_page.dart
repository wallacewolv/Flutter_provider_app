import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'package:flutter_verification_app/welcome/welcome_page.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(
      seconds: 2,
    )).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomPage(),
        ),
      ),
    );

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => WelcomPage(),
            ),
          );
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Text(
                  "FLUTTER CRUD",
                  style: GoogleFonts.architectsDaughter(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1766A7),
                  ),
                ),
              ),
              Container(
                child: Lottie.asset(
                  'assets/animations/verification.json',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: Text(
                  "Tap to screen",
                  style: GoogleFonts.architectsDaughter(
                    fontSize: 18,
                    color: Color(0xFF1766A7),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
