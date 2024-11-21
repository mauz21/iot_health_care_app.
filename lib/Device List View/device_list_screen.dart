import 'package:flutter/material.dart';

import '../Data Visualization View/data_visualization_screen.dart';

class DeviceListScreen extends StatelessWidget {
  const DeviceListScreen({super.key});

  final List<Map<String, String>> devices = const [
    {'name': 'Heart Monitor', 'id': '1'},
    {'name': 'Blood Pressure Monitor', 'id': '2'},
    {'name': 'Temperature Sensor', 'id': '3'},
    {'name': 'Enter Your Device Name', 'id': '4'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Available Devices'),
      ),
      body: ListView.builder(
        itemCount: devices.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(devices[index]['name']!),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.greenAccent)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataVisualizationScreen(
                      deviceName: devices[index]['name']!,
                    ),
                  ),
                );
              },
              child: const Text('Connect'),
            ),
          );
        },
      ),
    );
  }
}
