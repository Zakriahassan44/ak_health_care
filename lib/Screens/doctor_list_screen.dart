import 'package:flutter/material.dart';
import 'doctor.dart';
import 'doctor_detail_screen.dart'; // Import the detail screen

class DoctorListScreen extends StatefulWidget {
  @override
  _DoctorListScreenState createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  // Example list of doctors
  final List<Doctor> doctors = [
    Doctor('Dr. John Doe', 'General Medicine', 4.5, 'Experienced in general medicine with over 20 years of practice.'),
    Doctor('Dr. Jane Smith', 'Pediatrics', 4.8, 'Specializes in pediatric care, ensuring the health and well-being of children.'),
    Doctor('Dr. Michael Brown', 'Dermatology', 4.2, 'Expert in skin care with extensive experience in dermatology.'),
    Doctor('Dr. Sarah Johnson', 'Orthopedics', 4.6, 'Focuses on bone and joint health, offering comprehensive orthopedic care.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor List'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: () {
              // Implement filter functionality
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigate to DoctorDetailScreen when a doctor is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoctorDetailScreen(doctor: doctors[index]),
                ),
              );
            },
            child: Card(
              elevation: 5,
              shadowColor: Colors.black.withOpacity(0.5),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: Text(
                  doctors[index].name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Specialty: ${doctors[index].specialty}'),
                trailing: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Booking ${doctors[index].name}'),
                          content: Text('Implement your booking logic here.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Book Appointment',
                    style: TextStyle(color: Colors.white), // Text color
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
