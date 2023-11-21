// main.dart
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'fitness_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FitnessData fitnessData = FitnessData(
    currentSteps: 400,
    currentDistance: 12.5,
    currentCalories: 750,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomeScreen(fitnessData: fitnessData),
    );
  }
}





