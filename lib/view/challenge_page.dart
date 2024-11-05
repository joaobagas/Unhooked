import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({super.key});

  @override
  State<StatefulWidget> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Stack(
        children: <Widget>[
          // FloatingActionButton 1
          Positioned(
            bottom: 16, // Maybe make this relative
            right: 16, // Maybe make this relative
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ),
          // FloatingActionButton 2
          Positioned(
            bottom: 80, // Maybe make this relative
            right: 16, // Maybe make this relative
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.edit),
            ),
          ),
        ],
      ),
    );
  }
}
