import 'package:flutter/material.dart';

class GoalPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the floating button (optional)
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
