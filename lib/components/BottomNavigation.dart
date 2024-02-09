import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final ValueChanged<int> onTap;

  MyBottomNavigationBar({required this.onTap});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.list_bullet),
          label: 'Products',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.profile_circled),
          label: 'Profile',
        ),
      ],
    );
  }
}
