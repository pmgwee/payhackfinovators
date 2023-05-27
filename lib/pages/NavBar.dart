import 'package:flutter/material.dart';
import 'package:payhackfinovators/pages/Payment.dart';
import 'package:payhackfinovators/pages/Profile.dart';
import 'package:payhackfinovators/pages/History.dart';
import 'package:payhackfinovators/pages/Scanner.dart';

class NavBar extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<NavBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Payment(),
    MyCustomWidget(),
    History(),
    Profile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom Navigation Bar'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(
              Icons.qr_code_scanner,
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(
              Icons.payments_outlined,
            ),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(
              Icons.history_outlined,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
