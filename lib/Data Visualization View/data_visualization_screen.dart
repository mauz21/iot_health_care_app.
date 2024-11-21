import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DataVisualizationScreen extends StatefulWidget {
  final String deviceName;

  const DataVisualizationScreen({super.key, required this.deviceName});

  @override
  State<DataVisualizationScreen> createState() =>
      _DataVisualizationScreenState();
}

class _DataVisualizationScreenState extends State<DataVisualizationScreen> {
  List<_SensorData> data = [];
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _generateMockData();
  }

  void _generateMockData() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        data.add(
          _SensorData(
            DateTime.now(),
            60 + (20 * (timer.tick % 5)),
          ),
        );
        if (data.length > 10) {
          data.removeAt(0);
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data from ${widget.deviceName}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SfCartesianChart(
          primaryXAxis: DateTimeAxis(),
          primaryYAxis: NumericAxis(
            minimum: 50,
            maximum: 150,
            interval: 10,
          ),
          series: <LineSeries<_SensorData, DateTime>>[
            LineSeries<_SensorData, DateTime>(
              dataSource: data,
              xValueMapper: (_SensorData sensor, _) => sensor.time,
              yValueMapper: (_SensorData sensor, _) => sensor.value,
              name: 'Heart Rate',
              markerSettings: const MarkerSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }
}

class _SensorData {
  final DateTime time;
  final int value;

  _SensorData(this.time, this.value);
}
