import 'package:flutter/material.dart';

import 'demo.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeWidget();
  }
}

class _HomeWidget extends State {
  Color selectedColor = Colors.black;
  Color unSelectedColor = Colors.lightBlue;
  double _selectedFontSize = 14;
  double unselectedFontSize = 10;
  int currentPostion = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentPostion = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("标题"),
      ),
      bottomNavigationBar: BottomNavigationBarFullDefault(),
//      bottomNavigationBar: BottomNavigationBar(
//        selectedItemColor: selectedColor,
//        unselectedItemColor: unSelectedColor,
//        type: BottomNavigationBarType.fixed,
//        iconSize: 24.0,
//        currentIndex: currentPostion,
//        onTap: _onItemTapped,
//        items: [
//          BottomNavigationBarItem(
//              title: Text(
//                "首页",
//                style: TextStyle(
//                    fontSize: currentPostion == 0
//                        ? _selectedFontSize
//                        : unselectedFontSize),
//              ),
//              icon: currentPostion == 0
//                  ? Image.asset("images/ic_tab_strip_icon_feed_selected.png")
//                  : Image.asset("images/ic_tab_strip_icon_feed.png")),
//          BottomNavigationBarItem(
//              title: Text("社区",
//                  style: TextStyle(
//                      fontSize: currentPostion == 1
//                          ? _selectedFontSize
//                          : unselectedFontSize)),
//              icon: currentPostion == 1
//                  ? Image.asset("images/ic_tab_strip_icon_follow_selected.png")
//                  : Image.asset("images/ic_tab_strip_icon_follow.png")),
//          BottomNavigationBarItem(
//              title: Text(""), icon: Image.asset("images/ic_home_public.png")),
//          BottomNavigationBarItem(
//              title: Text("通知",
//                  style: TextStyle(
//                      fontSize: currentPostion == 3
//                          ? _selectedFontSize
//                          : unselectedFontSize)),
//              icon: currentPostion == 3
//                  ? Image.asset(
//                      "images/ic_tab_strip_icon_category_selected.png")
//                  : Image.asset("images/ic_tab_strip_icon_category.png")),
//          BottomNavigationBarItem(
//              title: Text("我的",
//                  style: TextStyle(
//                      fontSize: currentPostion == 4
//                          ? _selectedFontSize
//                          : unselectedFontSize)),
//              icon: currentPostion == 4
//                  ? Image.asset("images/ic_tab_strip_icon_profile_selected.png")
//                  : Image.asset("images/ic_tab_strip_icon_profile.png"))
//        ],
//      ),
    );
  }
}
