import 'package:flutter/material.dart';

import 'Screens/doctor_list_screen.dart';
import 'Screens/home.dart';
import 'Screens/login_screen.dart';
import 'Screens/nursing_services_listscreen.dart';
import 'Screens/physiotherapy_listscreen.dart';
import 'Screens/signup_screen.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/doctorList': (context) => DoctorListScreen(),
        '/nursingServices': (context) => NursingServicesListScreen(),
        '/physiotherapy': (context) => PhysiotherapyListScreen(),
        '/home': (context) => HomeScreen(),
        '/signIn': (context) => SignInScreen(),
        '/signUp': (context) => SignUpScreen(),
      },
    );
  }
}
