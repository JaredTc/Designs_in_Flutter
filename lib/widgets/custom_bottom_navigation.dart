import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      selectedItemColor: Colors.pink,
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account_outlined), label: ''),
      ],
    );
  }
}
