import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:training_flutter/theme/colors.dart';
import 'package:training_flutter/ui/others/marquee_text.dart';

import '../../theme/strings.dart';
import 'landing_page_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
    Get.put(LandingPageController(), permanent: false);
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
              _buildHomePayment(),
              _buildListItemHome()
            ],
          ),
        ),
        bottomNavigationBar: buildBottomNavigationMenu(context, landingPageController),
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
            top: ScreenUtil().setSp(32),
            left: ScreenUtil().setSp(16),
            right: ScreenUtil().setSp(16)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ScreenUtil().setSp(8)),
          color: Colors.white,
        ),
      ),
      Container(
        padding: EdgeInsets.only(
            top: ScreenUtil().setSp(14), right: ScreenUtil().setSp(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/icons/ic_home_saving.png',
                fit: BoxFit.cover,
                width: ScreenUtil().setSp(50),
                height: ScreenUtil().setSp(40),
              ),
            ),
          ],
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset(
              'assets/icons/ic_pig.png',
              fit: BoxFit.cover,
              width: ScreenUtil().setSp(50),
              height: ScreenUtil().setSp(40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/img_home_saving.png',
                ),
                Container(
                  margin: EdgeInsets.only(bottom: ScreenUtil().setSp(40)),
                  child: Image.asset(
                    'assets/icons/ic_information.png',
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: ScreenUtil().setSp(32)),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '428',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(24),
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: ScreenUtil().setSp(4), left: ScreenUtil().setSp(2)),
                        child: Text(AppStrings.kYen, style: TextStyle(
                            fontSize: ScreenUtil().setSp(14),
                            fontWeight: FontWeight.bold
                        )),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    ],
  );
}

_buildHomePayment() {
  return Stack(
    children: [
      Container(
        width: Size.fromHeight(ScreenUtil().setSp(40)).width,
        height: Size.fromHeight(ScreenUtil().setSp(80)).height,
        margin: EdgeInsets.only(
            top: ScreenUtil().setSp(32),
            left: ScreenUtil().setSp(16),
            right: ScreenUtil().setSp(16)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ScreenUtil().setSp(8)),
          color: Colors.white,
        ),
      ),
      Align(
        // alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: ScreenUtil().setSp(16), left: ScreenUtil().setSp(96), right: ScreenUtil().setSp(96)),
              padding: EdgeInsets.only(top: ScreenUtil().setSp(8), bottom:ScreenUtil().setSp(8)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ScreenUtil().setSp(16)),
                color: AppColors.greyED,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(AppStrings.payment, style: TextStyle(
                      fontWeight: FontWeight.bold
                  )),
                  Image.asset(
                    'assets/icons/ic_information.png',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: ScreenUtil().setSp(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(AppStrings.yearOld, style: TextStyle(
                    fontSize: ScreenUtil().setSp(14),fontWeight: FontWeight.bold
                  )),
                  Row(
                    children: [
                      Text(AppStrings.value, style: TextStyle(
                          fontSize: ScreenUtil().setSp(14),fontWeight: FontWeight.bold
                      )),
                      Container(
                        margin: EdgeInsets.only(top: ScreenUtil().setSp(2), left: ScreenUtil().setSp(2)),
                        child: Text(AppStrings.kYen, style: TextStyle(
                            fontSize: ScreenUtil().setSp(10),fontWeight: FontWeight.bold
                        )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

buildBottomNavigationBar(int _selectedIndex, Function(int) _onItemTapped) {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.sticky_note_2), label: 'Note'),
      BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_sharp), label: 'User')
    ],
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
  );
}

buildBottomNavigationMenu(context, landingPageController) {
  return Obx(() => MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: SizedBox(
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: landingPageController.changeTabIndex,
          currentIndex: landingPageController.tabIndex.value,
          backgroundColor: AppColors.yellow,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          selectedItemColor: AppColors.black,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 7),
                child: const Icon(
                  Icons.home,
                  size: 20.0,
                ),
              ),
              label: 'Home',
              backgroundColor: AppColors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 7),
                child: const Icon(
                  Icons.search,
                  size: 20.0,
                ),
              ),
              label: 'Explore',
              backgroundColor: AppColors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 7),
                child: const Icon(
                  Icons.location_history,
                  size: 20.0,
                ),
              ),
              label: 'Places',
              backgroundColor: AppColors.yellow,
            ),
          ],
        ),
      )));
}

_buildItemHome() {
  return Container(
    padding: EdgeInsets.all(ScreenUtil().setSp(8)),
    child: Column(
      children: [
        Image.asset('assets/icons/ic_top_notification.png', fit: BoxFit.cover),
        const Text(AppStrings.payment, style: TextStyle(
            fontWeight: FontWeight.bold
        ))
      ],
    ),
  );
}

_buildListItemHom() {
  return Container(
    color: AppColors.white,
    height: 300,
    margin: EdgeInsets.only(top: 16),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return _buildItemHome();
        }),
  );
}

_buildListItemHome() {
  return Container(
    color: AppColors.white,
    height: ScreenUtil().setHeight(250),
    margin: EdgeInsets.only(top: 16),
    child: GridView.count(crossAxisCount: 3,
    children: [
        _buildItemHome(),
        _buildItemHome(),
        _buildItemHome(),
        _buildItemHome(),
        _buildItemHome(),
        _buildItemHome()
      ])
  );
}
