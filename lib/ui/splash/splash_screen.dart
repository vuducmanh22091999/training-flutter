import 'package:flutter/material.dart';
import 'package:training_flutter/theme/colors.dart';

import '../login/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateLogin();
  }

  _navigateLogin() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().yellow,
      body: Center(
        child: Image.asset('assets/icons/ic_splash.png', fit: BoxFit.cover, height: 150.0),
      ),
    );
  }
}

