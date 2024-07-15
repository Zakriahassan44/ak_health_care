import 'package:flutter/material.dart';

class NursingServicesListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    {
      'name': 'IV / IM Medication',
      'description': 'Intravenous (IV) or Intramuscular (IM) medication administration.',
      'gender': false, // Assuming no gender selection needed
      'fee': '2000 PKR', // Example fee
      'paymentOptions': ['EasyPaisa', 'Bank Logo'], // Example payment options
    },
    {
      'name': 'Vitals Checkup',
      'description': 'Regular monitoring of vital signs like blood pressure, heart rate, etc.',
      'gender': false, // Assuming no gender selection needed
      'fee': '1500 PKR', // Example fee
      'paymentOptions': ['EasyPaisa', 'Bank Logo'], // Example payment options
    },
    {
      'name': 'NG Tube and Catheter Insertion',
      'description': 'Insertion and management of Nasogastric (NG) tubes and catheters.',
      'gender': false, // Assuming no gender selection needed
      'fee': '3000 PKR', // Example fee
      'paymentOptions': ['EasyPaisa', 'Bank Logo'], // Example payment options
    },
    {
      'name': 'Canulation',
      'description': 'Insertion and management of intravenous (IV) cannulas.',
      'gender': false, // Assuming no gender selection needed
      'fee': '2500 PKR', // Example fee
      'paymentOptions': ['EasyPaisa', 'Bank Logo'], // Example payment options
    },
    {
      'name': 'Home Patients Care Management',
      'description': 'Care management and assistance for patients at home.',
      'gender': false, // Assuming no gender selection needed
      'fee': '5000 PKR', // Example fee
      'paymentOptions': ['EasyPaisa', 'Bank Logo'], // Example payment options
    },
    {
      'name': 'Wound Care Management',
      'description': 'Care and treatment for wounds, including dressing changes.',
      'gender': false, // Assuming no gender selection needed
      'fee': '1800 PKR', // Example fee
      'paymentOptions': ['EasyPaisa', 'Bank Logo'], // Example payment options
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nursing Services List'),
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      services[index]['name'],
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      services[index]['description'],
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Fee: ${services[index]['fee']}',
                          style: TextStyle(fontSize: 14),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Implement booking functionality
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Booking ${services[index]['name']}'),
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
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 3,
                            shadowColor: Colors.grey.withOpacity(0.5),
                          ),
                          child: Text(
                            'Book Service',
                            style: TextStyle(fontSize: 14,color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
