import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with actual weather data or use a weather package
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '24°C', // Replace with actual temperature
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          'Sunny', // Replace with actual weather condition
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ],
    );
  }
}
