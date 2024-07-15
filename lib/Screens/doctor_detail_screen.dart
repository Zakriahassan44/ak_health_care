import 'package:flutter/material.dart';
import 'doctor.dart'; // Import the Doctor class

class DoctorDetailScreen extends StatelessWidget {
  final Doctor doctor;

  DoctorDetailScreen({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doctor.name),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueAccent,
              Colors.lightBlueAccent,
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Doctor Name
            Text(
              'Dr. ${doctor.name}',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20),
            // Specialty
            _buildDetailRow(
              icon: Icons.local_hospital,
              label: 'Specialty',
              value: doctor.specialty,
              iconColor: Colors.white,
              labelColor: Colors.white,
            ),
            SizedBox(height: 10),
            // Rating
            _buildDetailRow(
              icon: Icons.star,
              label: 'Rating',
              value: doctor.rating.toString(),
              iconColor: Colors.white,
              labelColor: Colors.white,
            ),
            SizedBox(height: 10),
            // Description
            _buildDetailRow(
              icon: Icons.description,
              label: 'Description',
              value: doctor.description,
              iconColor: Colors.white,
              labelColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow({
    required IconData icon,
    required String label,
    required String value,
    required Color iconColor,
    required Color labelColor,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 30,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: labelColor),
              ),
              SizedBox(height: 5),
              Text(
                value,
                style: TextStyle(fontSize: 16, color: labelColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
