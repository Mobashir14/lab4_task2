import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,  // Remove debug banner
      home: ComplexUI(),
    );
  }
}

class ComplexUI extends StatelessWidget {
  const ComplexUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complex UI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue.shade100,
              child: const Text(
                'User Information Form',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            // Text Field for user input
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
              ),
            ),
            const SizedBox(height: 20),
            // Row for buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Submit button action
                  },
                  child: const Text('Submit'),
                ),
                OutlinedButton(
                  onPressed: () {
                    // Clear button action
                  },
                  child: const Text('Clear'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Container for showing additional details
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade200,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Name:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Age:',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Icon(Icons.person, size: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
