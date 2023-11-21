// ring.dart
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RingProgressBar extends StatelessWidget {
  final double stepsPercent;
  final double distancePercent;
  final double caloriesPercent;

  // Include default values for the parameters
  RingProgressBar({
    this.stepsPercent = 0.0,
    this.distancePercent = 0.0,
    this.caloriesPercent = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildCircularProgressIndicator(
          radius: 106.0,
          percent: stepsPercent,
          color: Colors.green,
        ),
        _buildCircularProgressIndicator(
          radius: 78.0,
          percent: distancePercent,
          color: Colors.blue,
        ),
        _buildCircularProgressIndicator(
          radius: 50.0,
          percent: caloriesPercent,
          color: Colors.red,
        ),
      ],
    );
  }

  Widget _buildCircularProgressIndicator({
    required double radius,
    required double percent,
    required Color color,
  }) {
    return CircularPercentIndicator(
      radius: radius,
      lineWidth: 28.0,
      percent: percent,
      progressColor: color,
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: Colors.grey.withOpacity(0),
    );
  }
}






