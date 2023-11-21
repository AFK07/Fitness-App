// second_screen.dart
import 'package:flutter/material.dart';
import 'ring.dart';
import 'time_widget.dart';
import 'weather_widget.dart';
import 'activity_column.dart';
import 'package:fl_chart/fl_chart.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
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
            SizedBox(height: 16),
            // Row 1: Steps
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Column 1: Data Title
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: ActivityColumn(label: 'Steps', value: '5000', color: Colors.green),
                  ),
                ),
                SizedBox(width: 16),
                // Column 2: Graph
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(
                          show: true,
                          drawHorizontalLine: true,
                          drawVerticalLine: true,
                          horizontalInterval: 1000,
                          verticalInterval: 1000,
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          leftTitles: SideTitles(
                            showTitles: true,
                            interval: 1000,
                            margin: 8,
                            reservedSize: 30,
                          ),
                        ),
                        borderData: FlBorderData(show: true),
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              FlSpot(0, 500),
                              FlSpot(1, 1000),
                              FlSpot(2, 2000),
                              FlSpot(3, 3000),
                              FlSpot(4, 5000),
                            ],
                            isCurved: true,
                            colors: [Colors.green],
                            dotData: FlDotData(show: true),
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Row 2: Distance
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Column 1: Data Title
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: ActivityColumn(label: 'Distance', value: '3.5 km', color: Colors.blue),
                  ),
                ),
                SizedBox(width: 16),
                // Column 2: Graph
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(show: true),
                        titlesData: FlTitlesData(show: true),
                        borderData: FlBorderData(show: true),
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              FlSpot(0, 1),
                              FlSpot(1, 2),
                              FlSpot(2, 1.5),
                              FlSpot(3, 3),
                              FlSpot(4, 2.5),
                            ],
                            isCurved: true,
                            colors: [Colors.blue],
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Row 3: Calories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Column 1: Data Title
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: ActivityColumn(label: 'Calories', value: '250', color: Colors.red),
                  ),
                ),
                SizedBox(width: 16),
                // Column 2: Graph
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(show: true),
                        titlesData: FlTitlesData(show: true),
                        borderData: FlBorderData(show: true),
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              FlSpot(0, 50),
                              FlSpot(1, 100),
                              FlSpot(2, 150),
                              FlSpot(3, 200),
                              FlSpot(4, 250),
                            ],
                            isCurved: true,
                            colors: [Colors.red],
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
