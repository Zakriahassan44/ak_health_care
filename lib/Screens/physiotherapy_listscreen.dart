import 'package:flutter/material.dart';
class PhysiotherapyListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Physiotherapy List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Physiotherapy List',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Add your physiotherapy list view and details here
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement booking appointment functionality
                // For example, show a dialog or navigate to booking screen
              },
              child: Text('Book Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}