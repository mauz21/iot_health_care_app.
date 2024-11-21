import 'dart:collection';

import 'package:flutter/material.dart';

import '../Device List View/device_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _deviceNameController = TextEditingController();
  String connectionType = 'Bluetooth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IoT Health App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter Device Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _deviceNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter device name',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Connection Type',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: connectionType,
              items: const [
                DropdownMenuItem(value: 'Bluetooth', child: Text('Bluetooth')),
                DropdownMenuItem(value: 'Wi-Fi', child: Text('Wi-Fi')),
              ],
              onChanged: (value) {
                setState(() {
                  connectionType = value!;
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: UnmodifiableListView(Iterable.empty())),
                height: 40,
                width: 150,
                child: ElevatedButton(
                  // onHover: (value) {
                  //   return setState(() {});
                  // },
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DeviceListScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
