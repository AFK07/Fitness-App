class FitnessData {
  final int defaultStepGoal = 10000;
  final double defaultDistanceGoal = 30.0;
  final int defaultCaloriesGoal = 1000;

  int currentSteps = 0;
  double currentDistance = 0.0;
  int currentCalories = 0;

  FitnessData({
    required this.currentSteps,
    required this.currentDistance,
    required this.currentCalories,
  });

  double get stepsPercent => currentSteps / defaultStepGoal;
  double get distancePercent => currentDistance / defaultDistanceGoal;
  double get caloriesPercent => currentCalories / defaultCaloriesGoal;
}
