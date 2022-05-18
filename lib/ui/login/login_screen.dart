import 'package:flutter/material.dart';
import 'package:training_flutter/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_flutter/theme/strings.dart';

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
            toolbarHeight: ScreenUtil().setSp(90),
            centerTitle: true,
            backgroundColor: AppColors.yellow,
            elevation: 0,
            flexibleSpace: Container(
              margin: EdgeInsets.only(top: ScreenUtil().setSp(32)),
              child: Column(
                children: [
                  Image.asset('assets/icons/ic_splash.png',
                      fit: BoxFit.cover, height: ScreenUtil().setSp(50)),
                  Container(
                      margin: EdgeInsets.only(top: ScreenUtil().setSp(4)),
                      child: Text(AppStrings.login,
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: ScreenUtil().setSp(20)))),
                ],
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(
                left: ScreenUtil().setSp(16), right: ScreenUtil().setSp(16)),
            child: Column(
              children: [
                _buildFieldInput(true),
                _buildFieldInput(false),
                _buildTextUnderline(false),
                _buildButtonLogin(),
                _buildTextLoginExternal(),
                _buildButtonLoginExternal(
                    'assets/icons/ic_facebook.png', AppStrings.facebook),
                _buildButtonLoginExternal(
                    'assets/icons/ic_google.png', AppStrings.google),
                _buildButtonLoginExternal(
                    'assets/icons/ic_apple.png', AppStrings.apple),
                _buildTextUnderline(true)
              ],
            ),
          ),
          bottomNavigationBar: _buildBottomNavigation(),
        );
      },
    );
  }
}

_buildFieldInput(bool isUsername) {
  return Container(
    margin: EdgeInsets.only(top: ScreenUtil().setSp(24)),
    child: isUsername
        ? const TextField(
            decoration: InputDecoration(
              hintText: AppStrings.userName,
            ),
          )
        : TextField(
            scrollPadding: EdgeInsets.all(ScreenUtil().setSp(12)),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye),
              hintText: AppStrings.password,
            ),
          ),
  );
}

_buildTextUnderline(bool isCenter) {
  return Container(
    margin: EdgeInsets.only(top: ScreenUtil().setSp(16)),
    child: Align(
      alignment: isCenter ? Alignment.center : Alignment.centerRight,
      child: Text(
        isCenter ? AppStrings.register : AppStrings.forgetPassword,
        style: TextStyle(
          color: isCenter ? AppColors.black : AppColors.blue,
          fontSize: isCenter ? ScreenUtil().setSp(18) : ScreenUtil().setSp(16),
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  );
}

_buildButtonLogin() {
  return Container(
    margin: EdgeInsets.only(top: ScreenUtil().setSp(16)),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: AppColors.grey,
          minimumSize: Size.fromHeight(ScreenUtil().setSp(40)),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          elevation: 0),
      child: const Text(AppStrings.login,
          style: TextStyle(color: AppColors.black)),
    ),
  );
}

_buildTextLoginExternal() {
  return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setSp(32)),
      child: Text(
        AppStrings.externalAccount,
        style:
            TextStyle(color: AppColors.grey, fontSize: ScreenUtil().setSp(16)),
      ));
}

_buildButtonLoginExternal(String urlImage, String textLogin) {
  return Container(
    margin: EdgeInsets.only(top: ScreenUtil().setSp(16)),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          minimumSize: Size.fromHeight(ScreenUtil().setSp(40)),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          elevation: 0,
          side:
              BorderSide(width: ScreenUtil().setSp(2), color: AppColors.grey)),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: ScreenUtil().setSp(48)),
            child: Image.asset(urlImage, fit: BoxFit.cover),
          ),
          Container(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: ScreenUtil().setSp(4)),
                child: Text(textLogin,
                    style: const TextStyle(color: AppColors.black),
                    textAlign: TextAlign.center),
              ))
        ],
      ),
    ),
  );
}

_buildBottomNavigation() {
  return Container(
    color: AppColors.yellow,
    padding: EdgeInsets.all(ScreenUtil().setSp(16)),
    child: Row(
      children: [
        Container(
            margin: EdgeInsets.only(right: ScreenUtil().setSp(8)),
            child: Text(
              'data1',
              style: TextStyle(fontSize: ScreenUtil().setSp(16)),
            )),
        Container(
            margin: EdgeInsets.only(left: ScreenUtil().setSp(0)),
            child: Text('data2',
                style: TextStyle(fontSize: ScreenUtil().setSp(16)))),
        Container(
            margin: EdgeInsets.only(left: ScreenUtil().setSp(8)),
            child: Text('data3',
                style: TextStyle(fontSize: ScreenUtil().setSp(16)))),
        Container(
            margin: EdgeInsets.only(left: ScreenUtil().setSp(8)),
            child: Text('data4',
                style: TextStyle(fontSize: ScreenUtil().setSp(16)))),
      ],
    ),
  );
}
