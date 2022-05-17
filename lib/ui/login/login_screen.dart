import 'package:flutter/material.dart';
import 'package:training_flutter/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 90,
            centerTitle: true,
            backgroundColor: AppColors().yellow,
            elevation: 0,
            flexibleSpace: Container(
              margin: const EdgeInsets.only(top: 32.0),
              child: Column(
                children: [
                  Image.asset('assets/icons/ic_splash.png',
                      fit: BoxFit.cover, height: 50.0),
                  Container(
                      margin: const EdgeInsets.only(top: 4.0),
                      child: Text('Login',
                          style: TextStyle(
                              color: AppColors().black, fontSize: 20))),
                ],
              ),
            ),
          ),
          body: Container(
            margin: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              children: [
                buildFieldInputUsername(),
                buildFieldInputPassword(),
                buildTextForgotPass(),
                buildButtonLogin(),
                buildTextLoginExternal(),
                buildButtonLoginFacebook(),
              ],
            ),
          ),
        );
      },
    );
  }
}

buildFieldInputUsername() {
  return Container(
    margin: const EdgeInsets.only(top: 24.0),
    child: const TextField(
      decoration: InputDecoration(
        hintText: 'Username',
      ),
    ),
  );
}

buildFieldInputPassword() {
  return Container(
    margin: const EdgeInsets.only(top: 24.0),
    child: const TextField(
      scrollPadding: EdgeInsets.all(12.0),
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.remove_red_eye),
        hintText: 'Password',
      ),
    ),
  );
}

buildTextForgotPass() {
  return Container(
    margin: const EdgeInsets.only(top: 16.0),
    child: Align(
      alignment: Alignment.centerRight,
      child: Text(
        'Click here if you forget your password',
        style: TextStyle(
          color: AppColors().blue,
          fontSize: 12.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  );
}

buildButtonLogin() {
  return Container(
    margin: const EdgeInsets.only(top: 16.0),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: AppColors().grey,
        minimumSize: const Size.fromHeight(40),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        ),
        elevation: 0
      ),
      child: Text('Login', style: TextStyle(color: AppColors().black)),
    ),
  );
}

buildTextLoginExternal() {
  return Container(
    margin: const EdgeInsets.only(top: 32.0),
      child: Text(
      'Log in with an external account',
    style: TextStyle(
      color: AppColors().grey,
      fontSize: 16
    ),
  ));
}

buildButtonLoginFacebook() {
  return Container(
    margin: const EdgeInsets.only(top: 16.0),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          minimumSize: const Size.fromHeight(40),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero
          ),
          elevation: 0,
        side: BorderSide(
          width: 2.0,
          color: AppColors().grey
        )
      ),
      child: Row(
        children: [
          Image.asset('assets/icons/ic_facebook.png',
              fit: BoxFit.cover, height: 2.0, width: 2.0,),
          Text('facebook', style: TextStyle(color: AppColors().black))
        ],
      ),
    ),
  );
}
