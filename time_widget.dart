import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StreamBuilder(
          stream: Stream.periodic(Duration(seconds: 1)),
          builder: (context, snapshot) {
            return Text(
              DateFormat('hh:mm a').format(DateTime.now()),
              style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold, color: Colors.white),
            );
          },
        ),
        Text(
          DateFormat('EEEE, MMMM d').format(DateTime.now()),
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ],
    );
  }
}
