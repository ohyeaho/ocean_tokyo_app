import 'package:flutter/material.dart';
import 'package:ocean_tokyo_app/screens/config_page.dart';
import 'package:ocean_tokyo_app/screens/menu_page.dart';
import 'package:ocean_tokyo_app/screens/post_page.dart';
import 'package:ocean_tokyo_app/screens/staff_page.dart';
import 'package:ocean_tokyo_app/screens/top_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    TopPage(),
    MenuPage(),
    PostPage(),
    StaffPage(),
    ConfigPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me),
            label: 'Top',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'メニュー',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            label: 'スタッフ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
        backgroundColor: Colors.blue,
        iconSize: 40,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
