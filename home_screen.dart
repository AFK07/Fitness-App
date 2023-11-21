// home_screen.dart
import 'package:flutter/material.dart';
import 'ring.dart';
import 'time_widget.dart';
import 'weather_widget.dart';
import 'activity_column.dart'; // Import the ActivityColumn widget
import 'second_screen.dart'; // Import the SecondScreen widget
import 'fitness_data.dart';

class HomeScreen extends StatelessWidget {
  final FitnessData fitnessData;

  HomeScreen({required this.fitnessData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TimeWidget(),
                  WeatherWidget(),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Updated to spaceBetween
                    children: [
                      Text(
                        'Activity',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondScreen()),
                          );
                        },
                        child: Text('Go to Second Screen'),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RingProgressBar(
                          stepsPercent: fitnessData.stepsPercent,
                          distancePercent: fitnessData.distancePercent,
                          caloriesPercent: fitnessData.caloriesPercent,
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ActivityColumn(label: 'Steps', value: fitnessData.currentSteps.toString(), color: Colors.green),
                            ActivityColumn(label: 'Distance', value: '${fitnessData.currentDistance} km', color: Colors.blue),
                            ActivityColumn(label: 'Calories', value: fitnessData.currentCalories.toString(), color: Colors.red),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

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
