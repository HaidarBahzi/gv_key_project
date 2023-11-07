import 'package:flutter/material.dart';
import 'package:gv_key_project/app/pages/menus/Cart.dart';
import 'package:gv_key_project/app/pages/menus/Home.dart';
import 'package:gv_key_project/app/pages/menus/News.dart';
import 'package:gv_key_project/app/pages/menus/Profile.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

List<Widget> _buildScreens() {
  return [HomePage(), NewsPage(), CartPage(), ProfilePage()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      title: "Home",
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.newspaper),
      title: "News",
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.shopping_cart),
      title: "Cart",
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.settings),
      title: "Profile",
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
  ];
}

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style12,
    );
  }
}
