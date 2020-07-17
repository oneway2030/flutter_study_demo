/// Created with Android Studio.
/// User: 一晟
/// Date: 2018/12/27
/// Time: 下午6:27
/// email: zhu.yan@alibaba-inc.com
/// target: BottomNavigationBar 的示例

import 'package:flutter/material.dart';

// BottomNavigationBar 默认的实例
class BottomNavigationBarFullDefault extends StatefulWidget {
  // ignore: public_member_api_docs
  const BottomNavigationBarFullDefault() : super();
  @override
  State<StatefulWidget> createState() => _BottomNavigationBarFullDefault();
}

// BottomNavigationBar 默认的实例,有状态
class _BottomNavigationBarFullDefault extends State {
  int _currentIndex = 1;

  void _onItemTapped(int index) {
    if (mounted) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // BottomNavigationBarType 中定义的类型，有 fixed 和 shifting 两种类型
      iconSize: 24.0, // BottomNavigationBarItem 中 icon 的大小
      currentIndex: _currentIndex, // 当前所高亮的按钮index
      onTap: _onItemTapped, // 点击里面的按钮的回调函数，参数为当前点击的按钮 index
      fixedColor: Colors.deepPurple,
      // 如果 type 类型为 fixed，则通过 fixedColor 设置选中 item 的颜色
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            title: Text("首页"),
            icon: _currentIndex == 0
                ? Image.asset("images/ic_tab_strip_icon_feed_selected.png")
                : Image.asset("images/ic_tab_strip_icon_feed.png")),
        BottomNavigationBarItem(
            title: Text("社区"),
            icon: _currentIndex == 1
                ? Image.asset("images/ic_tab_strip_icon_follow_selected.png")
                : Image.asset("images/ic_tab_strip_icon_follow.png")),
        BottomNavigationBarItem(
            title: Text("", style: TextStyle(fontSize: 0),),
            icon: Image.asset("images/ic_home_public.png")),
        BottomNavigationBarItem(title: Text("通知"), icon: _currentIndex == 3
            ? Image.asset(
            "images/ic_tab_strip_icon_category_selected.png")
            : Image.asset("images/ic_tab_strip_icon_category.png")),
        BottomNavigationBarItem(
            title: Text("我的"), icon: _currentIndex == 4
            ? Image.asset(
            "images/ic_tab_strip_icon_profile_selected.png")
            : Image.asset("images/ic_tab_strip_icon_profile.png")),
      ],
    );
  }
}
