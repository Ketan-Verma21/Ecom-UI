import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({Key? key,required this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value)=>onTabChange!(value),
        gap: 8,
        tabs: [
          GButton(icon: Icons.home,text:"Shop"),
          GButton(icon: Icons.shopping_bag_rounded,text:"Cart"),

        ],
      ),
    );
  }
}
