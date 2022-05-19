import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_flutter/theme/colors.dart';
import 'package:training_flutter/ui/others/marquee_text.dart';

import '../../theme/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        backgroundColor: AppColors.yellow,
        body: Container(
          margin: EdgeInsets.only(top: ScreenUtil().setSp(16)),
          child: Column(
            children: [
              _buildTopNotification(),
              _buildIconNotification(),
              _buildHomeSaving(),
            ],
          ),
        ),
      ),
    );
  }
}

_buildTopNotification() {
  return Container(
    padding: EdgeInsets.all(ScreenUtil().setSp(4)),
    color: AppColors.yellow150,
    width: Size.fromHeight(ScreenUtil().setSp(40)).width,
    margin: EdgeInsets.only(top: ScreenUtil().setSp(16)),
    child: Stack(
      children: [
        Container(
            margin: EdgeInsets.only(left: ScreenUtil().setSp(16)),
            child: Image.asset('assets/icons/ic_top_notification.png',
                fit: BoxFit.cover)),
        Container(
            margin: EdgeInsets.only(left: ScreenUtil().setSp(32)),
            child: const MarqueeWidget(
              direction: Axis.horizontal,
              child: Text(AppStrings.topNotification),
            )),
      ],
    ),
  );
}

_buildIconNotification() {
  return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(
          right: ScreenUtil().setSp(8), top: ScreenUtil().setSp(4)),
      child:
          Image.asset('assets/icons/ic_notification.png', fit: BoxFit.cover));
}

_buildHomeSaving() {
  return Stack(
    children: [
      Container(
          width: Size.fromHeight(ScreenUtil().setSp(40)).width,
          height: Size.fromHeight(ScreenUtil().setSp(160)).height,
          margin: EdgeInsets.only(
              top: ScreenUtil().setSp(16),
              left: ScreenUtil().setSp(16),
              right: ScreenUtil().setSp(16)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ScreenUtil().setSp(8)),
            color: Colors.white,
          )),
      Container(
        padding: EdgeInsets.only(bottom: ScreenUtil().setSp(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/icons/ic_pig.png',
                fit: BoxFit.cover,
                width: ScreenUtil().setSp(50),
                height: ScreenUtil().setSp(40),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

_buildHomeSavin() {
  return Container(
    width: Size.fromHeight(ScreenUtil().setSp(40)).width,
    height: Size.fromHeight(ScreenUtil().setSp(160)).height,
    margin: EdgeInsets.only(
        top: ScreenUtil().setSp(16),
        left: ScreenUtil().setSp(16),
        right: ScreenUtil().setSp(16)),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(ScreenUtil().setSp(8)),
      color: Colors.white,
    ),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: ScreenUtil().setSp(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/icons/ic_pig.png',
                  fit: BoxFit.cover,
                  width: ScreenUtil().setSp(50),
                  height: ScreenUtil().setSp(40),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset('assets/icons/ic_home_saving.png',
                    fit: BoxFit.cover,
                    width: ScreenUtil().setSp(50),
                    height: ScreenUtil().setSp(50)),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
