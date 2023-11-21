// activity_column.dart
import 'package:flutter/material.dart';

class ActivityColumn extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const ActivityColumn({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 14, color: color),
        ),
      ],
    );
  }
}
