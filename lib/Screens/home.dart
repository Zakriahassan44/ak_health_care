import 'package:flutter/material.dart';
import 'doctor_list_screen.dart';
import 'nursing_services_listscreen.dart';
import 'physiotherapy_listscreen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> articles = [
    'Article 1: Tips for Healthy Living',
    'Article 2: Importance of Regular Check-ups',
    'Article 3: Managing Stress in Daily Life',
    'Article 4: Benefits of Physical Exercise',
    'Article 5: Nutrition Tips for a Balanced Diet',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              elevation: 10,
              margin: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade200, Colors.blue.shade400],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(5, 5),
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(-5, -5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Welcome to AK Health Care and Home Based Services',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: const Offset(2, 2),
                              blurRadius: 3,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search for Doctors, Nurses...',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 150, // Adjust the height as needed
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  const SizedBox(width: 10),
                  RoundedCategoryCard(
                    title: 'Doctor',
                    icon: Icons.medication,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DoctorListScreen()),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  RoundedCategoryCard(
                    title: 'Nursing Services',
                    icon: Icons.local_hospital_outlined,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NursingServicesListScreen()),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  RoundedCategoryCard(
                    title: 'Physiotherapy',
                    icon: Icons.accessibility_new,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PhysiotherapyListScreen()),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Featured Articles',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: articles.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        title: Text(articles[index]),
                        onTap: () {
                          // Implement article detail navigation or action
                          // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleDetailScreen()));
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ensure icons are always shown
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('lib/images/home.png', width: 24, height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/images/chat.png', width: 24, height: 24),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/images/notification.png', width: 24, height: 24),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/images/user.png', width: 24, height: 24),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class RoundedCategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  const RoundedCategoryCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // Adjust the width as needed
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [Colors.white, Colors.blue.shade100],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(5, 5),
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(-5, -5),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 40,
                  color: Colors.blue,
                  shadows: [
                    Shadow(
                      offset: const Offset(2, 2),
                      blurRadius: 3,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    shadows: [
                      Shadow(
                        offset: const Offset(1, 1),
                        blurRadius: 2,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
