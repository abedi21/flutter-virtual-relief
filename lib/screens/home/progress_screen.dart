import 'package:flutter/material.dart';
import '../../widgets/progress_chart.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Progress")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Your Progress Over Time",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: ProgressChart()),
        ],
      ),
    );
  }
}
