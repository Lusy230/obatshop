import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/apotek3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pharmacy & Drug Store',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Market',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Menyediakan obat, alat kesehatan serta perbekalan kefarmasian yang berkualitas dan terjangkau oleh masyarakat',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman LogInPage
                  Navigator.pushNamed(context, '/logIn');
                },
                child: Text('Register'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navigasi ke halaman SignInPage
                  Navigator.pushNamed(context, '/signIn');
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}