import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  final String title;
  final bool isChecked;
  final ValueChanged<bool?> onChanged = (bool? newValue) {
    print('Checkbox state changed to: $newValue');
  };

  // Constructor to receive title, checkbox state, and callback
  ListItemWidget(this.title, this.isChecked, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 8.0, horizontal: 16.0), // Add padding
      child: Container(
        color: Theme.of(context).cardColor,
        child: ListTile(
          title: Text(title),
          trailing: Checkbox(
            value: isChecked,
            activeColor: Theme.of(context)
                .primaryColor, // Use app's primary color for checkbox
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
