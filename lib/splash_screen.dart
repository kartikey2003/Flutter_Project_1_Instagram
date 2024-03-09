import 'package:flutter/material.dart';
import 'package:test_login_screen/logIn_screen_1.dart';

class SplashScreenTest extends StatefulWidget {
  const SplashScreenTest({super.key});

  @override
  State<SplashScreenTest> createState() => _SplashScreenTestState();
}

class _SplashScreenTestState extends State<SplashScreenTest> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreenFirst()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 124,
          width: 124,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
              image:
                  const DecorationImage(image: AssetImage('assets/Icon.png'))),
        ),
      ),
    );
  }
}
