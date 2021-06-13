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
    // Future.delayed(Duration(
    //   seconds: 8,
    // )).then(
    //   (value) => Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => WelcomPage(),
    //     ),
    //   ),
    // );

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  "FLUTTER VERIFICATION",
                  style: GoogleFonts.architectsDaughter(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1686E0),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Lottie.asset(
                    "assets/animations/mobile_verification.json",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Text(
                  "Tap to screen",
                  style: GoogleFonts.architectsDaughter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1686E0),
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
