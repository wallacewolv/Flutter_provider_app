import 'package:flutter/material.dart';

class WelcomPage extends StatefulWidget {
  WelcomPage({Key? key}) : super(key: key);

  @override
  _WelcomPageState createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.yellow,
      ),
    );
  }
}
