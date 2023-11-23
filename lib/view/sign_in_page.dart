import 'package:flutter/material.dart';
import 'package:apotek/controller/auth_controller.dart';
import 'package:get/get_rx/src/rx_workers/rx_workers.dart';
import 'dashboard_page.dart';

class SignInPage extends StatelessWidget {
  final AuthController _authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Assuming the user registration logic is handled in AuthController
                _authController.loginUser(
                  'example@gmail.com', // Replace with the actual email
                  'password123', // Replace with the actual password
                );

                // Navigate to the DashboardPage upon successful registration
                ever(_authController.isLoading, (bool isLoading) {
                  if (!isLoading && _authController.isLoggedIn.value) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardPage()),
                    );
                  }
                });
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
