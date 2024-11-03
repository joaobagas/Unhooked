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
    TaskPage(),
    ChallengePage(),
    GoalPage(),
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
      // Display the selected page based on _currentIndex
      body: _pages[_currentIndex],

      // Floating bottom navigation bar setup
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the floating button (optional)
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
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
