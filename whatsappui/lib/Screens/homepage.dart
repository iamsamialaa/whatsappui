import 'package:flutter/material.dart';

import 'calls.dart';
import 'chats.dart';
import 'communities.dart';
import 'status.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
// navigate Bottom
  int _selectedindex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  // Pages
  final List _Pages = [
    const Chats(),
    const Status(),
    const Calls(),
    const Communities(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade900,
        toolbarHeight: 100,
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),

      // body
      body: _Pages[_selectedindex],

      // BottomNavBar
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedindex,
            onTap: _navigateBottomBar,
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera), label: 'Status'),
              BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: 'Communities'),
            ]),
      ),
    );
  }
}
