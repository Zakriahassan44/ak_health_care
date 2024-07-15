import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _handleSignIn() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    // Perform sign-in logic here, e.g., API call or validation

    // For demonstration, print the input values
    print('Email: $email');
    print('Password: $password');

    // Navigate to the next screen or perform desired action after sign-in
    // Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
  }

  void _handleGoogleSignIn() {
    // Handle Google sign-in logic here
    print('Google Sign-In');
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold,),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Handle Forgot Password action
                  print('Forgot Password');
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _handleSignIn,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15), backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blueAccent],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton.icon(
                onPressed: _handleGoogleSignIn,
                icon: Image.asset(
                  'lib/images/google.png',
                  width: 24,
                  height: 24,
                ),
                label: Text('Sign in with Google'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account? "),
                TextButton(
                  onPressed: () {
                    // Navigate to Sign Up screen
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                    print('Navigate to Sign Up screen');
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
