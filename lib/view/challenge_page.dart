import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
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
