import 'package:flutter/material.dart';
import 'package:unhooked/view/challenge_page.dart';
import 'package:unhooked/view/goal_page.dart';
import 'package:unhooked/view/task_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  // Define three pages in the nav bar
  final List<Widget> _pages = [
    const TaskPage(),
    const ChallengePage(),
    const GoalPage(),
  ];

  // Method to switch pages using nav bar
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      appBar: AppBar(
        title: const Text("Unhooked"),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              // Handle selection here
              if (value == 'Settings') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TaskPage()),
                );
              } else if (value == 'Profile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TaskPage()),
                );
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'Settings',
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  value: 'Profile',
                  child: Text('Profile'),
                ),
              ];
            },
            icon: const Icon(Icons.more_vert), // Icon for the dropdown menu
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        height:
            100, // This might make cause troubles but fixes the overflow issue
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.today),
              label: 'Daily Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bolt),
              label: 'Challenges',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flag),
              label: 'Goals',
            ),
          ],
        ),
      ),
    );
  }
}
