import 'package:flutter/material.dart';
import 'package:unhooked/component/list_item_widget.dart';

class TaskPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
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
      body: ListView(
        children: [
          ListItemWidget("Test1", true),
          ListItemWidget("Test2", true),
          ListItemWidget("Test3", true),
        ],
      ),
    );
  }
}
